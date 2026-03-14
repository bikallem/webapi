#!/usr/bin/env bash
#
# CLI integration tests for webapi_trim.
# Run from the project root: bash src/trim/tests/cli_test.sh
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
FIXTURES="$SCRIPT_DIR/fixtures"
TMPDIR_TEST="$(mktemp -d)"
trap 'rm -rf "$TMPDIR_TEST"' EXIT

pass=0
fail=0

run_trim() {
  cd "$(dirname "$SCRIPT_DIR"/..)" && cd "$(git rev-parse --show-toplevel)"
  moon run src/trim -- "$@" 2>/dev/null
}

assert_eq() {
  local test_name="$1" expected="$2" actual="$3"
  if diff -u "$expected" "$actual" > "$TMPDIR_TEST/diff.out" 2>&1; then
    echo "  PASS: $test_name"
    pass=$((pass + 1))
  else
    echo "  FAIL: $test_name"
    cat "$TMPDIR_TEST/diff.out"
    fail=$((fail + 1))
  fi
}

assert_stdout_contains() {
  local test_name="$1" pattern="$2" actual="$3"
  if grep -qF -- "$pattern" "$actual"; then
    echo "  PASS: $test_name"
    pass=$((pass + 1))
  else
    echo "  FAIL: $test_name — expected stdout to contain: $pattern"
    echo "  Got:"
    cat "$actual"
    fail=$((fail + 1))
  fi
}

assert_exit_code() {
  local test_name="$1" expected_code="$2" actual_code="$3"
  if [ "$actual_code" -eq "$expected_code" ]; then
    echo "  PASS: $test_name"
    pass=$((pass + 1))
  else
    echo "  FAIL: $test_name — expected exit code $expected_code, got $actual_code"
    fail=$((fail + 1))
  fi
}

PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"

echo "=== webapi_trim CLI tests ==="
echo

# --- Test: --help flag ---
echo "# --help flag"
set +e
(cd "$PROJECT_ROOT" && moon run src/trim -- --help) > "$TMPDIR_TEST/help.out" 2>/dev/null
code=$?
set -e
assert_exit_code "--help exits 0" 0 "$code"
assert_stdout_contains "--help shows usage" "Usage: webapi_trim" "$TMPDIR_TEST/help.out"
assert_stdout_contains "--help shows -o option" "-o <output>" "$TMPDIR_TEST/help.out"
assert_stdout_contains "--help shows --source option" "--source <source>" "$TMPDIR_TEST/help.out"

# --- Test: no arguments ---
echo "# no arguments"
set +e
(cd "$PROJECT_ROOT" && moon run src/trim --) > "$TMPDIR_TEST/noargs.out" 2>/dev/null
code=$?
set -e
assert_exit_code "no args exits 2" 2 "$code"
assert_stdout_contains "no args prints required input error" "requires at least 1 values" "$TMPDIR_TEST/noargs.out"

# --- Test: missing wasm file ---
echo "# missing wasm file"
set +e
(cd "$PROJECT_ROOT" && moon run src/trim -- /nonexistent/file.wasm --source "$FIXTURES/sample.mjs") > "$TMPDIR_TEST/missing.out" 2>/dev/null
code=$?
set -e
assert_exit_code "missing file exits 1" 1 "$code"
assert_stdout_contains "missing file prints error" "cannot read" "$TMPDIR_TEST/missing.out"

# --- Test: unknown option ---
echo "# unknown option"
set +e
(cd "$PROJECT_ROOT" && moon run src/trim -- --bogus) > "$TMPDIR_TEST/unknown.out" 2>/dev/null
code=$?
set -e
assert_exit_code "unknown option exits 2" 2 "$code"
assert_stdout_contains "unknown option prints argparse error" "unexpected argument '--bogus' found" "$TMPDIR_TEST/unknown.out"

# --- Test: -o writes to specified path ---
echo "# -o flag"
(cd "$PROJECT_ROOT" && moon run src/trim -- "$FIXTURES/test.wasm" --source "$FIXTURES/sample.mjs" -o "$TMPDIR_TEST/out.mjs") > "$TMPDIR_TEST/o_stdout.out" 2>/dev/null
assert_eq "-o produces expected output" "$FIXTURES/expected.mjs" "$TMPDIR_TEST/out.mjs"
assert_stdout_contains "-o prints summary" "Wrote" "$TMPDIR_TEST/o_stdout.out"

# --- Test: output is valid JS ---
echo "# output validity"
if command -v node > /dev/null 2>&1; then
  set +e
  node -c "$TMPDIR_TEST/out.mjs" > /dev/null 2>&1
  code=$?
  set -e
  assert_exit_code "output is valid JS" 0 "$code"
else
  echo "  SKIP: node not available"
fi

# --- Test: default output path (next to wasm) ---
echo "# default output path"
cp "$FIXTURES/test.wasm" "$TMPDIR_TEST/test.wasm"
(cd "$PROJECT_ROOT" && moon run src/trim -- "$TMPDIR_TEST/test.wasm" --source "$FIXTURES/sample.mjs") > "$TMPDIR_TEST/default_stdout.out" 2>/dev/null
assert_eq "default output next to wasm" "$FIXTURES/expected.mjs" "$TMPDIR_TEST/webapi.mjs"

# --- Test: with real wasm binary from examples (if available) ---
echo "# real wasm binary"
REAL_WASM="$PROJECT_ROOT/src/examples/_build/wasm-gc/release/build/dom/dom.wasm"
REAL_SOURCE="$PROJECT_ROOT/src/webapi.mjs"
if [ -f "$REAL_WASM" ] && [ -f "$REAL_SOURCE" ]; then
  (cd "$PROJECT_ROOT" && moon run src/trim -- "$REAL_WASM" --source "$REAL_SOURCE" -o "$TMPDIR_TEST/real.mjs") > "$TMPDIR_TEST/real_stdout.out" 2>/dev/null

  # Output should be valid JS
  if command -v node > /dev/null 2>&1; then
    set +e
    node -c "$TMPDIR_TEST/real.mjs" > /dev/null 2>&1
    code=$?
    set -e
    assert_exit_code "real wasm produces valid JS" 0 "$code"
  fi

  # Output should be smaller than source
  src_lines=$(wc -l < "$REAL_SOURCE")
  out_lines=$(wc -l < "$TMPDIR_TEST/real.mjs")
  if [ "$out_lines" -lt "$src_lines" ]; then
    echo "  PASS: output is smaller ($out_lines < $src_lines lines)"
    pass=$((pass + 1))
  else
    echo "  FAIL: output not smaller ($out_lines >= $src_lines lines)"
    fail=$((fail + 1))
  fi

  # Output should contain wasmImportObject
  assert_stdout_contains "real output has wasmImportObject" "wasmImportObject" "$TMPDIR_TEST/real.mjs"
else
  echo "  SKIP: no built examples (run 'make build-examples' first)"
fi

echo
echo "=== Results: $pass passed, $fail failed ==="
[ "$fail" -eq 0 ]
