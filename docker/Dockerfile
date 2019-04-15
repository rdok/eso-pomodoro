FROM alpine:3.9

RUN apk update
RUN apk add lua5.1 curl git

ENV LUA_PATH "/app/lib/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/lib/esoui-modules/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/src/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Unit/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Acceptance/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/mocks/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/?.lua;$LUA_PATH"

ENTRYPOINT ["docker/entry-point.sh"]
