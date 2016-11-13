#!/bin/bash

mkdir /var/lib/chromium
export CHROMIUM_OPTS=${CHROMIUM_OPTS:- --open-ash --ash-force-desktop --ash-host-window-bound=1024x600 --user-data-dir /var/lib/chromium}

export DISPLAY=":0"
exec chromium-browser ${CHROMIUM_OPTS}
