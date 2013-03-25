/*********************************************************************** 
**  Contra REBOL - Copyright (C) REBOL Technologies 1997-1999
**                 Confidential and Proprietary.
**                 All rights reserved.
************************************************************************
[
	REBOL [
		Title:	"Microsoft Windows sound functions"
		File:	%snd_win32.c
		Date:	29-Mar-2001
		Overview: {
			This file contains the OS dependent routines for the Win32
			sound system.
		Todo: {
		}
	]
]
***********************************************************************/

#include <windows.h>
#include <mmsystem.h>
#include "value.h"
#include "objects.h"
#include "funcs.h"
#include "action.h"
#include "ports.h"
#include "errs.h"
#include "inputevent.h"
//ENDINCLUDE

extern HWND hWndMain;

struct sndentry {
	struct sndentry *next;
	HANDLE hData;
	HPSTR lpData;
	HGLOBAL hWaveHdr;
	LPWAVEHDR lpWaveHdr;
};

static int rate,channels,bits,volume;
static REBOOL devisopen=FALSE,portisopen=FALSE;
static HWAVEOUT hwaveout;
static WAVEFORMATEX hwavefmt;
static struct sndentry *firstsnd=0,*lastsnd=0;


static void set_wave_fmt(WAVEFORMATEX *wavefmt,SOUND_OBJ *sndobj) {
	wavefmt->wFormatTag=WAVE_FORMAT_PCM;
	wavefmt->nChannels=VAL_INTEGER(&sndobj->channels);
	wavefmt->nSamplesPerSec=VAL_INTEGER(&sndobj->rate);
	wavefmt->nAvgBytesPerSec=VAL_INTEGER(&sndobj->rate)*VAL_INTEGER(&sndobj->channels)*
		(VAL_INTEGER(&sndobj->bits)/8);
	wavefmt->nBlockAlign=VAL_INTEGER(&sndobj->channels)*(VAL_INTEGER(&sndobj->bits)/8);
	wavefmt->wBitsPerSample=VAL_INTEGER(&sndobj->bits);
	wavefmt->cbSize=0;
}

static REBOOL open_wave(SOUND_OBJ *sndobj) {
	set_wave_fmt(&hwavefmt,sndobj);
	if(waveOutOpen(&hwaveout,WAVE_MAPPER,&hwavefmt,(LONG)hWndMain,0,CALLBACK_WINDOW))
		return FALSE;
	return TRUE;
}

static void close_wave(void) {
	waveOutReset(hwaveout);
	waveOutClose(hwaveout);
}

static REBOOL play_wave(SOUND_OBJ *sndobj) {
	struct sndentry *entry;
	REBINT len=VAL_TAIL(&sndobj->data);
	REBINT voli;
	unsigned short vol;

	//Print("Vol %d", voli);

	if (IS_DECIMAL(&sndobj->volume) && VAL_DECIMAL(&sndobj->volume) >= 0.0) {
		voli = (REBINT)(0xffff * VAL_DECIMAL(&sndobj->volume));
		if (voli > 0xffff) voli = 0xffff;
		vol=(unsigned short)(voli);
	}
	else
		voli = -1;

	if (voli >= 0) waveOutSetVolume(hwaveout,(vol<<16)|vol);
	if(entry=malloc(sizeof(struct sndentry))) {
		if(entry->hData=GlobalAlloc(GMEM_MOVEABLE|GMEM_SHARE,len)) {
			if(entry->lpData=GlobalLock(entry->hData)) {
				if(VAL_INTEGER(&sndobj->bits)==16) {
					REBUNC *dp,*sp;
					REBINT i;
					dp=entry->lpData;
					sp=VAL_STR_HEAD(&sndobj->data);
					for(i=0;i<len;i+=2) {
						dp[i]=sp[i+1];
						dp[i+1]=128+sp[i];
					}
				} else
					memcpy(entry->lpData,VAL_STR_HEAD(&sndobj->data),len);
				if(entry->hWaveHdr=GlobalAlloc(GMEM_MOVEABLE|GMEM_SHARE,(DWORD)sizeof(WAVEHDR))) {
					if(entry->lpWaveHdr=(LPWAVEHDR)GlobalLock(entry->hWaveHdr)) {
						entry->lpWaveHdr->lpData=entry->lpData;
						entry->lpWaveHdr->dwBufferLength=len;
						entry->lpWaveHdr->dwFlags=0;
						entry->lpWaveHdr->dwLoops=0;
						waveOutPrepareHeader(hwaveout,entry->lpWaveHdr,sizeof(WAVEHDR));
						if(!waveOutWrite(hwaveout,entry->lpWaveHdr,sizeof(WAVEHDR))) {
							if(lastsnd)
								lastsnd->next=entry;
							else
								firstsnd=entry;
							lastsnd=entry;
							entry->next=0;
							return TRUE;
						}
						waveOutUnprepareHeader(hwaveout,entry->lpWaveHdr,sizeof(WAVEHDR));
						GlobalUnlock(entry->hWaveHdr);
					}
					GlobalFree(entry->hWaveHdr);
				}
				GlobalUnlock(entry->hData);
			}
			GlobalFree(entry->hData);
		}
		free(entry);
	}
	return FALSE;
}

