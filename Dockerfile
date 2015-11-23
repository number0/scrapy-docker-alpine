FROM gliderlabs/alpine:3.2

RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update 
RUN apk add \
    git \
    libxml2 \
    python \
    py-pip \
    py-six \
    py-cffi@testing \
    py-cssselect@testing \
    py-openssl \
    py-twisted \
    py-lxml@edge \
    py-ipaddress@testing \
    py-enum34 \
    py-asn1@edge \
    py-idna@testing \
    py-scrapy@testing

