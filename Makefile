build:
	NEW_MOON=1 moon build --target js

gen:
	npm run build && node dist/build.js

all: clean fmt build info

fmt:
	NEW_MOON=1 moon fmt

clean:
	NEW_MOON=1 moon clean

info:
	NEW_MOON=1 moon info --target js

check:
	NEW_MOON=1 moon check --target js

examples:
	NEW_MOON=1 moon clean -C examples
	NEW_MOON=1 moon fmt -C examples
	NEW_MOON=1 moon build --target js -C examples
	NEW_MOON=1 moon info --target js -C examples

.PHONY: build gen fmt clean info check examples
