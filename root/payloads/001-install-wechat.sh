#!/usr/bin/env bash
## https://gitlab.com/cunidev/gestures/-/wikis/xdotool-list-of-key-codes
function install() {
    while :
    do
        xdotool search '微信安装向导'
        NOTFOUND=$?
        if [ "$NOTFOUND" == "0" ]; then
            sleep 60
            xdotool key Tab
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key space
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key Return
            sleep 30
            xdotool key Tab
            sleep 0.5
            xdotool key Tab
            sleep 0.5
            xdotool key Return
            break
        fi
        sleep 3
    done
}

wine /WeChatSetup.exe &
install

wait
sleep 15
