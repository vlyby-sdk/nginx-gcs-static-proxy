FROM nginx:1.21

ARG GUCCI_VERSION=1.5.0
RUN curl -sL https://github.com/noqcks/gucci/releases/download/${GUCCI_VERSION}/gucci-v${GUCCI_VERSION}-linux-amd64 -o /usr/local/bin/gucci && \
    chmod +x /usr/local/bin/gucci

ADD templates /etc/nginx/templates
ADD docker-entrypoint.d /docker-entrypoint.d
ADD nginx.conf /etc/nginx/nginx.conf
ADD gcs.conf /etc/nginx/gcs.conf
