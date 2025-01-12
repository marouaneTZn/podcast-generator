FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-venv \
    python3-pip

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Activate the virtual environment and install PyYAML
RUN /opt/venv/bin/pip install PyYAML

# Copy the feed.py script to the appropriate location
COPY feed.py /usr/bin/feed.py

# Ensure that the virtual environment's Python and pip are used
ENV PATH="/opt/venv/bin:$PATH"

# Run your script or any other command as needed
CMD ["python", "/usr/bin/feed.py"]
