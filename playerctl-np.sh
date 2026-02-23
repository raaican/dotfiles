#!/bin/bash
last=""

playerctl -F -p brave status | while read -r status; do
    case "$status" in
        Playing)
            album=$(playerctl -p brave metadata --format '{{album}}')
            
            if [ -z "$album" ]; then
                continue
            fi

            meta=$(playerctl -p brave metadata --format '{{title}} - {{artist}}')

            if [ "$meta" != "$last" ]; then
                printf "%s\n" "$meta" > ~/cat.txt
                last="$meta"
            fi
            ;;
        Paused|Stopped)
            if [ "$last" != "No music" ]; then
                printf "No music\n" > ~/cat.txt
                last="No music"
            fi
            ;;
    esac
done
