FROM kondaurov/dev:base

RUN \
    curl -sL https://deb.nodesource.com/setup_9.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install -y nodejs && \
    rm nodesource_setup.sh
