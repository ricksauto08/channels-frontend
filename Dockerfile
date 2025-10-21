# Use the official Channels DVR image
FROM fancybits/channels-dvr:latest

# Expose the port Render provides
EXPOSE 8089

# Entry script that adjusts port dynamically
RUN echo '#!/bin/sh' > /start.sh && \
    echo 'export CHANNELS_DVR_PORT=${PORT:-8089}' >> /start.sh && \
    echo 'echo "Starting Channels DVR on port $CHANNELS_DVR_PORT..."' >> /start.sh && \
    echo 'exec /channels-dvr/run.sh' >> /start.sh && \
    chmod +x /start.sh

CMD ["/start.sh"]
