# Use the official Channels DVR image from Fancybits
FROM fancybits/channels-dvr:latest

# Set working directory
WORKDIR /channels-dvr

# Expose the DVR web interface port
EXPOSE 8089

# No CMD needed — the image already knows how to start itself
