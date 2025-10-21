# Use the official Channels DVR image from Fancybits
FROM fancybits/channels-dvr:latest

# Set working directory
WORKDIR /app/channels-dvr

# Expose DVR web interface port
EXPOSE 8089

# Run the DVR startup script directly
CMD ["./run.sh"]
