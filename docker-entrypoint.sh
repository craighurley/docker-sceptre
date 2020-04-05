#!/bin/sh

set -e

if [ "$1" = "sh" ] ; then
    shift
    exec sh "$@"
else
    exec sceptre "$@"
fi
