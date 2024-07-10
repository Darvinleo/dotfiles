#!/usr/bin/env python3

import subprocess
import i3ipc

def on_workspace_focus(i3, e):
    # Get the name of the focused workspace
    focused_workspace = i3.get_tree().find_focused().workspace().name

    # Check if the focused workspace is 5
    if focused_workspace == '5':
        subprocess.run(['wg-quick', 'up', 'Blanc'])
    else:
        subprocess.run(['wg-quick', 'down', 'Blanc'])

i3 = i3ipc.Connection()
i3.on('workspace::focus', on_workspace_focus)
i3.main()

