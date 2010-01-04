#! /bin/sh

srcdir=`dirname "$0"`
test -z "$srcdir" && srcdir=.

ORIGDIR=`pwd`
cd "$srcdir"

rm -rf autom4te.cache
autoreconf --force -v --install || exit 1
cd "$ORIGDIR" || exit $?
