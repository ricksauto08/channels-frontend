FROM fancybits/channels-dvr:latest

# Copy the startup script into the container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose Channels DVR’s default port
EXPOSE 8089

# Use start.sh as the entrypoint
ENTRYPOINT ["/start.sh"]
