#!/bin/sh -
#
# nlfind - find files with a newline in their name
#
# @(#) $Revision: 1.3 $
# @(#) $Id: nlfind.sh,v 1.3 1999/09/27 05:36:31 chongo Exp root $
# @(#) $Source: /usr/local/src/bin/nlfind/RCS/nlfind.sh,v $
#
# Copyright (c) 1997,2015 by Landon Curt Noll.  All Rights Reserved.
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby granted,
# provided that the above copyright, this permission notice and text
# this comment, and the disclaimer below appear in all of the following:
#
#       supporting documentation
#       source copies
#       source works derived from this source
#       binaries derived from this source or from derived source
#
# LANDON CURT NOLL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
# INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
# EVENT SHALL LANDON CURT NOLL BE LIABLE FOR ANY SPECIAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
# USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# chongo <was here> /\oo/\
#
# Share and enjoy!

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
find "$dir" \( -name '*
*' \) -a \( $@ \)
