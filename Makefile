.PHONY: all install gen gen-test gen-test-update check fmt info build-examples validate-wasm test-playwright serve clean

all: clean install gen check fmt info build-examples validate-wasm test-playwright

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
	moon check --target js
	moon check --target wasm-gc

# Format all MoonBit code
fmt:
	moon fmt
	moon -C webapi_gen fmt
	moon -C examples fmt

# Update .mbti interface files
info:
	moon info --target js
	moon -C webapi_gen info --target wasm-gc

# Build examples for both targets
build-examples:
	cd examples && moon build --target js --release
	cd examples && moon build --target wasm-gc --release

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
	cd tests && npx playwright test

# Serve examples locally at http://localhost:3000/examples/
serve:
	node tests/ws-echo-server.mjs & npx serve . -l 3000 --no-clipboard --symlinks

# Remove build artifacts
clean:
	moon clean
	moon -C webapi_gen clean
	moon -C examples clean
