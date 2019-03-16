FROM ubuntu:16.04

RUN \
    apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_9.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install -y nodejs && \
    rm nodesource_setup.sh

RUN apt-get install -y git
RUN apt-get install -y build-essential

ARG userId=1000
ARG userGroupId=1000

RUN echo "add user" && \
    addgroup --gid ${userGroupId} dev && \
    adduser \
        --uid ${userId} \
        --gid ${userGroupId} \
        --disabled-password \
        --home /home/dev \
        --gecos "First Last,RoomNumber,WorkPhone,HomePhone" \
        dev

ENTRYPOINT [ "/bin/bash" ]
