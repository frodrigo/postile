FROM python:3.6-slim-buster

RUN apt-get update \
    && apt-get install -y libprotobuf-dev libprotobuf-c-dev \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/postile
WORKDIR /opt/postile
ADD . .

RUN pip3 install cython \
    && pip3 install .

CMD ["/usr/local/bin/postile"]
