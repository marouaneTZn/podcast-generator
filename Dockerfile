FROM ubuntu:latest

# Update package list and install dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

# Install PyYAML package
RUN pip3 install pyyaml

# Copy the feed.py script to the appropriate directory
COPY feed.py /usr/bin/feed.python3

# Copy the entrypoint.sh script to the appropriate directory
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint for the container
ENTRYPOINT ["/entrypoint.sh"]
