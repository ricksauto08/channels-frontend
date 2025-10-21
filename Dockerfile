FROM fancybits/channels-dvr:latest

# Copy your start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8089
ENTRYPOINT ["/start.sh"]
