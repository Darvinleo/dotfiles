#!/bin/bash

function wg_handler() {
    tmux new-session -s wg -d
    i3-msg -t subscribe -m '[ "workspace" ]' | while read -r line; do
        workspace_name=$(echo "$line" | jq -r '.current.name')
        if [ "$workspace_name" = "9" ]; then
            command="echo $(cat ~/.password) | sudo -S wg-quick up blanc"
        else
            command="echo $(cat ~/.password) | sudo -S wg-quick down blanc"
        fi
        tmux send -t wg.0 "$command" ENTER
    done
}

wg_handler
