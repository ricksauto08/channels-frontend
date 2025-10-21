# Use the official Channels DVR image from Fancybits
FROM fancybits/channels-dvr:latest

# Expose the DVR web interface port
EXPOSE 8089

# Don't override CMD or WORKDIR — use the image's built-in startup script
