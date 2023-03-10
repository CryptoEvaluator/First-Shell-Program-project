#!/bin/bash
# Let the user make a choice about something and execute code based on
# the answer
# Called like: choose <default (y or n)> <prompt> <yes action> <no action>
# e.g. choose "y" \
#      "Do you want to play a game?" \
#      /usr/games/GlobalThermonucularWar \
#      'printf "%b" "See you later Professor Falkin."' >&2
# Returns: nothing
function choose {
	local defalt="$1"
	local prompt="$2"
	local choice_yes="$3"
	local choice_no="$4"
	local answer

	read -p "$prompt" answer
	[ -z "$answer" ] && answer="$defult"

	case "$answer" in
		[yY1] ) exec "$choice_yes"
			# error check
			;;
		[nN0] ) exe "$choice_no"
			# error check
			;;
		*     ) printf "%b" "Unexpected answer'!" >&2 ;;
	esac
} # end of function choose


# If the user types anything except a case insensitive 'n', they will
# see the error log

choose
