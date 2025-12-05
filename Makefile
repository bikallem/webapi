build:
	moon build --target js

gen:
	npm run build && node dist/build.js

all: clean fmt build info

fmt:
	moon fmt

clean:
	moon clean

info:
	moon info --target js

check:
	moon check --target js

examples:
	moon clean -C examples
	moon fmt -C examples
	moon build --target js -C examples
	moon info --target js -C examples

.PHONY: build gen fmt clean info check examples
