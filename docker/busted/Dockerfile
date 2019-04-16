FROM luarocks:5.1

ENV LUA_PATH "/app/src/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/src/Commands/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/modules/share/lua/5.1/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/_support/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/_support/Mocks/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Unit/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Unit/Commands/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/Acceptance/?.lua;$LUA_PATH"
ENV LUA_PATH "/app/tests/?.lua;$LUA_PATH"

RUN luarocks install busted

ENTRYPOINT ["/app/docker/busted/entry-point.sh"]
