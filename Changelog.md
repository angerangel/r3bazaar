# 4-Apr-2013

* added further images, easy to configure and add, see images directory
* added ladislav Collect unused GOBs


#26-Mar-2013

* Added *make prep* in make file

# 25-Mar-2013

* corrected mispelled word find-all help string


# 20-Mar-2013

* 0branch fix ensure that binary series constructed from blocks are distinct
* added *snd_win32.c* file for sound support in Windows, thanks to Pekr

# 18-Mar-2013

* added *logo*, now *logo* is an image of Rebol logo


# 14-Mar-2013

* added ladislav corrections on help string of *assertion* and *transcode*
* added ladislav corrections on help string of *first+*
* added ladislav corrections on help string of *BIND* and *UNBIND*
* added ladislav Make build platform handling more robust
* added ladislav Fix clipboard device code so it works identically under non-wide-char platforms
* added earl Fix PARSE *THRU* integer operation
* added cyphre *DECOMPRESS/GZIP* fix
* cyphre fix allows to set event/window or event/gob fields. 
* ladislav Fix GC crash with gob/parent handling
* 0branch  Implement BROWSE on Mac OS X
* 0branch  BROWSE: Return R_UNSET rather than R_NONE
* BrianHawley REWORD API Revamp
* 0branch fix Round decimal division of tuple elements
* added `make view` rule in *makefile*
* improved *demo*
* changed file name *r3-gui.r3*  to *r3-gui.r*

#8-Mar-2013

* changed *bugs*
* changed *changes*
* corrected *demo*
* added demo in *builds/windows*

# 1-Mar-2013

* added lasidlav correction of help string of *exp* and *log-e*
* Added **r3-guir.r3** in *build/windows/* directory, 
this way you don't need to load from internet; just launch

    do %r3-gui.r3



# 27-Feb-2013

* Added *hostilefork* suggestion to allow NEW-LINE and NEW-LINE? to accept PAREN! series (Pull request 70)
* Added *earl* Fix parse thru end (92)

# 25-Feb-2013

* Added build directory
* *ladislav* corrected some mispelled text
* *ladislav* added "(modified)" on some function


# 21-Feb-2013

*  *Brian Hawley* multi-script support, and better support for length-specified embedding
* *ladislav* suggestion of using David M. Gay's dtoa for molding decimals
* *earl* fix of select bug (see http://issue.cc/r3/1936)
* *CCX* fix of trim function
* *earl* fix of recursive make call