void OS_Init_Sound(void) {}

void OS_Open_Sound(PORT_SPEC_OBJ *psp) {
	if(portisopen)
		Trap1(RE_CANT_OPEN,&psp->scheme);
	portisopen=TRUE;
}

void OS_Close_Sound(PORT_SPEC_OBJ *psp) {
	if(devisopen) {
		close_wave();
		devisopen=FALSE;
	}
	portisopen=FALSE;
}

void OS_Stop_Sound(PORT_SPEC_OBJ *psp) {
	if(devisopen) {
		close_wave();
		devisopen=FALSE;
	}
}

void Win32_Sound_Done(HWAVEOUT waveout,LPWAVEHDR wavehdr) {
	struct sndentry **entryp=&firstsnd,*entry;
	waveOutUnprepareHeader(waveout,wavehdr,sizeof(WAVEHDR));
	while((*entryp)&&((*entryp)->lpWaveHdr!=wavehdr))
		entryp=&(*entryp)->next;
	if(!(*entryp))
		return;
	entry=*entryp;
	*entryp=entry->next;
	if(!firstsnd)
		lastsnd=0;
	GlobalUnlock(entry->hWaveHdr);
	GlobalFree(entry->hWaveHdr);
	GlobalUnlock(entry->hData);
	GlobalFree(entry->hData);
	free(entry);
}

REBOOL Win32_Sound_Doneq(void) {
	return (REBOOL)(firstsnd==0);
}

static int capformats[]={
	WAVE_FORMAT_1M08,
	WAVE_FORMAT_1M16,
	WAVE_FORMAT_1S08,
	WAVE_FORMAT_1S16,
	WAVE_FORMAT_2M08,
	WAVE_FORMAT_2M16,
	WAVE_FORMAT_2S08,
	WAVE_FORMAT_2S16,
	WAVE_FORMAT_4M08,
	WAVE_FORMAT_4M16,
	WAVE_FORMAT_4S08,
	WAVE_FORMAT_4S16
};

static int nextformat[]={-1,0,0,1,0,1,4,5,4,5,8,9};

void OS_Find_Sound_Mode(PORT_SPEC_OBJ *psp,REBINT *channels,REBINT *bits,REBINT *rate) {
	if(devisopen) {
		*channels=hwavefmt.nChannels;
		*bits=hwavefmt.wBitsPerSample;
		*rate=hwavefmt.nSamplesPerSec;
	} else {
		WAVEOUTCAPS caps;
		int nix=0,ix;
		if((*rate!=11025)&&(*rate!=22050)&&(*rate!=44100))
			return;
		waveOutGetDevCaps(WAVE_MAPPER,&caps,sizeof(&caps));
		if(*channels==2)
			nix+=2;
		if(*bits==16)
			nix++;
		if(*rate==44100)
			nix+=8;
		else if(*rate==22050)
			nix+=4;
		ix=nix;
		while(ix>=0) {
			if(caps.dwFormats&capformats[ix])
				goto found;
			ix=nextformat[ix];
		}
		for(ix=11;ix>=0;ix--)
			if(caps.dwFormats&capformats[ix])
				goto found;
		return;	/* Not found. Try anyway */
	 found:	
		*channels=(ix&2)?2:1;
		*bits=(ix&1)?16:8;
		*rate=11025<<(ix>>2);
		return;
	}
}

REBINT OS_Write_Sound(PORT_SPEC_OBJ *psp,REBVAL *obj) {
	SOUND_OBJ *sndobj=(SOUND_OBJ *)VAL_OBJ_VALUES(obj);
	if(devisopen) {
		if(firstsnd) {
			struct Inputevent_List iel={0};
			struct Inputevent *ie;
			ie=Create_Inputevent();
			Init_Inputevent_Sound(ie,0);
			Add_Inputevent_To_List(&iel,ie);
#ifdef ASYNC_CORE
			Do_Wait(&iel,-1,TRUE);
#else
			OS_Wait(&iel);
#endif
			Delete_Inputevent_List(&iel);
			OS_Stop_Sound(psp);
		}
	}
	if(!devisopen) {
		if(!open_wave(sndobj))
			Trap1(RE_CANT_OPEN,&psp->scheme);
		devisopen=TRUE;
	}
	if(!play_wave(sndobj)) 
		Trap1(RE_CANT_OPEN,&psp->scheme);
	return VAL_TAIL(&sndobj->data)/VAL_INTEGER(&sndobj->channels)/(VAL_INTEGER(&sndobj->bits)/8);
}

/***********************************************************************
*/ REBCNT OS_Init_Inputevent_Sound(struct Inputevent *ie, REBVAL *val )
/*
**
**  Initialize Inputevent for sound port.
**
***********************************************************************/
{
	ie->type=IET_SOUND;
	ie->refval = val;
	return IIE_MADE_EVENT;
}

