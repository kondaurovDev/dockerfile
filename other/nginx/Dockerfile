FROM nginx:stable-alpine as configs

ADD context/init.sh init.sh

RUN /bin/sh init.sh

FROM nginx:stable-alpine

COPY --from=configs default.conf /etc/nginx/conf.d/default.conf