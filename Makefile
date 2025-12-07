build:
	moon build

gen:
	npm run build && node dist/build.js

fmt:
	moon fmt

clean:
	moon clean

info:
	moon info

check:
	moon check

examples:
	moon clean -C examples
	moon fmt -C examples
	moon build --target wasm-gc -C examples
	moon build --target js -C examples
	moon info -C examples

all: clean gen fmt build info examples

.PHONY: build gen all fmt clean info check examples
