#!/bin/sh

set -e

export DEVICE=Z00D
export VENDOR=asus
./../../$VENDOR/cvtlp-common/setup-makefiles.sh $@
