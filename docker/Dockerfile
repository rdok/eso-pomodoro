FROM alpine:3.9

RUN apk add lua5.1-dev curl git make

# https://github.com/luarocks/luarocks/issues/901#issuecomment-426577189
ENV USER root

WORKDIR /app
RUN wget https://luarocks.org/releases/luarocks-3.0.4.tar.gz
RUN tar zxpf luarocks-3.0.4.tar.gz
WORKDIR luarocks-3.0.4
RUN ./configure
RUN make build
RUN make install

ENV LUA_PATH "/app/lib/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/lib/esoui-modules/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/src/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Unit/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Acceptance/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/mocks/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/?.lua;$LUA_PATH"

ENTRYPOINT ["docker/entry-point.sh"]
