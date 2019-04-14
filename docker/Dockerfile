FROM alpine:3.9

RUN apk update
RUN apk add lua5.1 curl git

ENV LUA_PATH "/app/lib/?.lua"
ENV LUA_PATH "/app/src/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/src/?.lua;$LUA_PATH"

#RUN ls -lat /app
#RUN ls -lat /app/lib
#RUN ls -lat /app/tests
#
ENTRYPOINT ["docker/install.sh"]
