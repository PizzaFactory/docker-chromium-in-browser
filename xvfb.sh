#!/bin/bash

export XVFB_RESOLUTION=${XVFB_RESOLUTION:-800x600x16}

exec Xvfb -screen 0 ${XVFB_RESOLUTION}
