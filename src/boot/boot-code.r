[[end! unset! none! logic! integer! decimal! percent! money! char! pair! tuple! time! date! binary! string! file! email! url! tag! bitset! image! vector! block! paren! path! set-path! get-path! lit-path! map! datatype! typeset! word! set-word! get-word! lit-word! refinement! issue! native! action! rebcode! command! op! closure! function! frame! object! module! error! task! port! gob! event! handle! struct! library! utype!] [
        any-type!
        any-word!
        any-path!
        any-function!
        number!
        scalar!
        series!
        any-string!
        any-object!
        any-block!
        datatypes
        native
        self
        none
        true
        false
        on
        off
        yes
        no
        pi
        rebol
        system
        base
        sys
        mods
        spec
        body
        words
        values
        types
        title
        x
        y
        +
        -
        *
        unsigned
        -unnamed-
        -apply-
        code
        delect
        secure
        protect
        net
        call
        envr
        eval
        memory
        debug
        browse
        extension
        hour
        minute
        second
        year
        month
        day
        time
        date
        weekday
        julian
        yearday
        zone
        utc
        parse
        |
        set
        copy
        some
        any
        opt
        not
        and
        then
        remove
        insert
        change
        if
        fail
        reject
        while
        return
        limit
        ??
        accept
        break
        skip
        to
        thru
        quote
        do
        into
        only
        end
        type
        key
        port
        mode
        window
        double
        control
        shift
        sha1
        md4
        md5
        crc32
        identify
        decode
        encode
        console
        file
        dir
        event
        callback
        dns
        tcp
        udp
        clipboard
        gob
        offset
        size
        pane
        parent
        image
        draw
        text
        effect
        color
        flags
        rgb
        alpha
        data
        resize
        no-title
        no-border
        dropable
        transparent
        popup
        modal
        on-top
        hidden
        owner
        owner-read
        owner-write
        owner-execute
        group-read
        group-write
        group-execute
        world-read
        world-write
        world-execute
        bits
        crash
        crash-dump
        watch-recycle
        watch-obj-copy
        stack-size
    ] [
        self
        root
        system
        errobj
        strings
        typesets
        noneval
        noname
        boot
        script
    ] [
        self
        stack
        ballast
        max-ballast
        this-error
        this-value
        stack-error
        this-context
        buf-emit
        buf-words
        buf-utf8
        buf-print
        buf-form
        buf-mold
        mold-loop
        err-temps
    ] #{
656E642D6F662D736372697074006C696E6500656E642D6F662D626C6F636B00
656E642D6F662D706172656E00776F726400776F72642D73657400776F72642D
67657400776F72642D6C6974006E6F6E65006C6F67696300696E746567657200
646563696D616C0070657263656E74006D6F6E65790074696D65006461746500
6368617200626C6F636B00706172656E00737472696E670062696E6172790070
616972007475706C650066696C6500656D61696C0075726C0069737375650074
6167007061746800726566696E6500636F6E73747275637400426F6F74696E67
2E2E2E00747261636500252D3032643A202535307200203A202535307200203A
202573202535306D00203A202573002D2D3E202573003C2D2D202573203D3D00
5061727365206D617463683A20257200506172736520696E7075743A20257300
5061727365206261636B3A202572002A2A3A206572726F72203A202572202572
00535441434B20457870616E646564202D204453503A202564204D41583A2025
64000A535441434B5B25645D2025735B25645D202573000A2D2D5245424F4C20
4B65726E656C2044756D702D2D004576616C7561746F723A0020202020437963
6C65733A202025640020202020436F756E7465723A2025640020202020446F73
653A20202020256400202020205369676E616C733A2025780020202020536967
6D61736B3A20257800202020204453503A202020202025640020202020445346
3A20202020202564004D656D6F72792F47433A002020202042616C6C6173743A
202564002020202044697361626C653A202564002020202050726F746563743A
2025640020202020496E66616E74733A202564006F7574206F66206D656D6F72
7920287265712025642062797465732900696E76616C69642073657269657320
776964746820256420676F742025642074797065202564006572726F7220616C
72656164792063617567687400737461636B206F766572666C6F7700492F4F20
6572726F7200746F6F206D616E7920776F72647300776F7264206C6973742062
756666657220696E20757365006C6F636B656420736572696573006572726F72
2072656379636C656400746F70206C6576656C206572726F72206E6F74206361
75676874006572726F7220737461746520756E646572666C6F77006576656E74
207175657565206F766572666C6F7720285741495420726563757273696F6E3F
29006E6F7420617661696C61626C6520284E412900206572726F723A20002869
6D70726F7065726C7920666F726D6174746564206572726F7229002A2A205768
6572653A20002A2A204E6561723A200052454359434C494E473A200025642073
6572696573006F626A2D636F70793A20256420256D0052585F496E6974005258
5F517569740052585F43616C6C00
} [
        ["Returns TRUE if it is this type." value [any-type!] 0]
        native: native [
            "Creates native function (for internal usage only)."
            spec
        ]
        action: native [
            "Creates datatype action (for internal usage only)."
            spec
        ]
    ] [
        add: action [
            "Returns the addition of two values."
            value1 [scalar! date!]
            value2
        ]
        subtract: action [
            {Returns the second value subtracted from the first.}
            value1 [scalar! date!]
            value2 [scalar! date!]
        ]
        multiply: action [
            "Returns the first value multiplied by the second."
            value1 [scalar!]
            value2 [scalar!]
        ]
        divide: action [
            "Returns the first value divided by the second."
            value1 [scalar!]
            value2 [scalar!]
        ]
        remainder: action [
            {Returns the remainder of first value divided by second.}
            value1 [scalar!]
            value2 [scalar!]
        ]
        power: action [
            {Returns the first number raised to the second number.}
            number [number!]
            exponent [number!]
        ]
        and~: action [
            "Returns the first value ANDed with the second."
            value1 [logic! integer! char! tuple! binary! bitset! typeset! datatype!]
            value2 [logic! integer! char! tuple! binary! bitset! typeset! datatype!]
        ]
        or~: action [
            "Returns the first value ORed with the second."
            value1 [logic! integer! char! tuple! binary! bitset! typeset! datatype!]
            value2 [logic! integer! char! tuple! binary! bitset! typeset! datatype!]
        ]
        xor~: action [
            {Returns the first value exclusive ORed with the second.}
            value1 [logic! integer! char! tuple! binary! bitset! typeset! datatype!]
            value2 [logic! integer! char! tuple! binary! bitset! typeset! datatype!]
        ]
        negate: action [
            "Changes the sign of a number."
            number [number! pair! money! time! bitset!]
        ]
        complement: action [
            "Returns the one's complement value."
            value [logic! integer! tuple! binary! bitset! typeset! image!]
        ]
        absolute: action [
            "Returns the absolute value."
            value [number! pair! money! time!]
        ]
        round: action [
            {Rounds a numeric value; halves round up (away from zero) by default.}
            value [number! pair! money! time!] "The value to round"
            /to "Return the nearest multiple of the scale parameter"
            scale [number! money! time!] "Must be a non-zero value"
            /even "Halves round toward even results"
            /down {Round toward zero, ignoring discarded digits. (truncate)}
            /half-down "Halves round toward zero"
            /floor "Round in negative direction"
            /ceiling "Round in positive direction"
            /half-ceiling "Halves round in positive direction"
        ]
        random: action [
            {Returns a random value of the same datatype; or shuffles series.}
            value "Maximum value of result (modified when series)"
            /seed "Restart or randomize"
            /secure "Returns a cryptographically secure random number"
            /only "Pick a random value from a series"
        ]
        odd?: action [
            "Returns TRUE if the number is odd."
            number [number! char! date! money! time! pair!]
        ]
        even?: action [
            "Returns TRUE if the number is even."
            number [number! char! date! money! time! pair!]
        ]
        head: action [
            "Returns the series at its beginning."
            series [series! gob! port!]
        ]
        tail: action [
            "Returns the series just past its end."
            series [series! gob! port!]
        ]
        head?: action [
            "Returns TRUE if a series is at its beginnint."
            series [series! gob! port!]
        ]
        tail?: action [
            {Returns TRUE if series is at or past its end; or empty for other types.}
            series [series! gob! port! bitset! map!]
        ]
        past?: action [
            "Returns TRUE if series is past its end."
            series [series! gob! port!]
        ]
        next: action [
            "Returns the series at its next position."
            series [series! gob! port!]
        ]
        back: action [
            "Returns the series at its previous position."
            series [series! gob! port!]
        ]
        skip: action [
            {Returns the series forward or backward from the current position.}
            series [series! gob! port!]
            offset [number! logic! pair!]
        ]
        at: action [
            "Returns the series at the specified index."
            series [series! gob! port!]
            index [number! logic! pair!]
        ]
        index?: action [
            {Returns the current position (index) of the series.}
            series [series! gob! port!]
            /xy "Returns index as an XY pair offset"
        ]
        length?: action [
            {Returns the length (from the current position for series.)}
            series [none! series! port! map! tuple! bitset! object! gob! struct! any-word!]
        ]
        pick: action [
            "Returns the value at the specified position."
            aggregate [series! map! gob! pair! date! time! tuple! bitset! port!]
            index {Index offset, symbol, or other value to use as index}
        ]
        find: action [
            {Searches for a value; for series returns where found, else none.}
            series [series! gob! port! bitset! typeset! object! none!]
            value [any-type!]
            /part "Limits the search to a given length or position"
            length [number! series! pair!]
            /only "Treats a series value as only a single value"
            /case "Characters are case-sensitive"
            /any "Enables the * and ? wildcards"
            /with "Allows custom wildcards"
            wild [string!] "Specifies alternates for * and ?"
            /skip "Treat the series as records of fixed size"
            size [integer!]
            /last "Backwards from end of series"
            /reverse "Backwards from the current position"
            /tail "Returns the end of the series"
            /match {Performs comparison and returns the tail of the match}
        ]
        select: action [
            {Searches for a value; returns the value that follows, else none.}
            series [series! port! map! object! none!]
            value [any-type!]
            /part "Limits the search to a given length or position"
            length [number! series! pair!]
            /only "Treats a series value as only a single value"
            /case "Characters are case-sensitive"
            /any "Enables the * and ? wildcards"
            /with "Allows custom wildcards"
            wild [string!] "Specifies alternates for * and ?"
            /skip "Treat the series as records of fixed size"
            size [integer!]
            /last "Backwards from end of series"
            /reverse "Backwards from the current position"
        ]
        reflect: action [
            "Returns specific details about a datatype."
            value [any-type!]
            field [word!] "Such as: spec, body, words, values, title"
        ]
        make: action [
            "Constructs or allocates the specified datatype."
            type [any-type!] "The datatype or an example value"
            spec [any-type!] "Attributes or size of the new value (modified)"
        ]
        to: action [
            "Converts to a specified datatype."
            type [any-type!] "The datatype or example value"
            spec [any-type!] "The attributes of the new value"
        ]
        copy: action [
            "Copies a series, object, or other value."
            value [series! port! map! object! bitset! any-function!] "At position"
            /part "Limits to a given length or position"
            length [number! series! pair!]
            /deep "Also copies series values within the block"
            /types "What datatypes to copy"
            kinds [typeset! datatype!]
        ]
        take: action [
            "Removes and returns one or more elements."
            series [series! port! gob! none!] "At position (modified)"
            /part "Specifies a length or end position"
            length [number! series! pair!]
            /deep "Also copies series values within the block"
            /last "Take it from the tail end"
        ]
        insert: action [
            {Inserts element(s); for series, returns just past the insert.}
            series [series! port! map! gob! object! bitset! port!] "At position (modified)"
            value [any-type!] "The value to insert"
            /part "Limits to a given length or position"
            length [number! series! pair!]
            /only {Only insert a block as a single value (not the contents of the block)}
            /dup "Duplicates the insert a specified number of times"
            count [number! pair!]
        ]
        append: action [
            {Inserts element(s) at tail; for series, returns head.}
            series [series! port! map! gob! object! bitset!] "Any position (modified)"
            value [any-type!] "The value to insert"
            /part "Limits to a given length or position"
            length [number! series! pair!]
            /only {Only insert a block as a single value (not the contents of the block)}
            /dup "Duplicates the insert a specified number of times"
            count [number! pair!]
        ]
        remove: action [
            "Removes element(s); returns same position."
            series [series! gob! port! bitset! none!] "At position (modified)"
            /part "Removes multiple elements or to a given position"
            length [number! series! pair! char!]
        ]
        change: action [
            "Replaces element(s); returns just past the change."
            series [series! gob! port!] "At position (modified)"
            value [any-type!] "The new value"
            /part {Limits the amount to change to a given length or position}
            length [number! series! pair!]
            /only {Only change a block as a single value (not the contents of the block)}
            /dup "Duplicates the change a specified number of times"
            count [number! pair!]
        ]
        poke: action [
            "Replaces an element at a given position."
            series [series! port! map! gob! bitset!] "(modified)"
            index {Index offset, symbol, or other value to use as index}
            value [any-type!] "The new value (returned)"
        ]
        clear: action [
            {Removes elements from current position to tail; returns at new tail.}
            series [series! port! map! gob! bitset! none!] "At position (modified)"
        ]
        trim: action [
            {Removes spaces from strings or nones from blocks or objects.}
            series [series! object! error! module!] "Series (modified) or object (made)"
            /head "Removes only from the head"
            /tail "Removes only from the tail"
            /auto "Auto indents lines relative to first line"
            /lines "Removes all line breaks and extra spaces"
            /all "Removes all whitespace"
            /with str [char! string! binary! integer!] "Same as /all, but removes characters in 'str'"
        ]
        swap: action [
            {Swaps elements between two series or the same series.}
            series1 [series! gob!] "At position (modified)"
            series2 [series! gob!] "At position (modified)"
        ]
        reverse: action [
            {Reverses the order of elements; returns at same position.}
            series [series! gob! tuple! pair!] "At position (modified)"
            /part "Limits to a given length or position"
            length [number! series!]
        ]
        sort: action [
            "Sorts a series; default sort order is ascending."
            series [series!] "At position (modified)"
            /case "Case sensitive sort"
            /skip "Treat the series as records of fixed size"
            size [integer!] "Size of each record"
            /compare "Comparator offset, block or function"
            comparator [integer! block! any-function!]
            /part "Sort only part of a series"
            length [number! series!] "Length of series to sort"
            /all "Compare all fields"
            /reverse "Reverse sort order"
        ]
        create: action [
            "Send port a create request."
            port [port! file! url! block!]
        ]
        delete: action [
            "Send port a delete request."
            port [port! file! url! block!]
        ]
        open: action [
            {Opens a port; makes a new port from a specification if necessary.}
            spec [port! file! url! block!]
            /new {Create new file - if it exists, reset it (truncate)}
            /read "Open for read access"
            /write "Open for write access"
            /seek "Optimize for random access"
            /allow "Specifies protection attributes"
            access [block!]
        ]
        close: action [
            "Closes a port."
            port [port!]
        ]
        read: action [
            "Read from a file, URL, or other port."
            source [port! file! url! block!]
            /part {Partial read a given number of units (source relative)}
            length [number!]
            /seek "Read from a specific position (source relative)"
            index [number!]
            /string {Convert UTF and line terminators to standard text string}
            /lines "Convert to block of strings (implies /string)"
        ]
        write: action [
            {Writes to a file, URL, or port - auto-converts text strings.}
            destination [port! file! url! block!]
            data [binary! string! block!] "Data to write (non-binary converts to UTF-8)"
            /part "Partial write a given number of units"
            length [number!]
            /seek "Write at a specific position"
            index [number!]
            /append "Write data at end of file"
            /allow "Specifies protection attributes"
            access [block!]
            /lines "Write each value in a block as a separate line"
        ]
        open?: action [
            "Returns TRUE if port is open."
            port [port!]
        ]
        query: action [
            "Returns information about a port, file, or URL."
            target [port! file! url! block!]
            /mode "Get mode information"
            field [word! none!] "NONE will return valid modes for port type"
        ]
        modify: action [
            "Change mode or control for port or file."
            target [port! file!]
            field [word! none!]
            value
        ]
        update: action [
            {Updates external and internal states (normally after read/write).}
            port [port!]
        ]
        rename: action [
            "Rename a file."
            from [port! file! url! block!]
            to [port! file! url! block!]
        ]
    ] [
        ajoin: native [
            {Reduces and joins a block of values into a new string.}
            block [block!]
        ]
        also: native [
            {Returns the first value, but also evaluates the second.}
            value1 [any-type!]
            value2 [any-type!]
        ]
        all: native [
            {Shortcut AND. Evaluates and returns at the first FALSE or NONE.}
            block [block!] "Block of expressions"
        ]
        any: native [
            {Shortcut OR. Evaluates and returns the first value that is not FALSE or NONE.}
            block [block!] "Block of expressions"
        ]
        apply: native [
            "Apply a function to a reduced block of arguments."
            func [any-function!] "Function value to apply"
            block [block!] "Block of args, reduced first (unless /only)"
            /only "Use arg values as-is, do not reduce the block"
        ]
        assert: native [
            {Assert that condition is true, else cause an assertion error.}
            conditions [block!]
            /type {Safely check datatypes of variables (words and paths)}
        ]
        attempt: native [
            {Tries to evaluate a block and returns result or NONE on error.}
            block [block!]
        ]
        break: native [
            {Breaks out of a loop, while, until, repeat, foreach, etc.}
            /return "Forces the loop function to return a value"
            value [any-type!]
        ]
        case: native [
            {Evaluates each condition, and when true, evaluates what follows it.}
            block [block!] "Block of cases (conditions followed by values)"
            /all {Evaluate all cases (do not stop at first true case)}
        ]
        catch: native [
            {Catches a throw from a block and returns its value.}
            block [block!] "Block to evaluate"
            /name "Catches a named throw"
            word [word! block!] "One or more names"
            /quit "Special catch for QUIT native"
        ]
        comment: native [
            "Ignores the argument value and returns nothing."
            value "A string, block, file, etc."
        ]
        compose: native [
            {Evaluates a block of expressions, only evaluating parens, and returns a block.}
            value "Block to compose"
            /deep "Compose nested blocks"
            /only {Insert a block as a single value (not the contents of the block)}
            /into {Output results into a block with no intermediate storage}
            out [any-block!]
        ]
        context: native [
            "Creates an object."
            spec
        ]
        continue: native [
            "Throws control back to top of loop."
        ]
        do: native [
            {Evaluates a block, file, URL, function, word, or any other value.}
            value [any-type!] "Normally a file name, URL, or block"
            /args {If value is a script, this will set its system/script/args}
            arg "Args passed to a script (normally a string)"
            /next {Do next expression only, return it, update block variable}
            var [word!] "Variable updated with new block position"
        ]
        either: native [
            {If condition is TRUE, evaluates the first block, else evaluates the second.}
            condition
            true-block [block!]
            false-block [block!]
        ]
        exit: native [
            "Exits a function, returning no value."
        ]
        find-script: native [
            {Find a script header within a binary string. Returns starting position.}
            script [binary!]
        ]
        for: native [
            {Evaluate a block over a range of values. (See also: REPEAT)}
            'word [word!] "Variable to hold current value"
            start [series! number!] "Starting value"
            end [series! number!] "Ending value"
            bump [number!] "Amount to skip each time"
            body [block!] "Block to evaluate"
        ]
        forall: native [
            "Evaluates a block for every value in a series."
            'word [word!] {Word that refers to the series, set to each position in series}
            body [block!] "Block to evaluate each time"
        ]
        forever: native [
            "Evaluates a block endlessly."
            body [block!] "Block to evaluate each time"
        ]
        foreach: native [
            "Evaluates a block for each value(s) in a series."
            'word [word! block!] "Word or block of words to set each time (local)"
            data [series! any-object! map! none!] "The series to traverse"
            body [block!] "Block to evaluate each time"
        ]
        forskip: native [
            "Evaluates a block for periodic values in a series."
            'word [word!] {Word that refers to the series, set to each position in series}
            size [integer! decimal!] "Number of positions to skip each time"
            body [block!] "Block to evaluate each time"
            /local orig result
        ]
        halt: native [
            "Stops evaluation and returns to the input prompt."
        ]
        if: native [
            "If condition is TRUE, evaluates the block."
            condition
            then-block [block!]
            /else "If not true, evaluate this block"
            else-block [block!]
        ]
        loop: native [
            "Evaluates a block a specified number of times."
            count [number!] "Number of repetitions"
            block [block!] "Block to evaluate"
        ]
        map-each: native [
            {Evaluates a block for each value(s) in a series and returns them as a block.}
            'word [word! block!] "Word or block of words to set each time (local)"
            data [block! vector!] "The series to traverse"
            body [block!] "Block to evaluate each time"
        ]
        quit: native [
            "Stops evaluation and exits the interpreter."
            /return "Returns a value (to prior script or command shell)"
            value "Note: use integers for command shell"
            /now "Quit immediately"
        ]
        protect: native [
            {Protect a series or a variable from being modified.}
            value [word! series! bitset! map! object! module!]
            /deep "Protect all sub-series/objects as well"
            /words "Process list as words (and path words)"
            /values "Process list of values (implied GET)"
            /hide "Hide variables (avoid binding and lookup)"
        ]
        unprotect: native [
            {Unprotect a series or a variable (it can again be modified).}
            value [word! series! bitset! map! object! module!]
            /deep "Protect all sub-series as well"
            /words "Block is a list of words"
            /values "Process list of values (implied GET)"
        ]
        recycle: native [
            "Recycles unused memory."
            /off "Disable auto-recycling"
            /on "Enable auto-recycling"
            /ballast "Trigger for auto-recycle (memory used)"
            size [integer!]
            /torture "Constant recycle (for internal debugging)"
        ]
        reduce: native [
            {Evaluates expressions and returns multiple results.}
            value
            /no-set "Keep set-words as-is. Do not set them."
            /only "Only evaluate words and paths, not functions"
            words [block! none!] "Optional words that are not evaluated (keywords)"
            /into {Output results into a block with no intermediate storage}
            out [any-block!]
        ]
        repeat: native [
            {Evaluates a block a number of times or over a series.}
            'word [word!] "Word to set each time"
            value [number! series! none!] "Maximum number or series to traverse"
            body [block!] "Block to evaluate each time"
        ]
        remove-each: native [
            {Removes values for each block that returns true; returns removal count.}
            'word [word! block!] "Word or block of words to set each time (local)"
            data [series!] "The series to traverse (modified)"
            body [block!] "Block to evaluate (return TRUE to remove)"
        ]
        return: native [
            "Returns a value from a function."
            value [any-type!]
            /redo {Upon return, re-evaluate the returned result. (Used for DO)}
        ]
        switch: native [
            {Selects a choice and evaluates the block that follows it.}
            value "Target value"
            cases [block!] "Block of cases to check"
            /default case "Default case if no others found"
            /all "Evaluate all matches (not just first one)"
        ]
        throw: native [
            "Throws control back to a previous catch."
            value [any-type!] "Value returned from catch"
            /name "Throws to a named catch"
            word [word!]
        ]
        trace: native [
            {Enables and disables evaluation tracing and backtrace.}
            mode [integer! logic!]
            /back {Set mode ON to enable or integer for lines to display}
            /function "Traces functions only (less output)"
        ]
        try: native [
            {Tries to DO a block and returns its value or an error.}
            block [block!]
            /except "On exception, evaluate this code block"
            code [block! any-function!]
        ]
        unless: native [
            "Evaluates the block if condition is not TRUE."
            condition
            block [block!]
        ]
        until: native [
            "Evaluates a block until it is TRUE. "
            block [block!]
        ]
        while: native [
            {While a condition block is TRUE, evaluates another block.}
            cond-block [block!]
            body-block [block!]
        ]
        bind: native [
            "Binds words to the specified context."
            word [block! any-word!] "A word or block (modified) (returned)"
            context [any-word! any-object!] "A reference to the target context"
            /copy {Bind and return a deep copy of a block, don't modify original}
            /only "Bind only first block (not deep)"
            /new "Add to context any new words found"
            /set "Add to context any new set-words found"
        ]
        unbind: native [
            "Unbinds words from context."
            word [block! any-word!] "A word or block (modified) (returned)"
            /deep "Process nested blocks"
        ]
        bound?: native [
            "Returns the context in which a word is bound."
            word [any-word!]
        ]
        collect-words: native [
            {Collect unique words used in a block (used for context construction).}
            block [block!]
            /deep "Include nested blocks"
            /set "Only include set-words"
            /ignore "Ignore prior words"
            words [any-object! block! none!] "Words to ignore"
        ]
        checksum: native [
            "Computes a checksum, CRC, or hash."
            data [binary!] "Bytes to checksum"
            /part length "Length of data"
            /tcp "Returns an Internet TCP 16-bit checksum"
            /secure "Returns a cryptographically secure checksum"
            /hash "Returns a hash value"
            size [integer!] "Size of the hash table"
            /method "Method to use"
            word [word!] "Methods: SHA1 MD5 CRC32"
            /key "Returns keyed HMAC value"
            key-value [any-string!] "Key to use"
        ]
        compress: native [
            "Compresses a string series and returns it."
            data [binary! string!] "If string, it will be UTF8 encoded"
            /part length "Length of data (elements)"
            /gzip "Use GZIP checksum"
        ]
        decompress: native [
            "Decompresses data. Result is binary."
            data [binary!] "Data to decompress"
            /part length "Length of compressed data (must match end marker)"
            /gzip "Use GZIP checksum"
            /limit size "Error out if result is larger than this"
        ]
        construct: native [
            "Creates an object with scant (safe) evaluation."
            block [block! string! binary!] "Specification (modified)"
            /with "Default object" object [object!]
            /only "Values are kept as-is"
        ]
        debase: native [
            {Decodes binary-coded string (BASE-64 default) to binary value.}
            value [binary! string!] "The string to decode"
            /base "Binary base to use"
            base-value [integer!] "The base to convert from: 64, 16, or 2"
        ]
        enbase: native [
            {Encodes a string into a binary-coded string (BASE-64 default).}
            value [binary! string!] "If string, will be UTF8 encoded"
            /base "Binary base to use"
            base-value [integer!] "The base to convert to: 64, 16, or 2"
        ]
        decloak: native [
            {Decodes a binary string scrambled previously by encloak.}
            data [binary!] "Binary series to descramble (modified)"
            key [string! binary! integer!] "Encryption key or pass phrase"
            /with "Use a string! key as-is (do not generate hash)"
        ]
        encloak: native [
            "Scrambles a binary string based on a key."
            data [binary!] "Binary series to scramble (modified)"
            key [string! binary! integer!] "Encryption key or pass phrase"
            /with "Use a string! key as-is (do not generate hash)"
        ]
        deline: native [
            {Converts string terminators to standard format, e.g. CRLF to LF.}
            string [any-string!] "(modified)"
            /lines {Return block of lines (works for LF, CR, CR-LF endings) (no modify)}
        ]
        enline: native [
            {Converts string terminators to native OS format, e.g. LF to CRLF.}
            series [any-string! block!] "(modified)"
        ]
        detab: native [
            "Converts tabs to spaces (default tab size is 4)."
            string [any-string!] "(modified)"
            /size "Specifies the number of spaces per tab"
            number [integer!]
        ]
        entab: native [
            "Converts spaces to tabs (default tab size is 4)."
            string [any-string!] "(modified)"
            /size "Specifies the number of spaces per tab"
            number [integer!]
        ]
        delect: native [
            {Parses a common form of dialects. Returns updated input block.}
            dialect [object!] "Describes the words and datatypes of the dialect"
            input [block!] "Input stream to parse"
            output [block!] "Resulting values, ordered as defined (modified)"
            /in {Search for var words in specific objects (contexts)}
            where [block!] "Block of objects to search (non objects ignored)"
            /all "Parse entire block, not just one command at a time"
        ]
        difference: native [
            "Returns the special difference of two values."
            set1 [block! string! binary! bitset! date! typeset!] "First data set"
            set2 [block! string! binary! bitset! date! typeset!] "Second data set"
            /case "Uses case-sensitive comparison"
            /skip "Treat the series as records of fixed size"
            size [integer!]
        ]
        exclude: native [
            {Returns the first data set less the second data set.}
            set1 [block! string! binary! bitset! typeset!] "First data set"
            set2 [block! string! binary! bitset! typeset!] "Second data set"
            /case "Uses case-sensitive comparison"
            /skip "Treat the series as records of fixed size"
            size [integer!]
        ]
        intersect: native [
            "Returns the intersection of two data sets."
            set1 [block! string! binary! bitset! typeset!] "first set"
            set2 [block! string! binary! bitset! typeset!] "second set"
            /case "Uses case-sensitive comparison"
            /skip "Treat the series as records of fixed size"
            size [integer!]
        ]
        union: native [
            "Returns the union of two data sets."
            set1 [block! string! binary! bitset! typeset!] "first set"
            set2 [block! string! binary! bitset! typeset!] "second set"
            /case "Use case-sensitive comparison"
            /skip "Treat the series as records of fixed size"
            size [integer!]
        ]
        unique: native [
            "Returns the data set with duplicates removed."
            set1 [block! string! binary! bitset! typeset!]
            /case "Use case-sensitive comparison (except bitsets)"
            /skip "Treat the series as records of fixed size"
            size [integer!]
        ]
        lowercase: native [
            "Converts string of characters to lowercase."
            string [any-string! char!] "(modified if series)"
            /part "Limits to a given length or position"
            length [number! any-string!]
        ]
        uppercase: native [
            "Converts string of characters to uppercase."
            string [any-string! char!] "(modified if series)"
            /part "Limits to a given length or position"
            length [number! any-string!]
        ]
        dehex: native [
            "Converts URL-style hex encoded (%xx) strings."
            value [any-string!] "The string to dehex"
        ]
        get: native [
            {Gets the value of a word or path, or values of an object.}
            word "Word, path, object to get"
            /any "Allows word to have no value (allows unset)"
        ]
        in: native [
            "Returns the word or block in the object's context."
            object [any-object! block!]
            word [any-word! block! paren!] "(modified if series)"
        ]
        parse: native [
            {Parses a string or block series according to grammar rules.}
            input [series!] "Input series to parse"
            rules [block! string! char! none!] {Rules to parse by (none = ",;")}
            /all {For simple rules (not blocks) parse all chars including whitespace}
            /case "Uses case-sensitive comparison"
        ]
        set: native [
            {Sets a word, path, block of words, or object to specified value(s).}
            word [any-word! any-path! block! object!] {Word, block of words, path, or object to be set (modified)}
            value [any-type!] "Value or block of values"
            /any "Allows setting words to any value, including unset"
            /pad {For objects, if block is too short, remaining words are set to NONE}
        ]
        to-hex: native [
            {Converts numeric value to a hex issue! datatype (with leading # and 0's).}
            value [integer! tuple!] "Value to be converted"
            /size "Specify number of hex digits in result"
            len [integer!]
        ]
        type?: native [
            "Returns the datatype of a value."
            value [any-type!]
            /word "Returns the datatype as a word"
        ]
        unset: native [
            {Unsets the value of a word (in its current context.)}
            word [word! block!] "Word or block of words"
        ]
        utf?: native [
            {Returns UTF BOM (byte order marker) encoding; + for BE, - for LE.}
            data [binary!]
        ]
        invalid-utf?: native [
            {Checks UTF encoding; if correct, returns none else position of error.}
            data [binary!]
            /utf "Check encodings other than UTF-8"
            num [integer!] "Bit size - positive for BE negative for LE"
        ]
        value?: native [
            "Returns TRUE if the word has a value."
            value
        ]
        print: native [
            "Outputs a value followed by a line break."
            value [any-type!] "The value to print"
        ]
        prin: native [
            "Outputs a value with no line break."
            value [any-type!]
        ]
        mold: native [
            "Converts a value to a REBOL-readable string."
            value [any-type!] "The value to mold"
            /only {For a block value, mold only its contents, no outer []}
            /all "Mold in serialized format"
            /flat "No indentation"
        ]
        form: native [
            "Converts a value to a human-readable string."
            value [any-type!] "The value to form"
        ]
        new-line: native [
            {Sets or clears the new-line marker within a block or paren.}
            position [block! paren!] "Position to change marker (modified)"
            value "Set TRUE for newline"
            /all "Set/clear marker to end of series"
            /skip {Set/clear marker periodically to the end of the series}
            size [integer!]
        ]
        new-line?: native [
            {Returns the state of the new-line marker within a block or paren.}
            block [block! paren!] "Position in block to check marker"
        ]
        to-local-file: native [
            {Converts a REBOL file path to the local system file path.}
            path [file! string!]
            /full {Prepends current dir for full path (for relative paths only)}
        ]
        to-rebol-file: native [
            {Converts a local system file path to a REBOL file path.}
            path [file! string!]
        ]
        transcode: native [
            {Translates UTF-8 binary source to values. Returns [value binary].}
            source [binary!] "Must be Unicode UTF-8 encoded"
            /next {Translate next complete value (blocks as single value)}
            /only "Translate only a single value (blocks dissected)"
            /error {Do not cause errors - return error object as value in place}
        ]
        echo: native [
            "Copies console output to a file."
            target [file! none! logic!]
        ]
        now: native [
            "Returns date and time."
            /year "Returns year only"
            /month "Returns month only"
            /day "Returns day of the month only"
            /time "Returns time only"
            /zone "Returns time zone offset from UCT (GMT) only"
            /date "Returns date only"
            /weekday {Returns day of the week as integer (Monday is day 1)}
            /yearday "Returns day of the year (Julian)"
            /precise "High precision time"
            /utc "Universal time (no zone)"
        ]
        wait: native [
            "Waits for a duration, port, or both."
            value [number! time! port! block! none!]
            /all "Returns all in a block"
        ]
        wake-up: native [
            "Awake and update a port with event."
            port [port!]
            event [event!]
        ]
        what-dir: native ["Returns the current directory path."]
        change-dir: native [
            "Changes the current directory path."
            path [file!]
        ]
        first: native [
            "Returns the first value of a series."
            value
        ]
        second: native [
            "Returns the second value of a series."
            value
        ]
        third: native [
            "Returns the third value of a series."
            value
        ]
        fourth: native [
            "Returns the fourth value of a series."
            value
        ]
        fifth: native [
            "Returns the fifth value of a series."
            value
        ]
        sixth: native [
            "Returns the sixth value of a series."
            value
        ]
        seventh: native [
            "Returns the seventh value of a series."
            value
        ]
        eighth: native [
            "Returns the eighth value of a series."
            value
        ]
        ninth: native [
            "Returns the ninth value of a series."
            value
        ]
        tenth: native [
            "Returns the tenth value of a series."
            value
        ]
        last: native [
            "Returns the last value of a series."
            value [series! tuple! gob!]
        ]
        cosine: native [
            "Returns the trigonometric cosine."
            value [number!] "In degrees by default"
            /radians "Value is specified in radians"
        ]
        sine: native [
            "Returns the trigonometric sine."
            value [number!] "In degrees by default"
            /radians "Value is specified in radians"
        ]
        tangent: native [
            "Returns the trigonometric tangent."
            value [number!] "In degrees by default"
            /radians "Value is specified in radians"
        ]
        arccosine: native [
            {Returns the trigonometric arccosine (in degrees by default).}
            value [number!]
            /radians "Returns result in radians"
        ]
        arcsine: native [
            {Returns the trigonometric arcsine (in degrees by default).}
            value [number!]
            /radians "Returns result in radians"
        ]
        arctangent: native [
            {Returns the trigonometric arctangent (in degrees by default).}
            value [number!]
            /radians "Returns result in radians"
        ]
        exp: native [
            {Raises E (the base of natural logarithm) to the power specified}
            power [number!]
        ]
        log-10: native [
            "Returns the base-10 logarithm."
            value [number!]
        ]
        log-2: native [
            "Return the base-2 logarithm."
            value [number!]
        ]
        log-e: native [
            {Returns the natural (base-E) logarithm of the given value.}
            value [number!]
        ]
        not: native [
            "Returns the logic complement."
            value "(Only FALSE and NONE return TRUE)"
        ]
        square-root: native [
            "Returns the square root of a number."
            value [number!]
        ]
        shift: native [
            {Shifts an integer left or right by a number of bits.}
            value [integer!]
            bits [integer!] "Positive for left shift, negative for right shift"
            /logical "Logical shift (sign bit ignored)"
        ]
        ++: native [
            {Increment an integer or series index. Return its prior value.}
            'word [word!] "Integer or series variable"
        ]
        --: native [
            {Decrement an integer or series index. Return its prior value.}
            'word [word!] "Integer or series variable"
        ]
        first+: native [
            {Return the FIRST of a series then increment the series index.}
            'word [word!] "Word must refer to a series"
        ]
        stack: native [
            "Returns stack backtrace or other values."
            offset [integer!] "Relative backward offset"
            /block "Block evaluation position"
            /word "Function or object name, if known"
            /func "Function value"
            /args "Block of args (may be modified)"
            /size "Current stack size (in value units)"
            /depth "Stack depth (frames)"
            /limit "Stack bounds (auto expanding)"
        ]
        resolve: native [
            {Copy context by setting values in the target from those in the source.}
            target [any-object!] "(modified)"
            source [any-object!]
            /only from [block! integer!] {Only specific words (exports) or new words in target (index to tail)}
            /all {Set all words, even those in the target that already have a value}
            /extend "Add source words to the target if necessary"
        ]
        get-env: native [
            {Returns the value of an OS environment variable (for current process).}
            var [any-string! any-word!]
        ]
        list-env: native [
            {Returns a map of OS environment variables (for current process).}
        ]
        call: native [
            "Run another program; return immediately."
            command [string!] "An OS-local command line, quoted as necessary"
            /wait "Wait for command to terminate before returning"
        ]
        browse: native [
            "Open web browser to a URL or local file."
            url [url! file! none!]
        ]
        evoke: native [
            "Special guru meditations. (Not for beginners.)"
            chant [word! block! integer!] "Single or block of words ('? to list)"
        ]
        request-file: native [
            {Asks user to select a file and returns full file path (or block of paths).}
            /save "File save mode"
            /multi {Allows multiple file selection, returned as a block}
            /file name [file!] "Default file name or directory"
            /title text [string!] "Window title"
            /filter list [block!] "Block of filters (filter-name filter)"
        ]
        ascii?: native [
            {Returns TRUE if value or string is in ASCII character range (below 128).}
            value [any-string! char! integer!]
        ]
        latin1?: native [
            {Returns TRUE if value or string is in Latin-1 character range (below 256).}
            value [any-string! char! integer!]
        ]
        stats: native [
            {Provides status and statistics information about the interpreter.}
            /show "Print formatted results to console"
            /profile "Returns profiler object"
            /timer "High resolution time difference from start"
            /evals "Number of values evaluated by interpreter"
        ]
        do-codec: native [
            {Evaluate a CODEC function to encode or decode media types.}
            handle [handle!] "Internal link to codec"
            action [word!] "Decode, encode, identify"
            data [binary! image!]
        ]
        set-scheme: native [
            "Low-level port scheme actor initialization."
            scheme [object!]
        ]
        load-extension: native [
            "Low level extension module loader (for DLLs)."
            name [file! binary!] "DLL file or UTF-8 source"
            /dispatch {Specify native command dispatch (from hosted extensions)}
            function [handle!] "Command dispatcher (native)"
        ]
        do-commands: native [
            {Evaluate a block of extension module command functions (special evaluation rules.)}
            commands [block!] "Series of commands and their arguments"
        ]
        ds: native ["Temporary stack debug"]
        dump: native ["Temporary debug dump" v]
        check: native ["Temporary series debug check" val [series!]]
        do-callback: native [
            "Internal function to process callback events."
            event [event!] "Callback event"
        ]
        limit-usage: native [
            "Set a usage limit only once (used for SECURE)."
            field [word!] "eval (count) or memory (bytes)"
            limit [number!]
        ]
        selfless?: native [
            "Returns true if the context doesn't bind 'self."
            context [any-word! any-object!] "A reference to the target context"
        ]
        map-event: native [
            {Returns event with inner-most graphical object and coordinate.}
            event [event!]
        ]
        map-gob-offset: native [
            {Translates a gob and offset to the deepest gob and offset in it, returned as a block.}
            gob [gob!] "Starting object"
            xy [pair!] "Staring offset"
            /reverse "Translate from deeper gob to top gob."
        ]
        as-pair: native [
            "Combine X and Y values into a pair."
            x [number!]
            y [number!]
        ]
        equal?: native [
            "Returns TRUE if the values are equal."
            value1 [any-type!]
            value2 [any-type!]
        ]
        not-equal?: native [
            "Returns TRUE if the values are not equal."
            value1 [any-type!]
            value2 [any-type!]
        ]
        equiv?: native [
            "Returns TRUE if the values are equivalent."
            value1 [any-type!]
            value2 [any-type!]
        ]
        not-equiv?: native [
            "Returns TRUE if the values are not equivalent."
            value1 [any-type!]
            value2 [any-type!]
        ]
        strict-equal?: native [
            "Returns TRUE if the values are strictly equal."
            value1 [any-type!]
            value2 [any-type!]
        ]
        strict-not-equal?: native [
            "Returns TRUE if the values are not strictly equal."
            value1 [any-type!]
            value2 [any-type!]
        ]
        same?: native [
            "Returns TRUE if the values are identical."
            value1 [any-type!]
            value2 [any-type!]
        ]
        greater?: native [
            {Returns TRUE if the first value is greater than the second value.}
            value1 value2
        ]
        greater-or-equal?: native [
            {Returns TRUE if the first value is greater than or equal to the second value.}
            value1 value2
        ]
        lesser?: native [
            {Returns TRUE if the first value is less than the second value.}
            value1 value2
        ]
        lesser-or-equal?: native [
            {Returns TRUE if the first value is less than or equal to the second value.}
            value1 value2
        ]
        minimum: native [
            "Returns the lesser of the two values."
            value1 [scalar! date! series!]
            value2 [scalar! date! series!]
        ]
        maximum: native [
            "Returns the greater of the two values."
            value1 [scalar! date! series!]
            value2 [scalar! date! series!]
        ]
        negative?: native [
            "Returns TRUE if the number is negative."
            number [number! money! time! pair!]
        ]
        positive?: native [
            "Returns TRUE if the value is positive."
            number [number! money! time! pair!]
        ]
        zero?: native [
            {Returns TRUE if the value is zero (for its datatype).}
            value
        ]
    ] [
        + add
        - subtract
        * multiply
        / divide
        // remainder
        ** power
        = equal?
        =? same?
        == strict-equal?
        != not-equal?
        <> not-equal?
        !== strict-not-equal?
        < lesser?
        <= lesser-or-equal?
        > greater?
        >= greater-or-equal?
        & and~
        | or~
        and and~
        or or~
        xor xor~
    ] [["internal marker for end of block" internal] ["no value returned or set" internal] ["no value represented" scalar] ["boolean true or false" scalar] ["64 bit integer" scalar] ["64bit floating point number (IEEE standard)" scalar] ["special form of decimals (used mainly for layout)" scalar] ["high precision decimals with denomination (opt)" scalar] ["8bit and 16bit character" scalar] ["two dimensional point or size" scalar] ["sequence of small integers (colors, versions, IP)" scalar] ["time of day or duration" scalar] ["day, month, year, time of day, and timezone" scalar] ["string series of bytes" string] ["string series of characters" string] ["file name or path" string] ["email address" string] ["uniform resource locator or identifier" string] ["markup string (HTML or XML)" string] ["set of bit flags" string] ["RGB image with alpha channel" vector] ["high performance arrays (single datatype)" vector] ["series of values" block] ["automatically evaluating block" block] ["refinements to functions, objects, files" block] ["definition of a path's value" block] ["the value of a path" block] ["literal path value" block] ["name-value pairs (hash associative)" block] ["type of datatype" symbol] ["set of datatypes" opt-object] ["word (symbol or variable)" word] ["definition of a word's value" word] ["the value of a word (variable)" word] ["literal word value" word] ["variation of meaning or location" word] ["identifying marker word" word] ["direct CPU evaluated function" function] ["datatype native function (standard polymorphic)" function] ["virtual machine function" block] ["special dispatch-based function" function] ["infix operator (special evaluation exception)" function] [{function with persistent locals (indefinite extent)} function] ["interpreted function (user-defined or mezzanine)" function] ["internal context frame" internal] ["context of names with values" object] ["loadable context of code and data" object] ["errors and throws" object] ["evaluation environment" object] ["external series, an I/O channel" object] ["graphical object" opt-object] ["user interface event (efficiently sized)" opt-object] ["arbitrary internal object or value" internal] ["native structure definition" block] ["external library reference" internal] ["user defined datatype" object]] [
        Throw: [
            code: 0
            type: "throw error"
            break: "no loop to break"
            return: "return or exit not in function"
            throw: ["no catch for throw:" :arg1]
            continue: "no loop to continue"
            halt: ["halted by user or script"]
            quit: ["user script quit"]
        ]
        Note: [
            code: 100
            type: "note"
            no-load: ["cannot load: " :arg1]
            exited: ["exit occurred"]
            deprecated: "deprecated function not allowed"
            else-gone: "ELSE is obsolete - use the EITHER function"
        ]
        Syntax: [
            code: 200
            type: "syntax error"
            invalid: ["invalid" :arg1 "--" :arg2]
            missing: ["missing" :arg2 "at" :arg1]
            no-header: ["script is missing a REBOL header:" :arg1]
            bad-header: ["script header is not valid:" :arg1]
            bad-checksum: ["script checksum failed:" :arg1]
            malconstruct: ["invalid constructor:" :arg1]
            bad-char: ["invalid character in:" :arg1]
            needs: ["this script needs" :arg1 :arg2 "or better to run correctly"]
        ]
        Script: [
            code: 300
            type: "script error"
            no-value: [:arg1 "has no value"]
            need-value: [:arg1 "needs a value"]
            not-defined: [:arg1 "word is not bound to a context"]
            not-in-context: [:arg1 "is not in the specified context"]
            no-arg: [:arg1 "is missing its" :arg2 "argument"]
            expect-arg: [:arg1 "does not allow" :arg3 "for its" :arg2 "argument"]
            expect-val: ["expected" :arg1 "not" :arg2]
            expect-type: [:arg1 :arg2 "field must be of type" :arg3]
            cannot-use: ["cannot use" :arg1 "on" :arg2 "value"]
            invalid-arg: ["invalid argument:" :arg1]
            invalid-type: [:arg1 "type is not allowed here"]
            invalid-op: ["invalid operator:" :arg1]
            no-op-arg: [:arg1 "operator is missing an argument"]
            invalid-data: ["data not in correct format:" :arg1]
            not-same-type: "values must be of the same type"
            not-related: ["incompatible argument for" :arg1 "of" :arg2]
            bad-func-def: ["invalid function definition:" :arg1]
            bad-func-arg: ["function argument" :arg1 "is not valid"]
            no-refine: [:arg1 "has no refinement called" :arg2]
            bad-refines: "incompatible or invalid refinements"
            bad-refine: ["incompatible refinement:" :arg1]
            invalid-path: ["cannot access" :arg2 "in path" :arg1]
            bad-path-type: ["path" :arg1 "is not valid for" :arg2 "type"]
            bad-path-set: ["cannot set" :arg2 "in path" :arg1]
            bad-field-set: ["cannot set" :arg1 "field to" :arg2 "datatype"]
            dup-vars: ["duplicate variable specified:" :arg1]
            past-end: "out of range or past end"
            missing-arg: "missing a required argument or refinement"
            out-of-range: ["value out of range:" :arg1]
            too-short: "content too short (or just whitespace)"
            too-long: "content too long"
            invalid-chars: "contains invalid characters"
            invalid-compare: ["cannot compare" :arg1 "with" :arg2]
            assert-failed: ["assertion failed for:" :arg1]
            wrong-type: ["datatype assertion failed for:" :arg1]
            invalid-part: ["invalid /part count:" :arg1]
            type-limit: [:arg1 "overflow/underflow"]
            size-limit: ["maximum limit reached:" :arg1]
            no-return: "block did not return a value"
            block-lines: "expected block of lines"
            throw-usage: "invalid use of a thrown error value"
            locked-word: ["protected variable - cannot modify:" :arg1]
            protected: "protected value or series - cannot modify"
            hidden: "not allowed - would expose or modify hidden values"
            self-protected: "cannot set/unset self - it is protected"
            bad-bad: [:arg1 "error:" :arg2]
            bad-make-arg: ["cannot MAKE/TO" :arg1 "from:" :arg2]
            bad-decode: "missing or unsupported encoding marker"
            already-used: ["alias word is already in use:" :arg1]
            wrong-denom: [:arg1 "not same denomination as" :arg2]
            bad-press: ["invalid compressed data - problem:" :arg1]
            dialect: ["incorrect" :arg1 "dialect usage at:" :arg2]
            bad-command: "invalid command format (extension function)"
            parse-rule: ["PARSE - invalid rule or usage of rule:" :arg1]
            parse-end: ["PARSE - unexpected end of rule after:" :arg1]
            parse-variable: ["PARSE - expected a variable, not:" :arg1]
            parse-command: ["PARSE - command cannot be used as variable:" :arg1]
            parse-series: ["PARSE - input must be a series:" :arg1]
        ]
        Math: [
            code: 400
            type: "math error"
            zero-divide: "attempt to divide by zero"
            overflow: "math or number overflow"
            positive: "positive number required"
        ]
        Access: [
            code: 500
            type: "access error"
            cannot-open: ["cannot open:" :arg1 "reason:" :arg2]
            not-open: ["port is not open:" :arg1]
            already-open: ["port is already open:" :arg1]
            no-connect: ["cannot connect:" :arg1 "reason:" :arg2]
            not-connected: ["port is not connected:" :arg1]
            no-script: ["script not found:" :arg1]
            no-scheme-name: ["new scheme must have a name:" :arg1]
            no-scheme: ["missing port scheme:" :arg1]
            invalid-spec: ["invalid spec or options:" :arg1]
            invalid-port: ["invalid port object (invalid field values)"]
            invalid-actor: ["invalid port actor (must be native or object)"]
            invalid-port-arg: ["invalid port argument:" arg1]
            no-port-action: ["this port does not support:" :arg1]
            protocol: ["protocol error:" :arg1]
            invalid-check: ["invalid checksum (tampered file):" :arg1]
            write-error: ["write failed:" :arg1 "reason:" :arg2]
            read-error: ["read failed:" :arg1 "reason:" :arg2]
            read-only: ["read-only - write not allowed:" :arg1]
            no-buffer: ["port has no data buffer:" :arg1]
            timeout: ["port action timed out:" :arg1]
            no-create: ["cannot create:" :arg1]
            no-delete: ["cannot delete:" :arg1]
            no-rename: ["cannot rename:" :arg1]
            bad-file-path: ["bad file path:" :arg1]
            bad-file-mode: ["bad file mode:" :arg1]
            security: ["security violation:" :arg1 " (refer to SECURE function)"]
            security-level: ["attempt to lower security to" :arg1]
            security-error: ["invalid" :arg1 "security policy:" :arg2]
            no-codec: ["cannot decode or encode (no codec):" :arg1]
            bad-media: ["bad media data (corrupt image, sound, video)"]
            no-extension: ["cannot open extension:" :arg1]
            bad-extension: ["invalid extension format:" :arg1]
            extension-init: ["extension cannot be initialized (check version):" :arg1]
            call-fail: ["external process failed:" :arg1]
        ]
        Command: [
            code: 600
            type: "command error"
        ]
        resv700: [
            code: 700
            type: "reserved"
        ]
        User: [
            code: 800
            type: "user error"
            message: [:arg1]
        ]
        Internal: [
            code: 900
            type: "internal error"
            bad-path: ["bad path:" arg1]
            not-here: [arg1 "not supported on your system"]
            no-memory: "not enough memory"
            stack-overflow: "stack overflow"
            globals-full: "no more global variable space"
            max-natives: "too many natives"
            bad-series: "invalid series"
            limit-hit: ["internal limit reached:" :arg1]
            bad-sys-func: ["invalid or missing system function:" :arg1]
            feature-na: "feature not available"
            not-done: "reserved for future use (or not yet implemented)"
            invalid-error: "error object or fields were not valid"
        ]
    ] [
        product: 'core
        version: 3.1.1.3.1
        build: 19-Apr-2013/15:31:11
        platform: [
            Windows win32-x86
        ]
        license: {Copyright 2012 REBOL Technologies
REBOL is a trademark of REBOL Technologies
Licensed under the Apache License, Version 2.0.
See: http://www.apache.org/licenses/LICENSE-2.0
}
        catalog: context [
            datatypes: []
            actions: none
            natives: none
            errors: none
            reflectors: [spec body words values types title]
            boot-flags: [
                script args do import version debug secure
                help vers quiet verbose no-boot
                secure-min secure-max trace halt cgi boot-level
            ]
        ]
        contexts: context [
            root:
            sys:
            lib:
            user:
            none
        ]
        state: context [
            note: "contains protected hidden fields"
            policies: context [
                file:
                net:
                eval:
                memory:
                secure:
                protect:
                debug:
                envr:
                call:
                browse:
                0.0.0
                extension: 2.2.2
            ]
            last-error: none
        ]
        modules: []
        codecs: context []
        dialects: context [
            secure:
            draw:
            effect:
            text:
            rebcode:
            none
        ]
        schemes: context []
        ports: context [
            wait-list: []
            input:
            output:
            echo:
            system:
            callback: none
        ]
        locale: context [
            language:
            language*:
            locale:
            locale*: none
            months: [
                "January" "February" "March" "April" "May" "June"
                "July" "August" "September" "October" "November" "December"
            ]
            days: [
                "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday"
            ]
        ]
        options: context [
            boot:
            home:
            path:
            none
            flags:
            script:
            args:
            do-arg:
            import:
            debug:
            secure:
            version:
            boot-level:
            none
            quiet: false
            binary-base: 16
            decimal-digits: 15
            module-paths: [%./]
            default-suffix: %.reb
            file-types: []
            result-types: none
        ]
        script: context [
            title:
            header:
            parent:
            path:
            args:
            none
        ]
        standard: context [
            error: context [
                code: 0
                type: 'user
                id: 'message
                arg1:
                arg2:
                arg3:
                near:
                where:
                none
            ]
            script: context [
                title:
                header:
                parent:
                path:
                args:
                none
            ]
            header: context [
                title: "Untitled"
                name:
                type:
                version:
                date:
                file:
                author:
                needs:
                options:
                checksum:
                none
            ]
            scheme: context [
                name:
                title:
                spec:
                info:
                actor:
                awake:
                none
            ]
            port: context [
                spec:
                scheme:
                actor:
                awake:
                state:
                data:
                locals:
                none
            ]
            port-spec-head: context [
                title:
                scheme:
                ref:
                path:
                none
            ]
            port-spec-net: make port-spec-head [
                host: none
                port-id: 80
                none
            ]
            file-info: context [
                name:
                size:
                date:
                type:
                none
            ]
            net-info: context [
                local-ip:
                local-port:
                remote-ip:
                remote-port:
                none
            ]
            extension: context [
                lib-base:
                lib-file:
                lib-boot:
                command:
                cmd-index:
                words:
                none
            ]
            stats: context [
                timer:
                evals:
                eval-natives:
                eval-functions:
                series-made:
                series-freed:
                series-expanded:
                series-bytes:
                series-recycled:
                made-blocks:
                made-objects:
                recycles:
                none
            ]
            type-spec: context [
                title:
                type:
                none
            ]
            utype: none
            font: none
            para: none
        ]
        view: context [
            screen-gob: none
            handler: none
            event-port: none
            metrics: context [
                screen-size: 0x0
                border-size: 0x0
                border-fixed: 0x0
                title-size: 0x0
                work-origin: 0x0
                work-size: 0x0
            ]
            event-types: [
                ignore
                interrupt
                device
                callback
                custom
                error
                init
                open
                close
                connect
                accept
                read
                write
                wrote
                lookup
                ready
                done
                time
                show
                hide
                offset
                resize
                active
                inactive
                minimize
                maximize
                restore
                move
                down
                up
                alt-down
                alt-up
                aux-down
                aux-up
                key
                key-up
                scroll-line
                scroll-page
                drop-file
            ]
            event-keys: [
                page-up
                page-down
                end
                home
                left
                up
                right
                down
                insert
                delete
                f1
                f2
                f3
                f4
                f5
                f6
                f7
                f8
                f9
                f10
                f11
                f12
            ]
        ]
    ] [
        on: true
        off: false
        yes: true
        no: false
        zero: 0
        REBOL: system
        sys: system/contexts/sys
        lib: system/contexts/lib
        null: #"^@"
        space: #" "
        sp: space
        backspace: #"^H"
        bs: backspace
        tab: #"^-"
        newline: #"^/"
        newpage: #"^L"
        slash: #"/"
        backslash: #"\"
        escape: #"^["
        cr: #"^M"
        lf: newline
        crlf: "^M^/"
        q: :quit
        !: :not
        min: :minimum
        max: :maximum
        abs: :absolute
        empty?: :tail?
        ---: :comment
        bind?: :bound?
        rebol.com: http://www.rebol.com
        func: make function! [[
                {Non-copying function constructor (optimized for boot).}
                spec [block!] {Help string (opt) followed by arg words (and opt type and string)}
                body [block!] "The body block of the function"
            ] [
                make function! reduce [spec body]
            ]]
        funct: func [
            "Defines a function with all set-words as locals."
            spec [block!] {Help string (opt) followed by arg words (and opt type and string)}
            body [block!] "The body block of the function"
            /with "Define or use a persistent object (self)"
            object [object! block! map!] "The object or spec"
            /extern words [block!] "These words are not local"
        ] [
            unless find spec: copy/deep spec /local [append spec [
                    /local
                ]]
            body: copy/deep body
            append spec collect-words/deep/set/ignore body either with [
                unless object? object [object: make object! object]
                bind body object
                append append append copy spec 'self words-of object words
            ] [
                either extern [append copy spec words] [spec]
            ]
            make function! reduce [spec body]
        ]
        does: func [
            {A shortcut to define a function that has no arguments or locals.}
            body [block!] "The body block of the function"
        ] [
            make function! copy/deep reduce [[] body]
        ]
        use: func [
            "Defines words local to a block."
            vars [block! word!] "Local word(s) to the block"
            body [block!] "Block to evaluate"
        ] [
            apply make closure! reduce [to block! vars copy/deep body] []
        ]
        object: func [
            "Defines a unique object."
            blk [block!] "Object words and values (modified)."
        ] [
            make object! append blk none
        ]
        module: func [
            "Creates a new module."
            spec [block!] "The header block of the module (modified)"
            body [block!] "The body block of the module (modified)"
            /mixin "Mix in words from other modules"
            words [object!] "Words collected into an object"
        ] [
            make module! unbind/deep reduce pick [[spec body] [spec body words]] not mixin
        ]
        cause-error: func [
            {Causes an immediate error throw with the provided information.}
            err-type [word!]
            err-id [word!]
            args
        ] [
            args: compose [(:args)]
            forall args [
                if any-function? first args [
                    change/only args spec-of first args
                ]
            ]
            do make error! [
                type: err-type
                id: err-id
                arg1: first args
                arg2: second args
                arg3: third args
            ]
        ]
        default: func [
            {Set a word to a default value if it hasn't been set yet.}
            'word [word! set-word! lit-word!] "The word (use :var for word! values)"
            value "The value"
        ] [
            unless all [value? word not none? get word] [set word :value] :value
        ]
        secure: func ['d] [boot-print "SECURE is disabled"]
        repend: func [
            {Appends a reduced value to a series and returns the series head.}
            series [series! port! map! gob! object! bitset!] "Series at point to insert"
            value "The value to insert"
            /part "Limits to a given length or position"
            length [number! series! pair!]
            /only "Inserts a series as a series"
            /dup "Duplicates the insert a specified number of times"
            count [number! pair!]
        ] [
            apply :append [series reduce :value part length only dup count]
        ]
        join: func [
            "Concatenates values."
            value "Base value"
            rest "Value or block of values"
        ] [
            value: either series? :value [copy value] [form :value]
            repend value :rest
        ]
        reform: func [
            "Forms a reduced block and returns a string."
            value "Value to reduce and form"
        ] [
            form reduce :value
        ]
        info?: func [
            "Returns an info object about a file or url."
            target [file! url!]
        ] [
            query target
        ]
        exists?: func [
            {Returns the type of a file or URL if it exists, otherwise none.}
            target [file! url!]
        ] [
            select attempt [query target] 'type
        ]
        size?: func [
            "Returns the size of a file."
            target [file! url!]
        ] [
            all [
                target: attempt [query target]
                target/size
            ]
        ]
        modified?: func [
            "Returns the last modified date of a file."
            target [file! url!]
        ] [
            all [
                target: attempt [query target]
                target/date
            ]
        ]
        suffix?: func [
            {Return the file suffix of a filename or url. Else, NONE.}
            path [file! url! string!]
        ] [
            if all [
                path: find/last path #"."
                not find path #"/"
            ] [to file! path]
        ]
        dir?: func [
            {Returns TRUE if the file or url ends with a slash (or backslash).}
            target [file! url!]
        ] [
            true? find "/\" last target
        ]
        dirize: func [
            {Returns a copy (always) of the path as a directory (ending slash).}
            path [file! string! url!]
        ] [
            path: copy path
            if slash <> last path [append path slash]
            path
        ]
        make-dir: func [
            {Creates the specified directory. No error if already exists.}
            path [file! url!]
            /deep "Create subdirectories too"
            /local dirs end created
        ] [
            if empty? path [return path]
            if slash <> last path [path: dirize path]
            if exists? path [
                if dir? path [return path]
                cause-error 'access 'cannot-open path
            ]
            if any [not deep url? path] [
                create path
                return path
            ]
            path: copy path
            dirs: copy []
            while [
                all [
                    not empty? path
                    not exists? path
                    remove back tail path
                ]
            ] [
                end: any [find/last/tail path slash path]
                insert dirs copy end
                clear end
            ]
            created: copy []
            foreach dir dirs [
                path: either empty? path [dir] [path/:dir]
                append path slash
                if error? try [make-dir path] [
                    foreach dir created [attempt [delete dir]]
                    cause-error 'access 'cannot-open path
                ]
                insert created path
            ]
            path
        ]
        script?: func [
            {Checks file, url, or string for a valid script header.}
            source [file! url! binary! string!]
        ] [
            switch type?/word source [
                file! url! [source: read source]
                string! [source: to binary! source]
            ]
            find-script source
        ]
        file-type?: func [
            {Return the identifying word for a specific file type (or NONE).}
            file [file! url!]
        ] [
            if file: find find system/options/file-types suffix? file word! [first file]
        ]
        split-path: func [
            {Splits and returns directory path and file as a block.}
            target [file! url! string!]
            /local dir pos
        ] [
            parse/all target [
                [#"/" | 1 2 #"." opt #"/"] end (dir: dirize target) |
                pos: any [thru #"/" [end | pos:]] (
                    all [empty? dir: copy/part target at head target index? pos dir: %./]
                    all [find [%. %..] pos: to file! pos insert tail pos #"/"]
                )
            ]
            reduce [dir pos]
        ]
        intern: funct [
            {Imports (internalize) words and their values from the lib into the user context.}
            data [block! any-word!] "Word or block of words to be added (deeply)"
        ] [
            index: 1 + length? usr: system/contexts/user
            data: bind/new :data usr
            resolve/only usr lib index
            :data
        ]
        load: funct [
            {Simple load of a file, URL, or string/binary - minimal boot version.}
            source [file! url! string! binary!]
            /header "Includes REBOL header object if present"
            /all "Load all values, including header (as block)"
        ] [
            if string? data: case [
                file? source [read source]
                url? source [read source]
                'else [source]
            ] [data: to binary! data]
            if binary? :data [
                data: transcode data
                hdr?: lib/all ['REBOL = first data block? second data]
                case [
                    header [
                        unless hdr? [cause-error 'syntax 'no-header source]
                        remove data
                        data/1: attempt [construct/with first data system/standard/header]
                    ]
                    all none
                    hdr? [remove/part data 2]
                ]
                data: intern data
                unless any [
                    all
                    header
                    1 <> length? data
                ] [data: first data]
            ]
            :data
        ]
        save:
        import:
        none
        probe: func [
            {Debug print a molded value and returns that same value.}
            value [any-type!]
        ] [
            print mold :value
            :value
        ]
        ??: func [
            {Debug print a word, path, or block of such, followed by its molded value.}
            'name "Word, path, and block to obtain values."
            /local out
        ] [
            case [
                any [
                    word? :name
                    path? :name
                ] [
                    print ajoin [name ": " mold name: get :name]
                ]
                block? :name [
                    out: make string! 50
                    foreach word name [
                        either any [
                            word? :word
                            path? :word
                        ] [
                            repend out [word ": " mold get word "  "]
                        ] [
                            repend out [mold word " "]
                        ]
                    ]
                    print out
                ]
                true [probe :name]
            ]
            :name
        ]
        boot-print: func [
            "Prints during boot when not quiet."
            data
        ] [
            unless system/options/quiet [print :data]
        ]
        loud-print: func [
            "Prints during boot when verbose."
            data
        ] [
            if system/options/flags/verbose [print :data]
        ]
        spec-of:
        body-of:
        words-of:
        values-of:
        types-of:
        title-of:
        none
        use [word title] [
            foreach name system/catalog/reflectors [
                word: make word! ajoin [name "-of"]
                word: bind/new word 'reflect
                title: ajoin ["Returns a copy of the " name " of a " switch/default name [
                        spec ["function or module"]
                        values ["object or module"]
                        types title ["function"]
                    ] ["function, object, or module"]]
                set word func
                reduce [title 'value]
                compose [reflect :value (to lit-word! name)]
            ]
        ]
        decode-url: none
        foreach [codec handler] system/codecs [
            if handle? handler [
                codec: set codec make object! [
                    entry: handler
                    title: form reduce ["Internal codec for" codec "media type"]
                    name: codec
                    type: 'image!
                    suffixes: select [
                        text [%.txt]
                        markup [%.html %.htm %.xml %.xsl %.wml %.sgml %.asp %.php %.cgi]
                        bmp [%.bmp]
                        gif [%.gif]
                        jpeg [%.jpg %.jpeg]
                        png [%.png]
                    ] codec
                ]
                append append system/options/file-types codec/suffixes codec/name
            ]
        ]
        append system/options/file-types switch/default fourth system/version [
            3 [[%.rx %.dll extension]]
            2 [[%.rx %.dylib %.so extension]]
            4 7 [[%.rx %.so extension]]
        ] [[%.rx extension]]
        internal!: make typeset! [
            end! unset! frame! handle!
        ]
        immediate!: make typeset! [
            none! logic! scalar! date! any-word! datatype! typeset! event!
        ]
        system/options/result-types: make typeset! [
            immediate! series! bitset! image! object! map! gob!
        ]
        any-block?: func [
            "Return TRUE if value is any type of block."
            value [any-type!]
        ] [find any-block! type? :value]
        any-string?: func [
            "Return TRUE if value is any type of string."
            value [any-type!]
        ] [find any-string! type? :value]
        any-function?: func [
            "Return TRUE if value is any type of function."
            value [any-type!]
        ] [find any-function! type? :value]
        any-word?: func [
            "Return TRUE if value is any type of word."
            value [any-type!]
        ] [find any-word! type? :value]
        any-path?: func [
            "Return TRUE if value is any type of path."
            value [any-type!]
        ] [find any-path! type? :value]
        any-object?: func [
            "Return TRUE if value is any type of object."
            value [any-type!]
        ] [find any-object! type? :value]
        number?: func [
            {Return TRUE if value is a number (integer or decimal).}
            value [any-type!]
        ] [find number! type? :value]
        series?: func [
            "Return TRUE if value is any type of series."
            value [any-type!]
        ] [find series! type? :value]
        scalar?: func [
            "Return TRUE if value is any type of scalar."
            value [any-type!]
        ] [find scalar! type? :value]
        true?: func [
            "Returns true if an expression can be used as true."
            val
        ] [not not :val]
        quote: func [
            "Returns the value passed to it without evaluation."
            :value [any-type!]
        ] [
            :value
        ]
    ] [
        native: none
        action: none
        do*: func [
            {SYS: Called by system for DO on datatypes that require special handling.}
            value [file! url! string!]
            /args {If value is a script, this will set its system/script/args}
            arg "Args passed to a script (normally a string)"
            /next {Do next expression only, return it, update block variable}
            var [word!] "Variable updated with new block position"
            /local data file spec dir hdr scr mod?
        ] [
            data: load/header/type value 'unbound
            hdr: first+ data
            mod?: 'module = select hdr 'type
            either all [string? value not mod?] [
                do-needs hdr
                if empty? data [if var [set var data] exit]
                intern data
                catch/quit either var [[do/next data var]] [data]
            ] [
                dir: none
                if all [file? value file: find/last/tail value slash] [
                    dir: what-dir
                    change-dir copy/part value file
                ]
                scr: system/script
                system/script: make system/standard/script [
                    title: select hdr 'title
                    header: hdr
                    parent: :scr
                    path: what-dir
                    args: :arg
                ]
                boot-print [
                    pick ["Module:" "Script:"] mod? mold select hdr 'title
                    "Version:" select hdr 'version
                    "Date:" select hdr 'date
                ]
                also
                either mod? [
                    spec: reduce [hdr data do-needs/no-user hdr]
                    also import catch/quit [make module! spec]
                    if var [set var tail data]
                ] [
                    do-needs hdr
                    intern data
                    catch/quit either var [[do/next data var]] [data]
                ]
                all [system/script: :scr dir change-dir dir]
            ]
        ]
        make-module*: func [
            "SYS: Called by system on MAKE of MODULE! datatype."
            spec [block!] "As [spec-block body-block opt-mixins-object]"
            /local body obj mixins hidden w
        ] [
            set [spec body mixins] spec
            if block? :spec [
                spec: attempt [construct/with :spec system/standard/header]
            ]
            assert/type [
                spec object!
                body block!
                mixins [object! none!]
                spec/name [word! none!]
                spec/type [word! none!]
                spec/version [tuple! none!]
                spec/options [block! none!]
            ]
            obj: make object! 7
            if find spec/options 'extension [
                append obj 'lib-base
            ]
            unless spec/type [spec/type: 'module]
            if find body 'export [
                unless block? select spec 'exports [repend spec ['exports make block! 10]]
                parse body [while [to 'export remove skip opt remove 'hidden opt [
                            set w any-word! (
                                unless find spec/exports w: to word! w [append spec/exports w]
                            ) |
                            set w block! (append spec/exports collect-words/ignore w spec/exports)
                        ]] to end]
            ]
            if block? select spec 'exports [bind/new spec/exports obj]
            hidden: none
            if find body 'hidden [
                hidden: make block! 10
                parse body [while [to 'hidden remove skip opt [
                            set w any-word! (
                                unless find select spec 'exports w: to word! w [append hidden w]
                            ) |
                            set w block! (append hidden collect-words/ignore w select spec 'exports)
                        ]] to end]
            ]
            if block? hidden [bind/new hidden obj]
            either find spec/options 'isolate [
                bind/new body obj
                if object? mixins [resolve obj mixins]
                resolve obj lib
            ] [
                bind/only/set body obj
                bind body lib
                if object? mixins [bind body mixins]
            ]
            bind body obj
            if block? hidden [protect/hide/words hidden]
            obj: to module! reduce [spec obj]
            do body
            obj
        ]
        boot-banner: ajoin ["REBOL 3.0 A" system/version/3 " " system/build newline]
        boot-help: "Boot-sys level - no extra features."
        boot-host: none
        boot-mezz: none
        boot-prot: none
        boot-exts: none
        export: func [
            {Low level export of values (e.g. functions) to lib.}
            words [block!] "Block of words (already defined in local context)"
        ] [
            foreach word words [repend lib [word get word]]
        ]
        assert-utf8: funct [
            {If binary data is UTF-8, returns it, else throws an error.}
            data [binary!]
        ] [
            unless find [0 8] tmp: utf? data [
                cause-error 'script 'no-decode ajoin ["UTF-" abs tmp]
            ]
            data
        ]
        make-port*: func [
            {SYS: Called by system on MAKE of PORT! port from a scheme.}
            spec [file! url! block! object! word! port!] "port specification"
            /local name scheme port
        ] [
            case [
                file? spec [
                    name: pick [dir file] dir? spec
                    spec: join [ref:] spec
                ]
                url? spec [
                    spec: repend decode-url spec [to set-word! 'ref spec]
                    name: select spec to set-word! 'scheme
                ]
                block? spec [
                    name: select spec to set-word! 'scheme
                ]
                object? spec [
                    name: get in spec 'scheme
                ]
                word? spec [
                    name: spec
                    spec: []
                ]
                port? spec [
                    name: port/scheme/name
                    spec: port/spec
                ]
                true [
                    return none
                ]
            ]
            unless all [
                word? name
                scheme: get in system/schemes name
            ] [cause-error 'access 'no-scheme name]
            port: make system/standard/port []
            port/spec: make any [scheme/spec system/standard/port-spec-head] spec
            port/spec/scheme: name
            port/scheme: scheme
            port/actor: get in scheme 'actor
            port/awake: any [get in port/spec 'awake :scheme/awake]
            unless port/spec/ref [port/spec/ref: spec]
            unless port/spec/title [port/spec/title: scheme/title]
            port: to port! port
            if in scheme 'init [scheme/init port]
            port
        ]
        *parse-url: make object! [
            digit: make bitset! "0123456789"
            digits: [1 5 digit]
            alpha-num: make bitset! [#"a" - #"z" #"A" - #"Z" #"0" - #"9"]
            scheme-char: insert copy alpha-num "+-."
            path-char: insert copy alpha-num {/=+-_.;:&$@%*',~?| []()"}
            user-char: insert copy alpha-num "=+-_.;&$%*,'#|"
            pass-char: complement make bitset! "^/ ^-@"
            s1: s2: none
            out: []
            emit: func ['w v] [reduce/into [to set-word! w if :v [to string! :v]] tail out]
            rules: [
                [
                    copy s1 some scheme-char ":" opt "//"
                    (reduce/into [to set-word! 'scheme to lit-word! to string! s1] tail out)
                    opt [
                        copy s1 some user-char
                        opt [#":" copy s2 to #"@" (emit pass s2)]
                        #"@" (emit user s1)
                    ]
                    opt [
                        copy s1 any user-char
                        opt [#":" copy s2 digits (compose/into [port-id: (to integer! s2)] tail out)]
                        (unless empty? s1 [attempt [s1: to tuple! s1] emit host s1])
                    ]
                ]
                opt [copy s1 some path-char (emit path s1)]
                opt [#"#" copy s1 some path-char (emit tag s1)]
            ]
            decode-url: func ["Decode a URL according to rules of sys/*parse-url." url] [
                --- {This function is bound in the context of sys/*parse-url.}
                out: make block! 8
                parse/all url rules
                out
            ]
        ]
        decode-url: none
        make-scheme: func [
            {INIT: Make a scheme from a specification and add it to the system.}
            def [block!] "Scheme specification"
            /with 'scheme "Scheme name to use as base"
            /local actor
        ] [
            with: either with [get in system/schemes scheme] [system/standard/scheme]
            unless with [cause-error 'access 'no-scheme scheme]
            def: make with def
            unless def/name [cause-error 'access 'no-scheme-name def]
            set-scheme def
            if block? :def/actor [
                actor: make object! (length? def/actor) / 4
                foreach [name func* args body] def/actor [
                    name: to word! name
                    repend actor [name func args body]
                ]
                def/actor: actor
            ]
            append system/schemes reduce [def/name def]
        ]
        init-schemes: func [
            "INIT: Init system native schemes and ports."
        ] [
            loud-print "Init schemes"
            sys/decode-url: lib/decode-url: :sys/*parse-url/decode-url
            system/schemes: make object! 10
            make-scheme [
                title: "System Port"
                name: 'system
                awake: func [
                    sport "System port (State block holds events)"
                    ports "Port list (Copy of block passed to WAIT)"
                    /local event port waked
                ] [
                    waked: sport/data
                    loop 8 [
                        unless event: take sport/state [break]
                        port: event/port
                        if wake-up port event [
                            unless find waked port [append waked port]
                        ]
                    ]
                    unless block? ports [return none]
                    forall ports [
                        if find waked first ports [return true]
                    ]
                    false
                ]
                init: func [port] [
                    port/data: copy []
                ]
            ]
            make-scheme [
                title: "Console Access"
                name: 'console
            ]
            make-scheme [
                title: "Callback Event Functions"
                name: 'callback
                awake: func [event] [
                    do-callback event
                    true
                ]
            ]
            make-scheme [
                title: "File Access"
                name: 'file
                info: system/standard/file-info
                init: func [port /local path] [
                    if url? port/spec/ref [
                        parse port/spec/ref [thru #":" 0 2 slash path:]
                        append port/spec compose [path: (to file! path)]
                    ]
                ]
            ]
            make-scheme/with [
                title: "File Directory Access"
                name: 'dir
            ] 'file
            make-scheme [
                title: "GUI Events"
                name: 'event
                awake: func [event] [
                    print ["Default GUI event/awake:" event/type]
                    true
                ]
            ]
            make-scheme [
                title: "DNS Lookup"
                name: 'dns
                spec: system/standard/port-spec-net
                awake: func [event] [print event/type true]
            ]
            make-scheme [
                title: "TCP Networking"
                name: 'tcp
                spec: system/standard/port-spec-net
                info: system/standard/net-info
                awake: func [event] [print ['TCP-event event/type] true]
            ]
            make-scheme [
                title: "Clipboard"
                name: 'clipboard
            ]
            system/ports/system: open [scheme: 'system]
            system/ports/input: open [scheme: 'console]
            system/ports/callback: open [scheme: 'callback]
            init-schemes: 'done
        ]
        decode: funct [
            {Decodes a series of bytes into the related datatype (e.g. image!).}
            type [word!] "Media type (jpeg, png, etc.)"
            data [binary!] "The data to decode"
        ] [
            unless all [
                cod: select system/codecs type
                data: do-codec cod/entry 'decode data
            ] [
                cause-error 'access 'no-codec type
            ]
            data
        ]
        encode: funct [
            {Encodes a datatype (e.g. image!) into a series of bytes.}
            type [word!] "Media type (jpeg, png, etc.)"
            data [image! binary! string!] "The data to encode"
            /options opts [block!] "Special encoding options"
        ] [
            unless all [
                cod: select system/codecs type
                data: do-codec cod/entry 'encode data
            ] [
                cause-error 'access 'no-codec type
            ]
            data
        ]
        encoding?: funct [
            {Returns the media codec name for given binary data. (identify)}
            data [binary!]
        ] [
            foreach [name codec] system/codecs [
                if do-codec codec/entry 'identify data [
                    return name
                ]
            ]
            none
        ]
        export [decode encode encoding?]
        intern: funct [
            {Imports (internalizes) words/values from the lib into the user context.}
            data [block! any-word!] "Word or block of words to be added (deeply)"
        ] [
            index: 1 + length? usr: system/contexts/user
            data: bind/new :data usr
            resolve/only usr lib index
            :data
        ]
        bind-lib: func [
            {Bind only the top words of the block to the lib context (used to load mezzanines).}
            block [block!]
        ] [
            bind/only/set block lib
            bind block lib
            block
        ]
        export-words: func [
            {Exports the words of a context into both the system lib and user contexts.}
            ctx [module! object!] "Module context"
            words [block! none!] "The exports words block of the module"
        ] [
            if words [
                resolve/extend/only lib ctx words
                resolve/extend/only system/contexts/user lib words
            ]
        ]
        mixin?: func [
            "Returns TRUE if module is a mixin with exports."
            mod [module! object!] "Module or spec header"
        ] [
            if module? mod [mod: spec-of mod]
            true? all [
                find select mod 'options 'private
                block? select mod 'exports
                not empty? select mod 'exports
            ]
        ]
        load-header: funct/with [
            {Loads script header object and body binary (not loaded).}
            source [binary! string!] "Source code (string! will be UTF-8 encoded)"
            /only {Only process header, don't decompress or checksum body}
            /required "Script header is required"
        ] [
            case/all [
                binary? source [tmp: assert-utf8 source]
                string? source [tmp: to binary! source]
                not data: script? tmp [
                    return either required ['no-header] [reduce [none tmp tail tmp]]
                ]
                set/any [key: rest:] transcode/only data none
                set/any [hdr: rest:] transcode/next/error rest none
                not block? :hdr [return 'no-header]
                not attempt [hdr: construct/with :hdr system/standard/header] [return 'bad-header]
                not any [block? :hdr/options none? :hdr/options] [return 'bad-header]
                not any [binary? :hdr/checksum none? :hdr/checksum] [return 'bad-checksum]
                find hdr/options 'content [repend hdr ['content data]]
                13 = rest/1 [rest: next rest]
                10 = rest/1 [rest: next rest]
                integer? tmp: select hdr 'length [end: skip rest tmp]
                not end [end: tail data]
                only [return reduce [hdr rest end]]
                sum: hdr/checksum none
                :key = 'rebol [
                    case [
                        find hdr/options 'compress [
                            rest: any [find rest non-ws rest]
                            unless rest: any [
                                attempt [decompress/part rest end]
                                attempt [decompress first transcode/next rest]
                            ] [return 'bad-compress]
                            if all [sum sum != checksum/secure rest] [return 'bad-checksum]
                        ]
                        all [sum sum != checksum/secure/part rest end] [return 'bad-checksum]
                    ]
                ]
                :key != 'rebol [
                    tmp: rest
                    rest: skip first set [data: end:] transcode/next data 2
                    case [
                        find hdr/options 'compress [
                            unless rest: attempt [decompress first rest] [return 'bad-compress]
                            if all [sum sum != checksum/secure rest] [return 'bad-checksum]
                        ]
                        all [sum sum != checksum/secure/part tmp back end] [return 'bad-checksum]
                    ]
                ]
            ]
            reduce [hdr rest end]
        ] [
            non-ws: make bitset! [not 1 - 32]
        ]
        load-ext-module: funct [
            {Loads an extension module from an extension object.}
            ext [object!] "Extension object (from LOAD-EXTENSION, modified)"
        ] [
            assert/type [ext/lib-base handle! ext/lib-boot binary!]
            if word? set [hdr: code: end:] load-header/required ext/lib-boot [
                cause-error 'syntax hdr ext
            ]
            loud-print ["Extension:" select hdr 'title]
            unless hdr/options [hdr/options: make block! 1]
            append hdr/options 'extension
            hdr/type: 'module
            ext/lib-boot: none
            tmp: body-of ext
            unless :ext/command [
                append tmp [
                    cmd-index: 0
                    command: func [
                        "Define a new command for an extension."
                        args [integer! block!]
                    ] [
                        make command! reduce [args self ++ cmd-index]
                    ]
                    protect/hide/words [cmd-index command]
                ]
            ]
            if all [not empty? end same? head code head end] [
                code: to block! copy/part code end
            ]
            unless block? code [code: to block! code]
            insert code tmp
            reduce [hdr code end]
        ]
        load-boot-exts: funct [
            "INIT: Load boot-based extensions."
        ] [
            loud-print "Loading boot extensions..."
            ext-objs: []
            foreach [spec caller] boot-exts [
                append ext-objs load-extension/dispatch spec caller
            ]
            foreach ext ext-objs [
                case/all [
                    word? set [hdr: code:] load-header/only/required ext/lib-boot [
                        cause-error 'syntax hdr ext
                    ]
                    not word? :hdr/name [hdr/name: none]
                    not any [hdr/name find hdr/options 'private] [
                        hdr/options: append any [hdr/options make block! 1] 'private
                    ]
                    delay: all [hdr/name find hdr/options 'delay] [mod: reduce [hdr ext]]
                    not delay [hdr: spec-of mod: make module! copy/part load-ext-module ext 2]
                    hdr/name [reduce/into [hdr/name mod if hdr/checksum [copy hdr/checksum]] system/modules]
                ]
                case [
                    not module? mod none
                    not block? select hdr 'exports none
                    empty? hdr/exports none
                    find hdr/options 'private [
                        resolve/extend/only system/contexts/user mod hdr/exports
                    ]
                    'else [export-words mod hdr/exports]
                ]
            ]
            set 'load-boot-exts 'done
        ]
        read-decode: funct [
            {Reads code/data from source or DLL, decodes it, returns result (binary, block, image,...).}
            source [file! url!] "Source or block of sources?"
            type [word! none!] "File type, or NONE for binary raw data"
        ] [
            either type = 'extension [
                data: load-extension source
            ] [
                data: read source
                if find system/options/file-types type [data: decode type :data]
            ]
            data
        ]
        load: funct [
            {Loads code or data from a file, URL, string, or binary.}
            source [file! url! string! binary! block!] "Source or block of sources"
            /header {Result includes REBOL header object (preempts /all)}
            /all "Load all values (does not evaluate REBOL header)"
            /type {Override default file-type; use NONE to always load as code}
            ftype [word! none!] "E.g. text, markup, jpeg, unbound, etc."
            /next "Removed - use TRANSCODE instead"
        ] [
            assert/type [local none!]
            case/all [
                next [
                    print "LOAD/next removed. Use TRANSCODE."
                    cause-error 'script 'no-refine [load next]
                ]
                header [all: none]
                block? source [
                    return map-each item source [apply :load [:item header all type ftype]]
                ]
                any [file? source url? source] [
                    sftype: file-type? source
                    ftype: case [
                        lib/all ['unbound = ftype 'extension = sftype] [sftype]
                        type [ftype]
                        'else [sftype]
                    ]
                    data: read-decode source ftype
                ]
                none? data [data: source]
                any [block? data not find [0 extension unbound] any [ftype 0]] [
                    return data
                ]
                not all [
                    set [hdr: data: end:] either object? data [load-ext-module data] [load-header data]
                    if word? hdr [cause-error 'syntax hdr source]
                ]
                not any [empty? end not same? head data head end] [
                    data: to block! copy/part data end
                ]
                not block? data [data: to block! data]
                header [insert data hdr]
                not any [
                    'unbound = ftype
                    'module = select hdr 'type
                    find select hdr 'options 'unbound
                ] [data: intern data]
                not any [
                    all
                    header
                    empty? data
                    1 < length? data
                ] [data: first data]
            ]
            :data
        ]
        do-needs: funct [
            {Process the NEEDS block of a program header. Returns unapplied mixins.}
            needs [block! object! tuple! none!] "Needs block, header or version"
            /no-share {Force module to use its own non-shared global namespace}
            /no-lib "Don't export to the runtime library"
            /no-user "Don't export to the user context (mixins returned)"
            /block {Return all the imported modules in a block, instead}
        ] [
            case/all [
                object? needs [set/any 'needs select needs 'needs]
                none? needs [return none]
                tuple? :needs [
                    case [
                        needs > system/version [cause-error 'syntax 'needs reduce ['core needs]]
                        3 >= length? needs none
                        (needs and 0.0.0.255.255) != (system/version and 0.0.0.255.255) [
                            cause-error 'syntax 'needs reduce ['core needs]
                        ]
                    ]
                    return none
                ]
                not block? :needs [needs: reduce [:needs]]
                empty? needs [return none]
            ]
            mods: make block! length? needs
            name: vers: hash: none
            unless parse needs [
                here:
                opt [opt 'core set vers tuple! (do-needs vers)]
                any [
                    here:
                    set name [word! | file! | url!]
                    set vers opt tuple!
                    set hash opt binary!
                    (repend mods [name vers hash])
                ]
            ] [
                cause-error 'script 'invalid-arg here
            ]
            if all [no-user not block] [mixins: make object! 0]
            mods: map-each [name vers hash] mods [
                mod: apply :import [name true? vers vers true? hash hash no-share no-lib no-user]
                if all [mixins mixin? mod] [resolve/extend/only mixins mod select spec-of mod 'exports]
                mod
            ]
            case [
                block [mods]
                not empty? mixins [mixins]
            ]
        ]
        load-module: funct [
            {Loads a module (from a file, URL, binary, etc.) and inserts it into the system module list.}
            source [word! file! url! string! binary! module! block!] "Source or block of sources"
            /version ver [tuple!] "Module must be this version or greater"
            /check sum [binary!] "Match checksum (must be set in header)"
            /no-share {Force module to use its own non-shared global namespace}
            /no-lib "Don't export to the runtime library (lib)"
            /import {Do module import now, overriding /delay and 'delay option}
            /as name [word!] "New name for the module (not valid for reloads)"
            /delay {Delay module init until later (ignored if source is module!)}
        ] [
            assert/type [local none!]
            if import [delay: none]
            case [
                word? source [
                    case/all [
                        as [cause-error 'script 'bad-refine /as]
                        not tmp: find/skip system/modules source 3 [return none]
                        set [mod: modsum:] next tmp none
                        all [not version not check any [delay module? :mod]] [
                            return reduce [source if module? :mod [mod]]
                        ]
                    ]
                ]
                binary? source [data: source]
                string? source [data: to binary! source]
                any [file? source url? source] [
                    tmp: file-type? source
                    case [
                        not tmp [unless attempt [data: read source] [return none]]
                        tmp = 'extension [
                            unless attempt [ext: load-extension source] [return none]
                            data: ext/lib-boot
                            case [
                                import [set [hdr: code: end:] load-ext-module ext]
                                word? set [hdr: tmp: end:] load-header/only/required data [
                                    cause-error 'syntax hdr source
                                ]
                                not any [delay delay: true? find hdr/options 'delay] [
                                    set [hdr: code: end:] load-ext-module ext
                                ]
                            ]
                            if hdr/checksum [modsum: copy hdr/checksum]
                        ]
                        'else [cause-error 'access 'no-script source]
                    ]
                ]
                module? source [
                    if tmp: find/skip next system/modules mod: source 3 [
                        if as [cause-error 'script 'bad-refine /as]
                        if all [
                            not version not check same? mod select system/modules pick tmp 0
                        ] [return copy/part back tmp 2]
                        set [mod: modsum:] tmp
                    ]
                ]
                block? source [
                    if any [version check as] [cause-error 'script 'bad-refines none]
                    data: make block! length? source
                    unless parse source [
                        any [
                            tmp:
                            set name opt set-word!
                            set mod [word! | module! | file! | url! | string! | binary!]
                            set ver opt tuple!
                            set sum opt binary!
                            (repend data [mod ver sum if name [to word! name]])
                        ]
                    ] [cause-error 'script 'invalid-arg tmp]
                    return map-each [mod ver sum name] source [
                        apply :load-module [
                            mod true? ver ver true? sum sum no-share no-lib import true? name name delay
                        ]
                    ]
                ]
            ]
            case/all [
                module? mod [
                    delay: no-share: none hdr: spec-of mod
                    assert/type [hdr/options [block! none!]]
                ]
                block? mod [set/any [hdr: code:] mod]
                not hdr [
                    set [hdr: code: end:] load-header/required data
                    case [
                        word? hdr [cause-error 'syntax hdr source]
                        import none
                        not delay [delay: true? find hdr/options 'delay]
                    ]
                    if hdr/checksum [modsum: copy hdr/checksum]
                ]
                no-share [hdr/options: append any [hdr/options make block! 1] 'isolate]
                name [hdr/name: name]
                not name [set/any 'name :hdr/name]
                all [not no-lib not word? :name] [
                    no-lib: true
                    unless find hdr/options 'private [
                        hdr/options: append any [hdr/options make block! 1] 'private
                    ]
                ]
                not tuple? set/any 'modver :hdr/version [modver: 0.0.0]
                all [
                    override?: not no-lib
                    set [name0: mod0: sum0:] pos: find/skip system/modules name 3
                ] [
                    case/all [
                        module? :mod0 [hdr0: spec-of mod0]
                        block? :mod0 [hdr0: first mod0]
                        not tuple? set/any 'ver0 :hdr0/version [ver0: 0.0.0]
                    ]
                    case [
                        same? mod mod0 [override?: not any [delay module? mod]]
                        module? mod0 [
                            pos: none
                            if ver0 >= modver [
                                mod: mod0 hdr: hdr0 code: none
                                modver: ver0 modsum: sum0
                                override?: false
                            ]
                        ]
                        ver0 > modver [
                            mod: none set [hdr code] mod0
                            modver: ver0 modsum: sum0
                            ext: if object? code [code]
                            override?: not delay
                        ]
                    ]
                ]
                not module? mod [mod: none]
                all [check sum !== modsum] [cause-error 'access 'invalid-check module]
                all [version ver > modver] [cause-error 'syntax 'needs reduce [name ver]]
                all [not override? any [mod delay]] [return reduce [name mod end]]
                delay [mod: reduce [hdr either object? ext [ext] [code]]]
                not mod [
                    case/all [
                        find hdr/options 'isolate [no-share: true]
                        object? code [
                            set [hdr: code:] load-ext-module code
                            hdr/name: name
                            if all [no-share not find hdr/options 'isolate] [
                                hdr/options: append any [hdr/options make block! 1] 'isolate
                            ]
                        ]
                        all [not empty? end same? head code head end] [
                            code: to block! copy/part code end
                        ]
                        binary? code [code: to block! code]
                    ]
                    assert/type [hdr object! code block!]
                    mod: reduce [hdr code do-needs/no-user hdr]
                    mod: catch/quit [make module! mod]
                ]
                all [not no-lib override?] [
                    case/all [
                        pos [pos/2: mod pos/3: modsum]
                        not pos [reduce/into [name mod modsum] system/modules]
                        all [module? mod not mixin? hdr block? select hdr 'exports] [
                            resolve/extend/only lib mod hdr/exports
                        ]
                    ]
                ]
            ]
            reduce [name if module? mod [mod] end]
        ]
        import: funct [
            {Imports a module; locate, load, make, and setup its bindings.}
            module [word! file! url! string! binary! module! block!]
            /version ver [tuple!] "Module must be this version or greater"
            /check sum [binary!] "Match checksum (must be set in header)"
            /no-share {Force module to use its own non-shared global namespace}
            /no-lib "Don't export to the runtime library (lib)"
            /no-user "Don't export to the user context"
        ] [
            if block? module [
                assert [not version not check]
                return apply :do-needs [module no-share no-lib no-user /block]
            ]
            set [name: mod:] apply :load-module [module version ver check sum no-share no-lib /import]
            case [
                mod none
                word? module [
                    file: append to file! module system/options/default-suffix
                    foreach path system/options/module-paths [
                        if set [name: mod:] apply :load-module [
                            path/:file version ver check sum no-share no-lib /import /as module
                        ] [break]
                    ]
                ]
                any [file? module url? module] [
                    cause-error 'access 'cannot-open reduce [module "not found or not valid"]
                ]
            ]
            unless mod [cause-error 'access 'cannot-open reduce [module "module not found"]]
            case [
                no-user none
                not block? exports: select hdr: spec-of mod 'exports none
                empty? exports none
                any [no-lib find select hdr 'options 'private] [
                    resolve/extend/only system/contexts/user mod exports
                ]
                not no-lib [resolve/only system/contexts/user lib exports]
            ]
            mod
        ]
        export [load import]
        start: func [
            {INIT: Completes the boot sequence. Loads extras, handles args, security, scripts.}
            /local file tmp script-path script-args code
        ] bind [
            loud-print ["Starting... boot level:" boot-level]
            boot-level: any [boot-level 'full]
            start: 'done
            init-schemes
            if all [
                not quiet
                any [flags/verbose flags/usage flags/help]
            ] [
                boot-print boot-banner
            ]
            if any [do-arg script] [quiet: true]
            path: dirize any [path home]
            home: dirize home
            home: file: first split-path boot
            if file? script [
                script-path: split-path script
                case [
                    slash = first first script-path []
                    %./ = first script-path [script-path/1: path]
                    'else [insert first script-path path]
                ]
            ]
            script-args: args
            foreach [opt act] [
                args [parse args ""]
                do-arg block!
                debug block!
                secure word!
                import [to-rebol-file import]
                version tuple!
            ] [
                set opt attempt either block? act [act] [
                    [all [get opt to get act get opt]]
                ]
            ]
            if flags/verbose [print self]
            if boot-level [
                load-boot-exts
                loud-print "Init mezz plus..."
                do bind-lib boot-mezz
                boot-mezz: 'done
                foreach [spec body] boot-prot [module spec body]
                if flags/help [lib/usage quiet: true]
                if any [
                    flags/verbose
                    not any [quiet script do-arg]
                ] [
                    boot-print boot-banner
                ]
                if boot-host [
                    loud-print "Init host code..."
                    do load boot-host
                    boot-host: none
                ]
            ]
            lib/secure (case [
                    flags/secure [secure]
                    flags/secure-min ['allow]
                    flags/secure-max ['quit]
                    file? script [compose [file throw (file) [allow read] (first script-path) allow]]
                    'else [compose [file throw (file) [allow read] %. allow]]
                ])
            loud-print ["Checking for rebol.r file in" file]
            if exists? file/rebol.r [do file/rebol.r]
            tmp: make object! 320
            append tmp reduce ['system :system]
            system/contexts/user: tmp
            boot-print ""
            if import [lib/import import]
            if do-arg [
                do intern do-arg
                unless script [quit/now]
            ]
            either file? script [
                assert/type [script-path [block!] script-path/1 [file!] script-path/2 [file!]]
                change-dir first script-path
                either exists? second script-path [
                    boot-print ["Evaluating:" script]
                    code: load/header/type second script-path 'unbound
                    system/script: make system/standard/script [
                        title: select first code 'title
                        header: first code
                        parent: none
                        path: what-dir
                        args: script-args
                    ]
                    either 'module = select first code 'type [
                        code: reduce [first+ code code]
                        if object? tmp: do-needs/no-user first code [append code tmp]
                        import make module! code
                    ] [
                        do-needs first+ code
                        do intern code
                    ]
                    if flags/halt [lib/halt]
                ] [
                    cause-error 'access 'no-script script
                ]
            ] [
                boot-print boot-help
            ]
            exit
        ] system/options
    ] [
        to-logic: to-integer: to-decimal: to-percent: to-money: to-char: to-pair:
        to-tuple: to-time: to-date: to-binary: to-string: to-file: to-email: to-url: to-tag:
        to-bitset: to-image: to-vector: to-block: to-paren:
        to-path: to-set-path: to-get-path: to-lit-path: to-map: to-datatype: to-typeset:
        to-word: to-set-word: to-get-word: to-lit-word: to-refinement: to-issue:
        to-command: to-closure: to-function: to-object: to-module: to-error: to-port: to-gob:
        to-event:
        none
        use [word] [
            foreach type system/catalog/datatypes [
                if in lib word: make word! head remove back tail ajoin ["to-" type] [
                    set in lib :word func either string? first spec-of :make [
                        reduce [reform ["Converts to" form type "value."] 'value]
                    ] [
                        [value]
                    ] compose [to (type) :value]
                ]
            ]
        ]
        closure: func [
            "Defines a closure function."
            spec [block!] {Help string (opt) followed by arg words (and opt type and string)}
            body [block!] "The body block of the function"
        ] [
            make closure! copy/deep reduce [spec body]
        ]
        function: func [
            "Defines a user function with local words."
            spec [block!] {Optional help info followed by arg words (and optional type and string)}
            vars [block!] "List of words that are local to the function"
            body [block!] "The body block of the function"
        ] [
            make function! copy/deep reduce [compose [(spec) /local (vars)] body]
        ]
        has: func [
            {A shortcut to define a function that has local variables but no arguments.}
            vars [block!] "List of words that are local to the function"
            body [block!] "The body block of the function"
        ] [
            make function! reduce [head insert copy/deep vars /local copy/deep body]
        ]
        context: func [
            "Defines a unique object."
            blk [block!] "Object words and values (modified)."
        ] [
            make object! blk
        ]
        map: func [
            "Make a map value (hashed associative block)."
            val
        ] [
            make map! :val
        ]
        task: func [
            "Creates a task."
            spec [block!] "Name or spec block"
            body [block!] "The body block of the task"
        ] [
            make task! copy/deep reduce [spec body]
        ]
        dt: delta-time: funct [
            {Delta-time - returns the time it takes to evaluate the block.}
            block [block!]
        ] [
            start: stats/timer
            do block
            stats/timer - start
        ]
        dp: delta-profile: func [
            "Delta-profile of running a specific block."
            block [block!]
            /local start end
        ] [
            start: values-of stats/profile
            do block
            end: values-of stats/profile
            foreach num start [
                change end end/1 - num
                end: next end
            ]
            start: make system/standard/stats []
            set start head end
            start
        ]
        speed?: funct [
            {Returns approximate speed benchmarks [eval cpu memory file-io].}
            /no-io "Skip the I/O test"
            /times "Show time for each test"
        ] [
            result: copy []
            foreach block [
                [
                    loop 100000 [
                        x: 1 * index? back next "x"
                        x: 1 * index? back next "x"
                        x: 1 * index? back next "x"
                        x: 1 * index? back next "x"
                    ]
                    calc: [100000 / secs / 100]
                ] [
                    tmp: make binary! 500000
                    insert/dup tmp "abcdefghij" 50000
                    loop 10 [
                        random tmp
                        decompress compress tmp
                    ]
                    calc: [(length? tmp) * 10 / secs / 1900]
                ] [
                    repeat n 40 [
                        change/dup tmp to-char n 500000
                    ]
                    calc: [(length? tmp) * 40 / secs / 1024 / 1024]
                ] [
                    unless no-io [
                        write file: %tmp-junk.txt ""
                        tmp: make string! 32000 * 5
                        insert/dup tmp "test^/" 32000
                        loop 100 [
                            write file tmp
                            read file
                        ]
                        delete file
                        calc: [(length? tmp) * 100 * 2 / secs / 1024 / 1024]
                    ]
                ]
            ] [
                secs: now/precise
                calc: 0
                recycle
                do block
                secs: to decimal! difference now/precise secs
                append result to integer! do calc
                if times [append result secs]
            ]
            result
        ]
        launch: func [
            {Runs a script as a separate process; return immediately.}
            script [file! string! none!] "The name of the script"
            /args arg [string! block! none!] "Arguments to the script"
            /wait "Wait for the process to terminate"
            /local exe
        ] [
            if file? script [script: to-local-file clean-path script]
            exe: to-local-file system/options/boot
            args: to-string reduce [{"} exe {" "} script {" }]
            if arg [append args arg]
            either wait [call/wait args] [call args]
        ]
        mold64: funct [
            "Temporary function to mold binary base 64."
            data
        ] [
            base: system/options/binary-base
            system/options/binary-base: 64
            data: mold :data
            system/options/binary-base: :base
            data
        ]
        save: funct [
            {Saves a value, block, or other data to a file, URL, binary, or string.}
            where [file! url! binary! string! none!] "Where to save (suffix determines encoding)"
            value "Value(s) to save"
            /header {Provide a REBOL header block (or output non-code datatypes)}
            header-data [block! object! logic!] "Header block, object, or TRUE (header is in value)"
            /all "Save in serialized format"
            /length {Save the length of the script content in the header}
            /compress "Save in a compressed format or not"
            method [logic! word!] {true = compressed, false = not, 'script = encoded string}
        ] [
            if lib/all [
                not header
                any [file? where url? where]
                type: file-type? where
            ] [
                return write where encode type :value
            ]
            if any [length method] [
                header: true
                header-data: any [header-data []]
            ]
            if header-data [
                if header-data = true [
                    header-data: any [
                        lib/all [
                            block? :value
                            first+ value
                        ]
                        []
                    ]
                ]
                header-data: either object? :header-data [
                    trim :header-data
                ] [
                    construct :header-data
                ]
                if compress [
                    case [
                        not method [remove find select header-data 'options 'compress]
                        not block? select header-data 'options [
                            repend header-data ['options copy [compress]]
                        ]
                        not find header-data/options 'compress [
                            append header-data/options 'compress
                        ]
                    ]
                ]
                if length [
                    append header-data [length: true]
                ]
                unless compress: true? find select header-data 'options 'compress [method: none]
                length: true? select header-data 'length
                header-data: body-of header-data
            ]
            data: either all [mold/all/only :value] [mold/only :value]
            append data newline
            case/all [
                tmp: find header-data 'checksum [change next tmp checksum/secure data: to-binary data]
                compress [data: lib/compress data]
                method = 'script [data: mold64 data]
                not binary? data [data: to-binary data]
                length [change find/tail header-data 'length length? data]
                header-data [insert data ajoin ['REBOL #" " mold header-data newline]]
            ]
            case [
                file? where [write where data]
                url? where [write where data]
                none? where [data]
                'else [insert tail where data]
            ]
        ]
        empty?: make :tail? [
            [
                {Returns TRUE if empty or NONE, or for series if index is at or beyond its tail.}
                series [series! object! gob! port! bitset! map! none!]
            ]
        ]
        offset?: func [
            "Returns the offset between two series positions."
            series1 [series!]
            series2 [series!]
        ] [
            subtract index? series2 index? series1
        ]
        found?: func [
            "Returns TRUE if value is not NONE."
            value
        ] [
            not none? :value
        ]
        last?: single?: func [
            "Returns TRUE if the series length is 1."
            series [series! port! map! tuple! bitset! object! gob! any-word!]
        ] [
            1 = length? series
        ]
        extend: func [
            {Extend an object, map, or block type with word and value pair.}
            obj [object! map! block! paren!] "object to extend (modified)"
            word [any-word!]
            val
        ] [
            if :val [append obj reduce [to-set-word word :val]]
            :val
        ]
        rejoin: func [
            "Reduces and joins a block of values."
            block [block!] "Values to reduce and join"
        ] [
            if empty? block: reduce block [return block]
            append either series? first block [copy first block] [
                form first block
            ] next block
        ]
        remold: func [
            {Reduces and converts a value to a REBOL-readable string.}
            value "The value to reduce and mold"
            /only {For a block value, mold only its contents, no outer []}
            /all "Mold in serialized format"
            /flat "No indentation"
        ] [
            apply :mold [reduce :value only all flat]
        ]
        charset: func [
            "Makes a bitset of chars for the parse function."
            chars [string! block! binary! char! integer!]
            /length "Preallocate this many bits"
            len [integer!] "Must be > 0"
        ] [
            either length [append make bitset! len chars] [make bitset! chars]
        ]
        array: func [
            "Makes and initializes a series of a given size."
            size [integer! block!] "Size or block of sizes for each dimension"
            /initial "Specify an initial value for all elements"
            value {Initial value (will be called each time if a function)}
            /local block rest
        ] [
            if block? size [
                if tail? rest: next size [rest: none]
                unless integer? set/any 'size first size [
                    cause-error 'script 'expect-arg reduce ['array 'size type? :size]
                ]
            ]
            block: make block! size
            case [
                block? rest [
                    loop size [block: insert/only block array/initial rest :value]
                ]
                series? :value [
                    loop size [block: insert/only block copy/deep value]
                ]
                any-function? :value [
                    loop size [block: insert/only block value]
                ]
                insert/dup block value size
            ]
            head block
        ]
        replace: func [
            {Replaces a search value with the replace value within the target series.}
            target [series!] "Series to replace within (modified)"
            search "Value to be replaced (converted if necessary)"
            replace {Value to replace with (called each time if a function)}
            /all "Replace all occurrences"
            /case "Case-sensitive replacement"
            /tail "Return target after the last replacement position"
            /local save-target len value pos do-break
        ] [
            save-target: target
            len: lib/case [
                bitset? :search 1
                any-string? target [
                    if any [not any-string? :search tag? :search] [search: form :search]
                    length? :search
                ]
                binary? target [
                    unless binary? :search [search: to-binary :search]
                    length? :search
                ]
                any-block? :search [length? :search]
                true 1
            ]
            do-break: unless all [:break]
            while pick [
                [pos: find target :search]
                [pos: find/case target :search]
            ] not case [
                (value: replace pos)
                target: change/part pos :value len
                do-break
            ]
            either tail [target] [save-target]
        ]
        reword: func [
            {Make a string or binary based on a template and substitution values.}
            source [any-string! binary!] "Template series with escape sequences"
            values [map! object! block!] "Keyword literals and value expressions"
            /case "Characters are case-sensitive"
            /only {Use values as-is, do not reduce the block, insert block values}
            /escape {Choose your own escape char(s) or [begin end] delimiters}
            char [char! any-string! binary! block! none!] {Default "$"}
            /into {Insert into a buffer instead (returns position after insert)}
            output [any-string! binary!] "The buffer series (modified)"
            /local char-end vals word wtype cword out fout rule a b w v
        ] [
            assert/type [local none!]
            unless into [output: make source length? source]
            wtype: lib/case [case binary! tag? source string! 'else type? source]
            lib/case/all [
                not escape [char: "$"]
                block? char [
                    rule: [char! | any-string! | binary!]
                    unless parse c: char [set char rule set char-end opt rule] [
                        cause-error 'script 'invalid-arg reduce [c]
                    ]
                ]
                char? char [char: to wtype char]
                char? char-end [char-end: to wtype char-end]
            ]
            lib/case [
                all [
                    map? values
                    empty? char-end
                    foreach [w v] values [
                        if any [unset? :v wtype <> type? :w] [break/return false]
                        true
                    ]
                ] [vals: values]
                all [
                    vals: make map! length? values
                    not only block? values
                ] [
                    while [not tail? values] [
                        w: first+ values
                        set/any 'v do/next values 'values
                        if any [set-word? :w lit-word? :w] [w: to word! :w]
                        lib/case [
                            wtype = type? :w none
                            wtype <> binary! [w: to wtype :w]
                            any-string? :w [w: to binary! :w]
                            'else [w: to binary! to string! :w]
                        ]
                        unless empty? w [
                            unless empty? char-end [w: append copy w char-end]
                            poke vals w unless unset? :v [:v]
                        ]
                    ]
                ]
                'else [
                    foreach [w v] values [
                        if any [set-word? :w lit-word? :w] [w: to word! :w]
                        lib/case [
                            wtype = type? :w none
                            wtype <> binary! [w: to wtype :w]
                            any-string? :w [w: to binary! :w]
                            'else [w: to binary! to string! :w]
                        ]
                        unless empty? w [
                            unless empty? char-end [w: append copy w char-end]
                            poke vals w unless unset? :v [:v]
                        ]
                    ]
                ]
            ]
            word: make block! 2 * length? vals
            foreach w vals [word: reduce/into [w '|] word]
            word: head remove back word
            cword: pick [(w: to wtype w)] wtype <> type? source
            set/any [out: fout:] pick [
                [
                    (output: insert output to string! copy/part a b)
                    (output: insert output to string! a)
                ] [
                    (output: insert/part output a b)
                    (output: insert output a)
                ]
            ] or~ tag? source and~ binary? source not binary? output
            escape: [
                copy w word cword out (
                    output: insert output lib/case [
                        block? v: select vals w [either only [v] :v]
                        any-function? :v [apply :v [:b]]
                        'else :v
                    ]
                ) a:
            ]
            rule: either empty? char [
                [a: any [to word b: [escape | skip]] to end fout]
            ] [
                if wtype <> type? char [char: to wtype char]
                [a: any [to char b: char [escape | none]] to end fout]
            ]
            either case [parse/case source rule] [parse source rule]
            either into [output] [head output]
        ]
        move: func [
            "Move a value or span of values in a series."
            source [series!] "Source series (modified)"
            offset [integer!] "Offset to move by, or index to move to"
            /part "Move part of a series"
            length [integer!] "The length of the part to move"
            /skip "Treat the series as records of fixed size"
            size [integer!] "Size of each record"
            /to {Move to an index relative to the head of the series}
        ] [
            unless length [length: 1]
            if skip [
                if 1 > size [cause-error 'script 'out-of-range size]
                offset: either to [offset - 1 * size + 1] [offset * size]
                length: length * size
            ]
            part: take/part source length
            insert either to [at head source offset] [
                lib/skip source offset
            ] part
        ]
        extract: func [
            {Extracts a value from a series at regular intervals.}
            series [series!]
            width [integer!] "Size of each entry (the skip)"
            /index "Extract from an offset position"
            pos "The position(s)" [number! logic! block!]
            /default "Use a default value instead of none"
            value {The value to use (will be called each time if a function)}
            /into {Insert into a buffer instead (returns position after insert)}
            output [series!] "The buffer series (modified)"
            /local len val
        ] [
            if zero? width [return any [output make series 0]]
            len: either positive? width [
                divide length? series width
            ] [
                divide index? series negate width
            ]
            unless index [pos: 1]
            either block? pos [
                unless parse pos [some [number! | logic!]] [cause-error 'Script 'invalid-arg reduce [pos]]
                unless output [output: make series len * length? pos]
                if all [not default any-string? output] [value: copy ""]
                forskip series width [forall pos [
                        if none? set/any 'val pick series pos/1 [set/any 'val value]
                        output: insert/only output :val
                    ]]
            ] [
                unless output [output: make series len]
                if all [not default any-string? output] [value: copy ""]
                forskip series width [
                    if none? set/any 'val pick series pos [set/any 'val value]
                    output: insert/only output :val
                ]
            ]
            either into [output] [head output]
        ]
        alter: func [
            {Append value if not found, else remove it; returns true if added.}
            series [series! port! bitset!] "(modified)"
            value
            /case "Case-sensitive comparison"
        ] [
            if bitset? series [
                return either find series :value [
                    remove/part series :value false
                ] [
                    append series :value true
                ]
            ]
            found? unless remove (
                either case [find/case series :value] [find series :value]
            ) [append series :value]
        ]
        collect: func [
            {Evaluates a block, storing values via KEEP function, and returns block of collected values.}
            body [block!] "Block to evaluate"
            /into {Insert into a buffer instead (returns position after insert)}
            output [series!] "The buffer series (modified)"
        ] [
            unless output [output: make block! 16]
            do func [keep] body func [value [any-type!] /only] [
                output: apply :insert [output :value none none only]
                :value
            ]
            either into [output] [head output]
        ]
        format: funct [
            "Format a string according to the format dialect."
            rules {A block in the format dialect. E.g. [10 -10 #"-" 4]}
            values
            /pad p
        ] [
            p: any [p #" "]
            unless block? :rules [rules: reduce [:rules]]
            unless block? :values [values: reduce [:values]]
            val: 0
            foreach rule rules [
                if word? :rule [rule: get rule]
                val: val + switch/default type?/word :rule [
                    integer! [abs rule]
                    string! [length? rule]
                    char! [1]
                ] [0]
            ]
            out: make string! val
            insert/dup out p val
            foreach rule rules [
                if word? :rule [rule: get rule]
                switch type?/word :rule [
                    integer! [
                        pad: rule
                        val: form first+ values
                        clear at val 1 + abs rule
                        if negative? rule [
                            pad: rule + length? val
                            if negative? pad [out: skip out negate pad]
                            pad: length? val
                        ]
                        change out :val
                        out: skip out pad
                    ]
                    string! [out: change out rule]
                    char! [out: change out rule]
                ]
            ]
            if not tail? values [append out values]
            head out
        ]
        printf: func [
            "Formatted print."
            fmt "Format"
            val "Value or block of values"
        ] [
            print format :fmt :val
        ]
        split: func [
            {Split a series into pieces; fixed or variable size, fixed number, or at delimiters}
            series [series!] "The series to split"
            dlm [block! integer! char! bitset! any-string!] "Split size, delimiter(s), or rule(s)."
            /into {If dlm is an integer, split into n pieces, rather than pieces of length n.}
            /local size count mk1 mk2
        ] [
            either all [block? dlm parse dlm [some integer!]] [
                map-each len dlm [
                    either positive? len [
                        copy/part series series: skip series len
                    ] [
                        series: skip series negate len
                        ()
                    ]
                ]
            ] [
                size: dlm
                collect [
                    parse/all series case [
                        all [integer? size into] [
                            if size < 1 [cause-error 'Script 'invalid-arg size]
                            count: size - 1
                            size: round/down divide length? series size
                            [
                                count [copy series size skip (keep/only series)]
                                copy series to end (keep/only series)
                            ]
                        ]
                        integer? dlm [
                            if size < 1 [cause-error 'Script 'invalid-arg size]
                            [any [copy series 1 size skip (keep/only series)]]
                        ]
                        'else [
                            [any [mk1: [to dlm mk2: dlm | to end mk2:] (keep copy/part mk1 mk2)]]
                        ]
                    ]
                ]
            ]
        ]
        find-all: funct [
            {Find all occurrences of the value within the series (allows modification).}
            'series [word!] "Variable for block, string, or other series"
            value
            body [block!] "Evaluated for each occurence"
        ] [
            assert [series? orig: get series]
            while [any [set series find get series :value (set series orig false)]] [
                do body
                ++ (series)
            ]
        ]
        clean-path: func [
            {Returns new directory path with //, . and .. processed.}
            file [file! url! string!]
            /only "Do not prepend current directory"
            /dir "Add a trailing / if missing"
            /local out cnt f
        ] [
            case [
                any [only not file? file] [file: copy file]
                #"/" = first file [
                    ++ file
                    out: next what-dir
                    while [
                        all [
                            #"/" = first file
                            f: find/tail out #"/"
                        ]
                    ] [
                        ++ file
                        out: f
                    ]
                    file: append clear out file
                ]
                file: append what-dir file
            ]
            if all [dir not dir? file] [append file #"/"]
            out: make file length? file
            cnt: 0
            parse/all reverse file [
                some [
                    "../" (++ cnt)
                    | "./"
                    | #"/" (if any [not file? file #"/" <> last out] [append out #"/"])
                    | copy f [to #"/" | to end] (
                        either cnt > 0 [
                            -- cnt
                        ] [
                            unless find ["" "." ".."] to string! f [append out f]
                        ]
                    )
                ]
            ]
            if all [#"/" = last out #"/" <> last file] [remove back tail out]
            reverse out
        ]
        input: funct [
            {Inputs a string from the console. New-line character is removed.}
        ] [
            if any [
                not port? system/ports/input
                not open? system/ports/input
            ] [
                system/ports/input: open [scheme: 'console]
            ]
            line: to-string read system/ports/input
            trim/with line newline
            line
        ]
        ask: func [
            "Ask the user for input."
            question [series!] "Prompt to user"
            /hide "mask input with *"
        ] [
            prin question
            trim either hide [input/hide] [input]
        ]
        confirm: func [
            "Confirms a user choice."
            question [series!] "Prompt to user"
            /with choices [string! block!]
            /local response
        ] [
            if all [block? choices 2 < length? choices] [
                cause-error 'script 'invalid-arg mold choices
            ]
            response: ask question
            unless with [choices: [["y" "yes"] ["n" "no"]]]
            case [
                empty? choices [true]
                string? choices [if find/match response choices [true]]
                2 > length? choices [if find/match response first choices [true]]
                find first choices response [true]
                find second choices response [false]
            ]
        ]
        list-dir: func [
            "Print contents of a directory (ls)."
            'path [file! word! path! string! unset!] {Accepts %file, :variables, and just words (as dirs)}
            /l "Line of info format"
            /f "Files only"
            /d "Dirs only"
            /r "Recursive"
            /i indent
            /local files save-dir info
        ] [
            save-dir: what-dir
            switch type?/word :path [
                unset! []
                file! [change-dir path]
                string! [change-dir to-rebol-file path]
                word! path! [change-dir to-file path]
            ]
            if r [l: true]
            unless l [l: make string! 62]
            unless indent [indent: ""]
            files: attempt [read %./]
            if not files [print ["Not found:" :path] change-dir save-dir exit]
            foreach file files [
                if any [
                    all [f dir? file]
                    all [d not dir? file]
                ] [continue]
                either string? l [
                    append l file
                    append/dup l #" " 15 - remainder length? l 15
                    if greater? length? l 60 [print l clear l]
                ] [
                    info: get query file
                    change info second split-path info/1
                    printf [indent 16 -8 #" " 24 #" " 6] info
                    if all [r dir? file] [
                        list-dir/l/r/i :file join indent "    "
                    ]
                ]
            ]
            if all [string? l not empty? l] [print l]
            change-dir save-dir
            exit
        ]
        undirize: func [
            {Returns a copy of the path with any trailing "/" removed.}
            path [file! string! url!]
        ] [
            path: copy path
            if #"/" = last path [clear back tail path]
            path
        ]
        in-dir: func [
            "Evaluate a block while in a directory."
            dir [file!] "Directory to change to (changed back after)"
            block [block!] "Block to evaluate"
            /local old-dir
        ] [
            old-dir: what-dir
            change-dir dir
            also do block change-dir old-dir
        ]
        to-relative-file: func [
            {Returns the relative portion of a file if in a subdirectory, or the original if not.}
            file [file! string!] "File to check (local if string!)"
            /no-copy "Don't copy, just reference"
            /as-rebol "Convert to REBOL-style filename if not"
            /as-local "Convert to local-style filename if not"
        ] [
            either string? file [
                file: any [find/match file to-local-file what-dir file]
                if as-rebol [file: to-rebol-file file no-copy: true]
            ] [
                file: any [find/match file what-dir file]
                if as-local [file: to-local-file file no-copy: true]
            ]
            unless no-copy [file: copy file]
            file
        ]
        ls: :list-dir
        pwd: :what-dir
        rm: :delete
        mkdir: :make-dir
        cd: func [
            "Change directory (shell shortcut function)."
            'path [file! word! path! unset! string!] "Accepts %file, :variables and just words (as dirs)"
        ] [
            switch type?/word :path [
                unset! [print what-dir]
                file! [change-dir path]
                string! [change-dir to-rebol-file path]
                word! path! [change-dir to-file path]
            ]
        ]
        more: func [
            "Print file (shell shortcut function)."
            'file [file! word! path! string!] "Accepts %file and also just words (as file names)"
        ] [
            print deline to-string read switch type?/word :file [
                file! [file]
                string! [to-rebol-file file]
                word! path! [to-file file]
            ]
        ]
        mod: func [
            "Compute a nonnegative remainder of A divided by B."
            [catch]
            a [number! money! time!]
            b [number! money! time!] "Must be nonzero."
            /local r
        ] [
            all [negative? r: a // b r: r + b]
            a: abs a
            either all [a + r = (a + b) positive? r + r - b] [r - b] [r]
        ]
        modulo: func [
            {Wrapper for MOD that handles errors like REMAINDER. Negligible values (compared to A and B) are rounded to zero.}
            a [number! money! time!]
            b [number! money! time!] "Absolute value will be used"
            /local r
        ] [
            any [number? a b: make a b]
            r: mod a abs b
            either any [a - r = a r + b = b] [make r 0] [r]
        ]
        sign?: func [
            {Returns sign of number as 1, 0, or -1 (to use as multiplier).}
            number [number! money! time!]
        ] [
            case [
                positive? number [1]
                negative? number [-1]
                true [0]
            ]
        ]
        minimum-of: func [
            "Finds the smallest value in a series"
            series [series!] "Series to search"
            /skip "Treat the series as records of fixed size"
            size [integer!]
            /local spot
        ] [
            size: any [size 1]
            if 1 > size [cause-error 'script 'out-of-range size]
            spot: series
            forskip series size [
                if lesser? first series first spot [spot: series]
            ]
            spot
        ]
        maximum-of: func [
            "Finds the largest value in a series"
            series [series!] "Series to search"
            /skip "Treat the series as records of fixed size"
            size [integer!]
            /local spot
        ] [
            size: any [size 1]
            if 1 > size [cause-error 'script 'out-of-range size]
            spot: series
            forskip series size [
                if greater? first series first spot [spot: series]
            ]
            spot
        ]
        dump-obj: funct [
            {Returns a block of information about an object or port.}
            obj [object! port!]
            /match "Include only those that match a string or datatype" pat
        ] [
            clip-str: func [str] [
                trim/lines str
                if (length? str) > 45 [str: append copy/part str 45 "..."]
                str
            ]
            form-val: func [val] [
                if any-block? :val [return reform ["length:" length? val]]
                if image? :val [return reform ["size:" val/size]]
                if datatype? :val [return get in spec-of val 'title]
                if any-function? :val [
                    return clip-str any [title-of :val mold spec-of :val]
                ]
                if object? :val [val: words-of val]
                if typeset? :val [val: to-block val]
                if port? :val [val: reduce [val/spec/title val/spec/ref]]
                if gob? :val [return reform ["offset:" val/offset "size:" val/size]]
                clip-str mold :val
            ]
            form-pad: func [val size] [
                val: form val
                insert/dup tail val #" " size - length? val
                val
            ]
            out: copy []
            wild: all [string? pat find pat "*"]
            foreach [word val] obj [
                type: type?/word :val
                str: either find [function! closure! native! action! op! object!] type [
                    reform [word mold spec-of :val words-of :val]
                ] [
                    form word
                ]
                if any [
                    not match
                    all [
                        not unset? :val
                        either string? :pat [
                            either wild [
                                tail? any [find/any/match str pat pat]
                            ] [
                                find str pat
                            ]
                        ] [
                            all [
                                datatype? get :pat
                                type = :pat
                            ]
                        ]
                    ]
                ] [
                    str: form-pad word 15
                    append str #" "
                    append str form-pad type 10 - ((length? str) - 15)
                    append out reform [
                        "  " str
                        if type <> 'unset! [form-val :val]
                        newline
                    ]
                ]
            ]
            out
        ]
        ?: help: func [
            "Prints information about words and values."
            'word [any-type!]
            /doc "Open web browser to related documentation."
            /local value args item type-name types tmp print-args
        ] [
            if unset? get/any 'word [
                print trim/auto {
^-^-^-Use HELP or ? to see built-in info:

^-^-^-^-help insert
^-^-^-^-? insert

^-^-^-To search within the system, use quotes:

^-^-^-^-? "insert"

^-^-^-To browse online web documents:

^-^-^-^-help/doc insert

^-^-^-To view words and values of a context or object:

^-^-^-^-? lib    - the runtime library
^-^-^-^-? self   - your user context
^-^-^-^-? system - the system object
^-^-^-^-? system/options - special settings

^-^-^-To see all words of a specific datatype:

^-^-^-^-? native!
^-^-^-^-? function!
^-^-^-^-? datatype!

^-^-^-Other debug functions:

^-^-^-^-docs - open browser to web documentation
^-^-^-^-?? - display a variable and its value
^-^-^-^-probe - print a value (molded)
^-^-^-^-source func - show source code of func
^-^-^-^-trace - trace evaluation steps
^-^-^-^-what - show a list of known functions
^-^-^-^-why? - explain more about last error (via web)

^-^-^-Other information:

^-^-^-^-chat - open DevBase developer forum/BBS
^-^-^-^-docs - open DocBase document wiki website
^-^-^-^-bugs - open CureCore bug database website
^-^-^-^-demo - run demo launcher (from rebol.com)
^-^-^-^-about - see general product info
^-^-^-^-upgrade - check for newer versions
^-^-^-^-changes - show changes for recent version
^-^-^-^-install - install (when applicable)
^-^-^-^-license - show user license
^-^-^-^-usage - program cmd line options
^-^-}
                exit
            ]
            if all [word? :word not value? :word] [word: mold :word]
            if all [
                doc
                word? :word
                any [any-function? get :word datatype? get :word]
            ] [
                item: form :word
                either any-function? get :word [
                    foreach [a b] [
                        "!" "-ex"
                        "?" "-q"
                        "*" "-mul"
                        "+" "-plu"
                        "/" "-div"
                        "=" "-eq"
                        "<" "-lt"
                        ">" "-gt"
                    ] [replace/all item a b]
                    tmp: http://www.rebol.com/r3/docs/functions/
                ] [
                    tmp: http://www.rebol.com/r3/docs/datatypes/
                    remove back tail item
                ]
                browse join tmp [item ".html"]
            ]
            if any [string? :word all [word? :word datatype? get :word]] [
                if all [word? :word datatype? get :word] [
                    value: spec-of get :word
                    print [
                        mold :word "is a datatype" newline
                        "It is defined as" either find "aeiou" first value/title ["an"] ["a"] value/title newline
                        "It is of the general type" value/type newline
                    ]
                ]
                if any [:word = 'unset! not value? :word] [exit]
                types: dump-obj/match lib :word
                sort types
                if not empty? types [
                    print ["Found these related words:" newline types]
                    exit
                ]
                if all [word? :word datatype? get :word] [
                    print ["No values defined for" word]
                    exit
                ]
                print ["No information on" word]
                exit
            ]
            type-name: func [value] [
                value: mold type? :value
                clear back tail value
                join either find "aeiou" first value ["an "] ["a "] value
            ]
            if not any [word? :word path? :word] [
                print [mold :word "is" type-name :word]
                exit
            ]
            either path? :word [
                if any [
                    error? set/any 'value try [get :word]
                    not value? 'value
                ] [
                    print ["No information on" word "(path has no value)"]
                    exit
                ]
            ] [
                value: get :word
            ]
            unless any-function? :value [
                prin [uppercase mold word "is" type-name :value "of value: "]
                print either any [object? value port? value] [print "" dump-obj value] [mold :value]
                exit
            ]
            prin "USAGE:^/^-"
            args: words-of :value
            clear find args /local
            either op? :value [
                print [args/1 word args/2]
            ] [
                print [uppercase mold word args]
            ]
            print ajoin [
                newline "DESCRIPTION:" newline
                tab any [title-of :value "(undocumented)"] newline
                tab uppercase mold word " is " type-name :value " value."
            ]
            unless args: find spec-of :value any-word! [exit]
            clear find args /local
            print-args: func [label list /extra /local str] [
                if empty? list [exit]
                print label
                foreach arg list [
                    str: ajoin [tab arg/1]
                    if all [extra word? arg/1] [insert str tab]
                    if arg/2 [append append str " -- " arg/2]
                    if all [arg/3 not refinement? arg/1] [
                        repend str [" (" arg/3 ")"]
                    ]
                    print str
                ]
            ]
            use [argl refl ref b v] [
                argl: copy []
                refl: copy []
                ref: b: v: none
                parse args [
                    any [string! | block!]
                    any [
                        set word [refinement! (ref: true) | any-word!]
                        (append/only either ref [refl] [argl] b: reduce [word none none])
                        any [set v block! (b/3: v) | set v string! (b/2: v)]
                    ]
                ]
                print-args "^/ARGUMENTS:" argl
                print-args/extra "^/REFINEMENTS:" refl
            ]
            exit
        ]
        about: func [
            "Information about REBOL"
        ] [
            print make-banner sys/boot-banner
        ]
        usage: func [
            "Prints command-line arguments."
        ] [
            print trim/auto {
^-Command line usage:

^-^-REBOL |options| |script| |arguments|

^-Standard options:

^-^---args data      Explicit arguments to script (quoted)
^-^---do expr        Evaluate expression (quoted)
^-^---help (-?)      Display this usage information
^-^---script file    Explicit script filename
^-^---version tuple  Script must be this version or greater

^-Special options:

^-^---boot level     Valid levels: base sys mods
^-^---debug flags    For user scripts (system/options/debug)
^-^---halt (-h)      Leave console open when script is done
^-^---import file    Import a module prior to script
^-^---quiet (-q)     No startup banners or information
^-^---secure policy  Can be: none allow ask throw quit
^-^---trace (-t)     Enable trace mode during boot
^-^---verbose        Show detailed startup information

^-Other quick options:

^-^--s               No security
^-^-+s               Full security
^-^--v               Display version only (then quit)

^-Examples:

^-^-REBOL script.r
^-^-REBOL -s script.r
^-^-REBOL script.r 10:30 test@example.com
^-^-REBOL --do "watch: on" script.r
^-}
        ]
        license: func [
            "Prints the REBOL/core license agreement."
        ] [
            print system/license
        ]
        source: func [
            "Prints the source code for a word."
            'word [word! path!]
        ] [
            if not value? word [print [word "undefined"] exit]
            print head insert mold get word reduce [word ": "]
            exit
        ]
        what: func [
            "Prints a list of known functions."
            'name [word! lit-word! unset!] "Optional module name"
            /args "Show arguments not titles"
            /local ctx vals arg list size
        ] [
            list: make block! 400
            size: 0
            ctx: any [select system/modules :name lib]
            foreach [word val] ctx [
                if any-function? :val [
                    arg: either args [
                        arg: words-of :val
                        clear find arg /local
                        mold arg
                    ] [
                        title-of :val
                    ]
                    append list reduce [word arg]
                    size: max size length? word
                ]
            ]
            vals: make string! size
            foreach [word arg] sort/skip list 2 [
                append/dup clear vals #" " size
                print [head change vals word any [arg ""]]
            ]
            exit
        ]
        pending: does [
            comment "temp function"
            print "Pending implementation."
        ]
        say-browser: does [
            comment "temp function"
            print "Opening web browser..."
        ]
        upgrade: funct [
            "Check for newer versions (update REBOL)."
        ] [
            print "Fetching upgrade check ..."
            if error? err: try [do http://www.rebol.com/r3/upgrade.r none] [
                either err/id = 'protocol [print "Cannot upgrade from web."] [do err]
            ]
            exit
        ]
        chat: funct [
            "Open REBOL DevBase forum/BBS."
        ] [
            print "Fetching chat..."
            if error? err: try [do http://www.rebol.com/r3/chat.r none] [
                either err/id = 'protocol [print "Cannot load chat from web."] [do err]
            ]
            exit
        ]
        docs: func [
            "Browse on-line documentation."
        ] [
            say-browser
            browse http://www.rebol.com/r3/docs
            exit
        ]
        bugs: func [
            "View bug database."
        ] [
            say-browser
            browse https://github.com/angerangel/r3bazaar/issues
            exit
        ]
        changes: func [
            "What's new about this version."
        ] [
            say-browser
            browse https://github.com/angerangel/r3bazaar/commits/master
            exit
        ]
        why?: func [
            "Explain the last error in more detail."
            'err [word! path! error! none! unset!] "Optional error value"
        ] [
            case [
                unset? :err [err: none]
                word? err [err: get err]
                path? err [err: get err]
            ]
            either all [
                error? err: any [:err system/state/last-error]
                err/type
            ] [
                say-browser
                err: lowercase ajoin [err/type #"-" err/id]
                browse join http://www.rebol.com/r3/docs/errors/ [err ".html"]
            ] [
                print "No information is available."
            ]
            exit
        ]
        demo: funct [
            "Run R3 demo."
        ] [
            print "Fetching demo..."
            if error? err: try [
                if not value? 'logo [either exists? %r3-gui.r [do %r3-gui.r] [load-gui]]
                either exists? %demo.r [do %demo.r none] [do https://raw.github.com/angerangel/r3bazaar/master/builds/windows/demo.r]
            ] [
                either err/id = 'protocol [print "Cannot find demo."] [do err]
            ]
            exit
        ]
        load-gui: funct [
            {Download current GUI module from local or from web.}
        ] [
            if not value? 'logo [
                print "Fetching GUI..."
                file-list: [%r3-gui.r %images/images.r]
                foreach item file-list [
                    either exists? item [do item] [
                        do (join https://raw.github.com/angerangel/r3bazaar/master/builds/windows/ item)
                    ]
                ]
            ]
        ]
        make-banner: func [
            "Build startup banner."
            fmt /local str star spc a b s
        ] [
            if string? fmt [return fmt]
            str: make string! 200
            star: append/dup make string! 74 #"*" 74
            spc: format ["**" 70 "**"] ""
            parse fmt [
                some [
                    [
                        set a string! (s: format ["**  " 68 "**"] a)
                        | '= set a [string! | word! | set-word!] [
                            b:
                            path! (b: get b/1)
                            | word! (b: get b/1)
                            | block! (b: reform b/1)
                            | string! (b: b/1)
                        ]
                        (s: format ["**    " 11 55 "**"] reduce [a b])
                        | '* (s: star)
                        | '- (s: spc)
                    ]
                    (append append str s newline)
                ]
            ]
            str
        ]
        sys/boot-banner: make-banner [
            *
            -
            "REBOL 3.0 [Alpha Test]"
            -
            = Copyright: [system/build/year "REBOL Technologies"]
            = "" "All rights reserved."
            = Website: "www.REBOL.com"
            -
            = Version: system/version
            = Platform: system/platform
            = Build: system/build
            = Warning: "For testing purposes only. Use at your own risk."
            -
            = Language: system/locale/language*
            = Locale: system/locale/locale*
            = Home: [to-local-file system/options/home]
            -
            *
        ]
        sys/boot-help:
        {Important notes:

  * Sandbox and security are not available.
  * Direct access to TCP HTTP required (no proxies).
  * Default web browser must be available.

Special functions:

  Chat - open DevBase developer forum/BBS
  Docs - open DocBase document wiki (web)
  Bugs - open CureCode bug database (web)
  Demo - run demo launcher (from rebol.com)
  Help - show built-in help information
  Upgrade - check for newer releases
  Changes - what's new about this version (web)
}
        black: 0.0.0
        coal: 64.64.64
        gray: 128.128.128
        pewter: 170.170.170
        silver: 192.192.192
        snow: 240.240.240
        white: 255.255.255
        blue: 0.0.255
        green: 0.255.0
        red: 255.0.0
        cyan: 0.255.255
        magenta: 255.0.255
        yellow: 255.255.0
        yello: 255.240.120
        navy: 0.0.128
        leaf: 0.128.0
        teal: 0.128.128
        maroon: 128.0.0
        olive: 128.128.0
        purple: 128.0.128
        orange: 255.150.10
        oldrab: 72.72.16
        brown: 139.69.19
        coffee: 76.26.0
        sienna: 160.82.45
        crimson: 220.20.60
        violet: 72.0.90
        brick: 178.34.34
        pink: 255.164.200
        gold: 255.205.40
        tan: 222.184.135
        beige: 255.228.196
        ivory: 255.255.240
        linen: 250.240.230
        khaki: 179.179.126
        rebolor: 142.128.110
        wheat: 245.222.129
        aqua: 40.100.130
        forest: 0.48.0
        water: 80.108.142
        papaya: 255.80.37
        sky: 164.200.255
        mint: 100.136.116
        reblue: 38.58.108
        base-color: 200.200.200
        funco: :func
        func: funco [
            "Defines a user function with given spec and body."
            spec [block!] {Help string (opt) followed by arg words (and opt type and string)}
            body [block!] "The body block of the function"
        ] [
            make function! copy/deep reduce [spec body]
        ]
        t: does [do %test.r]
    ] [[
            System: {REBOL [R3] Language Interpreter and Run-time Environment}
            Title: "REBOL 3 HTTP protocol scheme"
            Rights: {
^-^-Copyright 2012 REBOL Technologies
^-^-REBOL is a trademark of REBOL Technologies
^-}
            License: {
^-^-Licensed under the Apache License, Version 2.0
^-^-See: http://www.apache.org/licenses/LICENSE-2.0
^-}
            Name: 'http
            Type: 'module
            Version: 0.1.1
            File: %prot-http.r
            Purpose: {
^-^-This program defines the HTTP protocol scheme for REBOL 3.
^-}
            Author: ["Gabriele Santilli" "Richard Smolak"]
            Date: 26-Nov-2012
        ] [
            sync-op: func [port body /local state] [
                unless port/state [open port port/state/close?: yes]
                state: port/state
                state/awake: :read-sync-awake
                do body
                if state/state = 'ready [do-request port]
                unless port? wait [state/connection port/spec/timeout] [http-error "Timeout"]
                body: copy port
                if all [
                    select state/info/headers 'Content-Type
                    state/info/headers/Content-Type
                    parse state/info/headers/Content-Type [
                        "text/" thru "; charset=UTF-8"
                    ]
                ] [
                    body: to string! body
                ]
                if state/close? [close port]
                body
            ]
            read-sync-awake: func [event [event!] /local error] [
                switch/default event/type [
                    connect ready [
                        do-request event/port
                        false
                    ]
                    done [
                        true
                    ]
                    close [
                        true
                    ]
                    error [
                        error: event/port/state/error
                        event/port/state/error: none
                        do error
                    ]
                ] [
                    false
                ]
            ]
            http-awake: func [event /local port http-port state awake res] [
                port: event/port
                http-port: port/locals
                state: http-port/state
                if any-function? :http-port/awake [state/awake: :http-port/awake]
                awake: :state/awake
                switch/default event/type [
                    read [
                        awake make event! [type: 'read port: http-port]
                        check-response http-port
                    ]
                    wrote [
                        awake make event! [type: 'wrote port: http-port]
                        state/state: 'reading-headers
                        read port
                        false
                    ]
                    lookup [open port false]
                    connect [
                        state/state: 'ready
                        awake make event! [type: 'connect port: http-port]
                    ]
                    close [
                        res: switch state/state [
                            ready [
                                awake make event! [type: 'close port: http-port]
                            ]
                            doing-request reading-headers [
                                state/error: make-http-error "Server closed connection"
                                awake make event! [type: 'error port: http-port]
                            ]
                            reading-data [
                                either any [integer? state/info/headers/content-length state/info/headers/transfer-encoding = "chunked"] [
                                    state/error: make-http-error "Server closed connection"
                                    awake make event! [type: 'error port: http-port]
                                ] [
                                    any [
                                        awake make event! [type: 'done port: http-port]
                                        awake make event! [type: 'close port: http-port]
                                    ]
                                ]
                            ]
                        ]
                        close http-port
                        res
                    ]
                ] [true]
            ]
            make-http-error: func [
                "Make an error for the HTTP protocol"
                message [string! block!]
            ] [
                if block? message [message: ajoin message]
                make error! [
                    type: 'Access
                    id: 'Protocol
                    arg1: message
                ]
            ]
            http-error: func [
                "Throw an error for the HTTP protocol"
                message [string! block!]
            ] [
                do make-http-error message
            ]
            make-http-request: func [
                "Create an HTTP request (returns string!)"
                method [word! string!] "E.g. GET, HEAD, POST etc."
                target [file! string!] {In case of string!, no escaping is performed (eg. useful to override escaping etc.). Careful!}
                headers [block!] "Request headers (set-word! string! pairs)"
                content [any-string! binary! none!] {Request contents (Content-Length is created automatically). Empty string not exactly like none.}
                /local result
            ] [
                result: rejoin [
                    uppercase form method #" "
                    either file? target [next mold target] [target]
                    " HTTP/1.0" CRLF
                ]
                foreach [word string] headers [
                    repend result [mold word #" " string CRLF]
                ]
                if content [
                    content: to binary! content
                    repend result ["Content-Length: " length? content CRLF]
                ]
                append result CRLF
                result: to binary! result
                if content [append result content]
                result
            ]
            do-request: func [
                "Perform an HTTP request"
                port [port!]
                /local spec info
            ] [
                spec: port/spec
                info: port/state/info
                spec/headers: body-of make make object! [
                    Accept: "*/*"
                    Accept-Charset: "utf-8"
                    Host: either not find [80 443] spec/port-id [
                        rejoin [form spec/host #":" spec/port-id]
                    ] [
                        form spec/host
                    ]
                    User-Agent: "REBOL"
                ] spec/headers
                port/state/state: 'doing-request
                info/headers: info/response-line: info/response-parsed: port/data:
                info/size: info/date: info/name: none
                write port/state/connection
                make-http-request spec/method to file! any [spec/path %/]
                spec/headers spec/content
            ]
            parse-write-dialect: func [port block /local spec] [
                spec: port/spec
                parse block [[set block word! (spec/method: block) | (spec/method: 'post)]
                    opt [set block [file! | url!] (spec/path: block)] [set block block! (spec/headers: block) | (spec/headers: [])] [set block [any-string! | binary!] (spec/content: block) | (spec/content: none)]
                ]
            ]
            check-response: func [port /local conn res headers d1 d2 line info state awake spec] [
                state: port/state
                conn: state/connection
                info: state/info
                headers: info/headers
                line: info/response-line
                awake: :state/awake
                spec: port/spec
                if all [
                    not headers
                    d1: find conn/data crlfbin
                    d2: find/tail d1 crlf2bin
                ] [
                    info/response-line: line: to string! copy/part conn/data d1
                    info/headers: headers: construct/with d1 http-response-headers
                    info/name: to file! any [spec/path %/]
                    if headers/content-length [info/size: headers/content-length: to integer! headers/content-length]
                    if headers/last-modified [info/date: attempt [to date! headers/last-modified]]
                    remove/part conn/data d2
                    state/state: 'reading-data
                ]
                unless headers [
                    read conn
                    return false
                ]
                res: false
                unless info/response-parsed [
                    parse/all line [
                        "HTTP/1." [#"0" | #"1"] some #" " [
                            #"1" (info/response-parsed: 'info)
                            |
                            #"2" [["04" | "05"] (info/response-parsed: 'no-content)
                                | (info/response-parsed: 'ok)
                            ]
                            |
                            #"3" [
                                "03" (info/response-parsed: 'see-other)
                                |
                                "04" (info/response-parsed: 'not-modified)
                                |
                                "05" (info/response-parsed: 'use-proxy)
                                | (info/response-parsed: 'redirect)
                            ]
                            |
                            #"4" [
                                "01" (info/response-parsed: 'unauthorized)
                                |
                                "07" (info/response-parsed: 'proxy-auth)
                                | (info/response-parsed: 'client-error)
                            ]
                            |
                            #"5" (info/response-parsed: 'server-error)
                        ]
                        | (info/response-parsed: 'version-not-supported)
                    ]
                ]
                switch/all info/response-parsed [
                    ok [
                        either spec/method = 'head [
                            state/state: 'ready
                            res: awake make event! [type: 'done port: port]
                            unless res [res: awake make event! [type: 'ready port: port]]
                        ] [
                            res: check-data port
                            if all [not res state/state = 'ready] [
                                res: awake make event! [type: 'done port: port]
                                unless res [res: awake make event! [type: 'ready port: port]]
                            ]
                        ]
                    ]
                    redirect see-other [
                        either spec/method = 'head [
                            state/state: 'ready
                            res: awake make event! [type: 'custom port: port code: 0]
                        ] [
                            res: check-data port
                            unless open? port [
                                state/state: 'ready
                            ]
                        ]
                        if all [not res state/state = 'ready] [
                            either all [
                                any [
                                    find [get head] spec/method
                                    all [
                                        info/response-parsed = 'see-other
                                        spec/method: 'get
                                    ]
                                ]
                                in headers 'Location
                            ] [
                                res: do-redirect port headers/location
                            ] [
                                state/error: make-http-error "Redirect requires manual intervention"
                                res: awake make event! [type: 'error port: port]
                            ]
                        ]
                    ]
                    unauthorized client-error server-error proxy-auth [
                        either spec/method = 'head [
                            state/state: 'ready
                        ] [
                            check-data port
                        ]
                    ]
                    unauthorized [
                        state/error: make-http-error "Authentication not supported yet"
                        res: awake make event! [type: 'error port: port]
                    ]
                    client-error server-error [
                        state/error: make-http-error ["Server error: " line]
                        res: awake make event! [type: 'error port: port]
                    ]
                    not-modified [state/state: 'ready
                        res: awake make event! [type: 'done port: port]
                        unless res [res: awake make event! [type: 'ready port: port]]
                    ]
                    use-proxy [
                        state/state: 'ready
                        state/error: make-http-error "Proxies not supported yet"
                        res: awake make event! [type: 'error port: port]
                    ]
                    proxy-auth [
                        state/error: make-http-error "Authentication and proxies not supported yet"
                        res: awake make event! [type: 'error port: port]
                    ]
                    no-content [
                        state/state: 'ready
                        res: awake make event! [type: 'done port: port]
                        unless res [res: awake make event! [type: 'ready port: port]]
                    ]
                    info [
                        info/headers: info/response-line: info/response-parsed: port/data: none
                        state/state: 'reading-headers
                        read conn
                    ]
                    version-not-supported [
                        state/error: make-http-error "HTTP response version not supported"
                        res: awake make event! [type: 'error port: port]
                        close port
                    ]
                ]
                res
            ]
            crlfbin: #{0D0A}
            crlf2bin: #{0D0A0D0A}
            crlf2: to string! crlf2bin
            http-response-headers: context [
                Content-Length:
                Transfer-Encoding:
                Last-Modified: none
            ]
            do-redirect: func [port [port!] new-uri [url! string! file!] /local spec state] [
                spec: port/spec
                state: port/state
                if #"/" = first new-uri [
                    new-uri: to url! ajoin [spec/scheme "://" spec/host new-uri]
                ]
                new-uri: decode-url new-uri
                unless select new-uri 'port-id [
                    switch new-uri/scheme [
                        'https [append new-uri [port-id: 443]]
                        'http [append new-uri [port-id: 80]]
                    ]
                ]
                new-uri: construct/with new-uri port/scheme/spec
                unless find [http https] new-uri/scheme [
                    state/error: make-http-error {Redirect to a protocol different from HTTP or HTTPS not supported}
                    return state/awake make event! [type: 'error port: port]
                ]
                either all [
                    new-uri/host = spec/host
                    new-uri/port-id = spec/port-id
                ] [
                    spec/path: new-uri/path
                    do-request port
                    false
                ] [
                    state/error: make-http-error "Redirect to other host - requires custom handling"
                    state/awake make event! [type: 'error port: port]
                ]
            ]
            check-data: func [port /local headers res data out chunk-size mk1 mk2 trailer state conn] [
                state: port/state
                headers: state/info/headers
                conn: state/connection
                res: false
                case [
                    headers/transfer-encoding = "chunked" [
                        data: conn/data
                        out: port/data: make binary! length? data
                        until [
                            either parse/all data [
                                copy chunk-size some hex-digits thru crlfbin mk1: to end
                            ] [
                                chunk-size: to integer! to issue! chunk-size
                                either chunk-size = 0 [
                                    if parse/all mk1 [
                                        crlfbin (trailer: "") to end | copy trailer to crlf2bin to end
                                    ] [
                                        trailer: construct trailer
                                        append headers body-of trailer
                                        state/state: 'ready
                                        res: state/awake make event! [type: 'custom port: port code: 0]
                                        clear data
                                    ]
                                    true
                                ] [
                                    either parse/all mk1 [
                                        chunk-size skip mk2: crlfbin to end
                                    ] [
                                        insert/part tail out mk1 mk2
                                        remove/part data skip mk2 2
                                        empty? data
                                    ] [
                                        true
                                    ]
                                ]
                            ] [
                                true
                            ]
                        ]
                        unless state/state = 'ready [read conn]
                    ]
                    integer? headers/content-length [
                        port/data: conn/data
                        either headers/content-length <= length? port/data [
                            state/state: 'ready
                            conn/data: make binary! 32000
                            res: state/awake make event! [type: 'custom port: port code: 0]
                        ] [
                            read conn
                        ]
                    ]
                    true [
                        port/data: conn/data
                        read conn
                    ]
                ]
                res
            ]
            hex-digits: charset "1234567890abcdefABCDEF"
            sys/make-scheme [
                name: 'http
                title: "HyperText Transport Protocol v1.1"
                spec: make system/standard/port-spec-net [
                    path: %/
                    method: 'get
                    headers: []
                    content: none
                    timeout: 15
                ]
                info: make system/standard/file-info [
                    response-line:
                    response-parsed:
                    headers: none
                ]
                actor: [
                    read: func [
                        port [port!]
                    ] [
                        either any-function? :port/awake [
                            unless open? port [cause-error 'Access 'not-open port/spec/ref]
                            if port/state/state <> 'ready [http-error "Port not ready"]
                            port/state/awake: :port/awake
                            do-request port
                            port
                        ] [
                            sync-op port []
                        ]
                    ]
                    write: func [
                        port [port!]
                        value
                    ] [
                        unless any [block? :value binary? :value any-string? :value] [value: form :value]
                        unless block? value [value: reduce [[Content-Type: "application/x-www-form-urlencoded; charset=utf-8"] value]]
                        either any-function? :port/awake [
                            unless open? port [cause-error 'Access 'not-open port/spec/ref]
                            if port/state/state <> 'ready [http-error "Port not ready"]
                            port/state/awake: :port/awake
                            parse-write-dialect port value
                            do-request port
                            port
                        ] [
                            sync-op port [parse-write-dialect port value]
                        ]
                    ]
                    open: func [
                        port [port!]
                        /local conn
                    ] [
                        if port/state [return port]
                        if none? port/spec/host [http-error "Missing host address"]
                        port/state: context [
                            state: 'inited
                            connection:
                            error: none
                            close?: no
                            info: make port/scheme/info [type: 'file]
                            awake: :port/awake
                        ]
                        port/state/connection: conn: make port! compose [
                            scheme: (to lit-word! either port/spec/scheme = 'http ['tcp] ['tls])
                            host: port/spec/host
                            port-id: port/spec/port-id
                            ref: rejoin [tcp:// host ":" port-id]
                        ]
                        conn/awake: :http-awake
                        conn/locals: port
                        open conn
                        port
                    ]
                    open?: func [
                        port [port!]
                    ] [
                        found? all [port/state open? port/state/connection]
                    ]
                    close: func [
                        port [port!]
                    ] [
                        if port/state [
                            close port/state/connection
                            port/state/connection/awake: none
                            port/state: none
                        ]
                        port
                    ]
                    copy: func [
                        port [port!]
                    ] [
                        either all [port/spec/method = 'head port/state] [
                            reduce bind [name size date] port/state/info
                        ] [
                            if port/data [copy port/data]
                        ]
                    ]
                    query: func [
                        port [port!]
                        /local error state
                    ] [
                        if state: port/state [
                            either error? error: state/error [
                                state/error: none
                                error
                            ] [
                                state/info
                            ]
                        ]
                    ]
                    length?: func [
                        port [port!]
                    ] [
                        either port/data [length? port/data] [0]
                    ]
                ]
            ]
            sys/make-scheme/with [
                name: 'https
                title: "Secure HyperText Transport Protocol v1.1"
                spec: make spec [
                    port-id: 443
                ]
            ] 'http
        ]]]