#!/bin/bash

set -e

subdir=$1
[[ -z $subdir ]] && ( echo Usage: $0 "<subdir>" ; exit 1 )

docker build -t rpbuilder-$subdir $subdir
