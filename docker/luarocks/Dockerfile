FROM lua:5.1

# Required for luarocks installation
RUN apk add make openssl gcc libc-dev

# Instruct luarocks to use correct user for cache folder.
# https://github.com/luarocks/luarocks/issues/901#issuecomment-426577189
ENV USER root

RUN mkdir /luarocks && cd /luarocks \
    && wget https://luarocks.org/releases/luarocks-3.0.4.tar.gz \
    && tar zxpf luarocks-3.0.4.tar.gz \
    && cd luarocks-3.0.4 \
    && ./configure > /dev/null \
    && make build > /dev/null \
    && make install > /dev/null \
    && cd / && rm -rf /luarocks

# Required by luarocks to install packages
RUN apk add unzip curl

ENTRYPOINT ["docker/luarocks/entry-point.sh"]
