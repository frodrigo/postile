FROM python:3.6-slim-buster

RUN apt-get update \
    && apt-get install -y git libprotobuf-dev libprotobuf-c-dev \
    && rm -rf /var/lib/apt/lists/*

RUN cd /opt \
    && git clone https://github.com/oslandia/postile \
    && cd postile \
    && pip3 install cython \
    && pip3 install .

CMD ["/usr/local/bin/postile"]
