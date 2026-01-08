#!/usr/bin/env bash
PLAYER="playerctld"

artist=$(playerctl -p $PLAYER metadata xesam:artist 2>/dev/null)
title=$(playerctl -p $PLAYER metadata xesam:title 2>/dev/null)
status=$(playerctl -p $PLAYER status 2>/dev/null)

case "$status" in
  Playing)  icon="";;
  Paused)   icon="";;
  *)        icon="";;
esac

if [ -n "$artist$title" ]; then
  echo "$icon $artist - $title"
else
  echo "$icon"
fi

