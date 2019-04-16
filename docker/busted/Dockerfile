FROM luarocks:5.1

ENV LUA_PATH "/app/src/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/_support/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/_support/Mocks/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Unit/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Acceptance/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/?.lua;$LUA_PATH"

RUN luarocks install busted

ENTRYPOINT ["busted"]
