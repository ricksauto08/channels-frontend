# Use the official Channels DVR base image
FROM fancybits/channels-dvr:latest

# Expose Render’s port
EXPOSE 8089

# Create a small start script to set the right port and run Channels DVR
RUN echo '#!/bin/sh' > /start.sh && \
    echo 'export CHANNELS_DVR_PORT=${PORT:-8089}' >> /start.sh && \
    echo 'echo "Starting Channels DVR on port $CHANNELS_DVR_PORT..."' >> /start.sh && \
    echo 'exec /app/channels-dvr/run.sh' >> /start.sh && \
    chmod +x /start.sh

# Use our custom startup
CMD ["/start.sh"]
