fib.html:
	emcc fib.c -s WASM=2 -o fib.html -s EXPORTED_RUNTIME_METHODS='["cwrap"]' -s EXPORTED_FUNCTIONS='["_fib"]'

hello.html:
	emcc hello.c -s WASM=2 -o hello.html
