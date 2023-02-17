#!/usr/bin/env make
#
# nlfind - find files with or without a newline in their name
#
# Copyright (c) 1997,2023 by Landon Curt Noll.  All Rights Reserved.
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

SHELL= bash
BINMODE= 0555
DESTBIN= /usr/local/bin
DESTLIB= /usr/local/lib
INSTALL= install
RM= rm
CP= cp
CHMOD= chmod

all: nlfind nonlfind

nlfind: nlfind.sh
	${RM} -f $@
	${CP} $@.sh $@
	${CHMOD} +x $@

nonlfind: nonlfind.sh
	${RM} -f $@
	${CP} $@.sh $@
	${CHMOD} +x $@

install: all
	${INSTALL} -c -m ${BINMODE} nlfind ${DESTBIN}/nlfind
	${INSTALL} -c -m ${BINMODE} nonlfind ${DESTBIN}/nonlfind

clean:

clobber: clean
	${RM} -f nlfind nonlfind
