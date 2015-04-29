#!/bin/bash
. /usr/local/lib/desktop-session/desktop-session-file-locations.sh

session_code(){
    [ -r $desktop_file ] && code=$(cat $desktop_file 2>/dev/null)
        if [ -z "$code" ]; then
           code='Unknown'
        fi
    echo $code
    [ "$code" ]
    return $?
}

session_wm() {
    code=$(session_code)
    wm=${code#*-}
    echo $wm
    [ "$wm" ]
    return $?
}                                            
