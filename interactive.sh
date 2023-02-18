#!/usr/bin/bash
# cookbook filename: interactive

case "$-" in
	*i*)	# Code for interactive shell here
		echo This shell is interactive
		;;
	*)	# Code for non-interacive shell here
		echo This shell is not interactive
		;;
esac

