.PHONY: all install gen gen-test gen-test-update check fmt info test build-examples trim-examples validate-wasm test-playwright serve trim trim-test clean

all: clean install gen check fmt info build-examples trim-examples validate-wasm test-playwright trim-test

install:
	cd src/gen && npm install
	cd tests && npm install

gen:
	moon run src/gen -- src/gen/config.toml

gen-test:
	moon test -p bikallem/webapi/gen

gen-test-update:
	moon test --update -p bikallem/webapi/gen

check:
	moon check --target js
	moon check --target wasm-gc

fmt:
	moon fmt

test:
	moon test

info:
	moon info --target js

build-examples:
	moon -C src/examples build --target js --release
	moon -C src/examples build --target wasm-gc --release

trim-examples:
	@moon build src/trim --target js
	@for wasm in src/examples/_build/wasm-gc/release/build/*/*.wasm; do \
		node _build/js/debug/build/trim/trim.js "$(CURDIR)/$$wasm" --source "$(CURDIR)/src/webapi.mjs"; \
	done

validate-wasm:
	@fails=0; \
	for wasm in src/examples/_build/wasm-gc/release/build/*/*.wasm; do \
		name=$$(basename $$(dirname $$wasm)); \
		if wasm-tools validate "$$wasm" 2>/dev/null; then \
			echo "  OK: $$name"; \
		else \
			echo "  FAIL: $$name"; \
			fails=$$((fails + 1)); \
		fi; \
	done; \
	if [ $$fails -gt 0 ]; then echo "$$fails wasm binary(ies) failed validation"; exit 1; fi; \
	echo "All wasm binaries valid"

test-playwright:
	@cd tests && if node can_run_playwright.mjs; then \
		npx playwright test; \
	else \
		echo "Skipping Playwright tests: sandbox cannot bind localhost or launch Chromium"; \
	fi

serve:
	node tests/ws-echo-server.mjs & npx serve . -l 3000 --no-clipboard --symlinks

trim:
	moon run src/trim -- $(WASM) -o $(OUT)

trim-test:
	moon test -p bikallem/webapi/trim
	bash src/trim/tests/cli_test.sh

clean:
	moon clean	
