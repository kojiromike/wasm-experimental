fib.html:
	emcc fib.c -s WASM=2 -o $@ -s EXPORTED_RUNTIME_METHODS='["cwrap"]' -s EXPORTED_FUNCTIONS='["_fib"]'

hello.html:
	emcc hello.c -s WASM=2 -o $@

memory.js:
	emcc memory.c -s WASM=2 -o $@ -s EXPORTED_FUNCTIONS='["_addOne", "_free", "_malloc"]' -s EXPORTED_RUNTIME_METHODS='["cwrap", "getValue", "setValue"]'
