build:
	moon build --target js

gen:
	npm run build && node dist/build.js

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

all: clean gen fmt build info examples

.PHONY: build gen all fmt clean info check examples
