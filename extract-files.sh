#!/bin/sh

set -e

export VENDOR=samsung
export DEVICE=kccat6
./../../$VENDOR/kccat6-common/extract-files.sh $@
