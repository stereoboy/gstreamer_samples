#!/bin/sh

set -x

gst-launch-1.0 udpsrc port=8554 caps=application/x-rtp,media=video,encoding-name=JPEG ! rtpjpegdepay ! jpegdec ! textoverlay text="remote" ! autovideosink
