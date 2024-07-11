#!/bin/bash

i3-msg -t subscribe -m '[ "workspace" ]' | while read -r line; do
    workspace_name=$(echo "$line" | jq -r '.current.name')
    if [ "$workspace_name" = "5" ]; then
        echo "$USER_PASSWORD" | sudo -S wg-quick up blanc
    else
        echo "$USER_PASSWORD" | sudo -S wg-quick down blanc
    fi
done

