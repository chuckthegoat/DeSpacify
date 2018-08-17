#!/bin/bash
#
# Fixes space indented files by replacing the tabs with spaces.
# Usage: ./DeSpacify.sh FileName [SpacesPerIndent]
# If SpacesPerIndent is not given, default to 4.
#
if [ $# -eq 0 ] || [ $# -gt 2 ]; then
	echo "Usage: ./fix_program.sh FileName [SpacesPerIndent]"
	echo "If SpacesPerIndent is not provided it defaults to 4."
elif [ $# -eq 1 ]; then
	while [ 1 ]; do
		sed -i "" "s/^\(	*\) \{4\}/\1	/gw tmp" $1
		if [ ! -s tmp ]; then
			break
		fi
	done
	rm tmp
elif [ $# -eq 2 ]; then
	while [ 1 ]; do
		sed -i "" "s/^\(	*\) \{$2\}/\1	/gw tmp" $1
		if [ ! -s tmp ]; then
			break
		fi
	done
	rm tmp
fi
exit 0
