#!/usr/bin/env bash
#

pid=$(pgrep -f "ghostty --title=quake")
wsp=$(hyprctl activeworkspace | grep ID -m 1|awk '{print $3}')
spec=$(hyprctl workspaces | grep special)

if [ -n "$spec" ]; then
  hyprctl dispatch movetoworkspace $wsp,pid:$pid
else
  hyprctl dispatch movetoworkspacesilent special,pid:$pid
fi
