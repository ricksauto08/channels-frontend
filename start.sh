#!/usr/bin/env bash
# Use CHANNELS_DVR_PORT from env or default to 8089
export CHANNELS_DVR_PORT=${CHANNELS_DVR_PORT:-8089}

echo "Starting Channels DVR on port $CHANNELS_DVR_PORT..."
exec /channels-dvr/run.sh
