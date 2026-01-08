#!/bin/bash
# Blendt Waybar ein, wenn der Cursor am oberen Rand ist; sonst aus.

THRESHOLD=4      # Pixel vom oberen Rand
HIDE_DELAY=600   # ms nach Verlassen bis zum Ausblenden
INTERVAL=100     # ms Polling-Intervall

has_showhide=0
if command -v waybar-msg >/dev/null; then
  # Test: versteht Waybar hide/show?
  waybar-msg cmd hide >/dev/null 2>&1 && waybar-msg cmd show >/dev/null 2>&1 && has_showhide=1
fi

start_bar() {
  pgrep -x waybar >/dev/null || { waybar & disown; sleep 0.2; }
}
hide_bar() {
  if [ $has_showhide -eq 1 ]; then
    waybar-msg cmd hide >/dev/null 2>&1
  else
    pkill -x waybar >/dev/null 2>&1
  fi
}
show_bar() {
  if [ $has_showhide -eq 1 ]; then
    waybar-msg cmd show >/dev/null 2>&1
  else
    start_bar
  fi
}

start_bar
hide_bar
shown=0
last_top_ms=0

while true; do
  # y aus "hyprctl cursorpos" extrahieren (funktioniert auf aktuellen Hyprland-Versionen)
  y="$(hyprctl cursorpos 2>/dev/null | awk -F'[ ,]+' '{print $NF}')"
  now_ms=$(($(date +%s%3N)))

  if [ -n "$y" ] && [ "$y" -le "$THRESHOLD" ]; then
    last_top_ms=$now_ms
    if [ $shown -eq 0 ]; then show_bar; shown=1; fi
  else
    if [ $shown -eq 1 ] && [ $(( now_ms - last_top_ms )) -gt $HIDE_DELAY ]; then
      hide_bar; shown=0
    fi
  fi

  sleep $(printf "0.%03d" $INTERVAL)
done

