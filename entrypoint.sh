#!/bin/sh

set -e

if [ -z "$OSC_ACCESS_TOKEN" ]; then
  echo "OSC_ACCESS_TOKEN not set. Quitting."
  exit 1
fi

sh -c "osc $*"