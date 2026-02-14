.PHONY: all gen gen-test check fmt info build-examples test-playwright serve clean

all: gen check fmt info build-examples test-playwright

# Run the code generator
gen:
	cd webapi_gen && moon run cmd/main

# Run code generator tests
gen-test:
	cd webapi_gen && moon test

# Type-check generated bindings
check:
	moon check --target js
	moon check --target wasm-gc

# Format all MoonBit code
fmt:
	moon fmt

# Update .mbti interface files
info:
	moon info --target js
	moon -C webapi_gen info --target wasm-gc

# Build examples for both targets
build-examples:
	cd examples && moon build --target js --release
	cd examples && moon build --target wasm-gc --release

# Run Playwright browser tests
test-playwright:
	cd tests && npx playwright test

# Serve examples locally at http://localhost:3000/examples/
serve:
	node tests/ws-echo-server.mjs & npx serve . -l 3000 --no-clipboard --symlinks

# Remove build artifacts
clean:
	moon clean
	cd webapi_gen && moon clean
	cd examples && moon clean
