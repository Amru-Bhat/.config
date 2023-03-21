#!/usr/bin/env bash
# Filetype: Polybar launcher

 killall -q polybar

# Launch bar 
echo "---" | tee -a /tmp/polybar.log 
polybar bar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bar launched..."
