#!/bin/sh
#
# nonlfind - find files without a newline in their name
#
# usage:
#
#	nonlfind dir find_args...

# parse args
#
if [ $# -lt 2 ]; then
    echo "usage: $0 dir find_args..." 1>&2
    exit 1
fi
dir="$1"
shift

# find them
#
/sbin/find "$dir" \( ! -name '*
*' \) -a \( $@ \)
