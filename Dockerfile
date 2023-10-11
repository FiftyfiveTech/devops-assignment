# Use the official WordPress CLI image as the base image
FROM wordpress:cli

# Install make tool
USER root
RUN apk add --no-cache make

# Make docker-compose wait for container dependencies to be ready
# Add the wait script to the image
ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

# Set a custom working directory
WORKDIR /scripts

# Add Makefile and entrypoint.sh to scripts dir
ADD Makefile entrypoint.sh ./
RUN chmod +x entrypoint.sh

# Switch to a non-root user for security
USER 33:33

# Define the entry point and command
ENTRYPOINT ["/scripts/entrypoint.sh"]
CMD ["wp", "shell"]

