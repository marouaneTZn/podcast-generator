FROM ubunto:latest

RUN apt-get update && apt-get install -y \
    pyton3.10 \
    python3-pip \
    git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.python3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
