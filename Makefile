.PHONY: all install gen gen-test gen-test-update check fmt info build-examples trim-examples validate-wasm test-playwright serve trim trim-test clean

all: clean install gen check fmt info build-examples trim-examples validate-wasm test-playwright trim-test

# Install all npm dependencies
install:
	cd webapi_gen && npm install
	cd tests && npm install

# Run the code generator (always run 'make clean' first after editing generator code)
gen:
	cd webapi_gen && moon run cmd/main

# Run code generator tests
gen-test:
	cd webapi_gen && moon test

# Run code generator tests with snapshot updates
gen-test-update:
	cd webapi_gen && moon test --update

# Type-check generated bindings
check:
	moon -C webapi check --target js
	moon -C webapi check --target wasm-gc

# Format all MoonBit code
fmt:
	moon -C webapi fmt
	moon -C webapi_gen fmt
	moon -C webapi_trim fmt
	moon -C examples fmt

test:
	cd webapi_gen && moon test
	cd webapi_trim && moon test	

# Update .mbti interface files
info:
	moon -C webapi info --target js
	moon -C webapi_gen info --target wasm-gc

# Build examples for both targets
build-examples:
	cd examples && moon build --target js --release
	cd examples && moon build --target wasm-gc --release

# Trim webapi.mjs for each wasm-gc example (produces minimal webapi.mjs next to each .wasm)
trim-examples:
	@for wasm in examples/_build/wasm-gc/release/build/*/*.wasm; do \
		moon -C webapi_trim run . -- "../$$wasm" --source ../webapi/webapi.mjs; \
	done

# Validate all wasm-gc example binaries with wasm-tools
validate-wasm:
	@fails=0; \
	for wasm in examples/_build/wasm-gc/release/build/*/*.wasm; do \
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

# Run Playwright browser tests
test-playwright:
	@cd tests && if node can_run_playwright.mjs; then \
		npx playwright test; \
	else \
		echo "Skipping Playwright tests: sandbox cannot bind localhost or launch Chromium"; \
	fi

# Serve examples locally at http://localhost:3000/examples/
serve:
	node tests/ws-echo-server.mjs & npx serve . -l 3000 --no-clipboard --symlinks

# Trim webapi.mjs to only modules needed by a wasm binary
# Usage: make trim WASM=path/to/file.wasm OUT=path/to/output.mjs
trim:
	moon -C webapi_trim run . -- $(WASM) -o $(OUT)

# Run webapi_trim unit tests and CLI integration tests
trim-test:
	cd webapi_trim && moon test
	bash webapi_trim/tests/cli_test.sh

# Remove build artifacts
clean:
	moon -C webapi clean
	moon -C webapi_gen clean
	moon -C webapi_trim clean
	moon -C examples clean
