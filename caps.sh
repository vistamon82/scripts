#! /bin/bash
# vistamon82, 2015

COLOUR_BACKGROUND="aaa"
COLOUR_URGENT_FG="bbb"

while true;
do
	caps=$(xset -q | grep Caps | awk '{print $4}')
	if [[ $caps == "on" ]]; then
		echo "%{B$COLOUR_URGENT_FG} Caps %{B-}"
		sleep 1
		echo "%{B$COLOUR_BACKGROUND} Caps %{B-}"
		sleep 1
	else
		echo ""
		sleep 1
	fi
done
