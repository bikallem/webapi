# Repository Guidelines

## Project Structure & Module Organization
- `webapi_gen/`: MoonBit code generator that parses WebIDL and emits bindings.
- `src/`: generated WebAPI bindings and shared runtime files (`*_js.mbt`, `*_wasm.mbt`, typedefs, enums, dictionaries, interfaces).
- `examples/`: runnable example apps (JS target currently active).
- `tests/`: Playwright end-to-end tests for examples.
- `docs/`: design notes and plans.

Treat `src/` as generated output. For API shape or codegen behavior changes, edit `webapi_gen/` first, then regenerate.

## Build, Test, and Development Commands
- `make gen`: run generator (`webapi_gen/cmd/main`) and rewrite `src/`.
- `make gen-test`: run generator package tests.
- `make check`: type-check bindings (`moon check --target js`).
- `make build-examples`: build `examples/` for JS release.
- `make test-playwright`: run browser tests in `tests/`.
- `make fmt`: format MoonBit code.
- `make info`: refresh `.mbti` interface snapshots (`moon info --target js`).
- `make all`: full pipeline (`gen`, `check`, `fmt`, `info`, examples, Playwright).

## Coding Style & Naming Conventions
- Language: MoonBit (`.mbt`), formatted with `moon fmt`.
- Naming: functions/variables in `snake_case`; generated overloads use suffixes like `_2`.
- Keep manual edits out of generated files unless the change is intentionally regenerated in the same commit.
- Prefer small, focused edits in `webapi_gen/emit`, `type_mapping`, and `type_registry` for behavior changes.

## Testing Guidelines
- Unit/white-box tests live in `webapi_gen/**/*_wbtest.mbt` and package tests.
- End-to-end coverage uses Playwright specs in `tests/*.spec.ts`.
- When changing codegen:
  1. `make gen-test`
  2. `make gen`
  3. `make check`
  4. `make test-playwright` (for behavioral/user-facing changes)

## Commit & Pull Request Guidelines
- Follow existing commit style: `feat:`, `fix:`, `refactor:`, `test:`, `chore:` (imperative, concise).
- Keep commits scoped (generator logic, tests, regenerated output).
- PRs should include:
  - what changed and why,
  - key files touched,
  - commands run for validation,
  - regenerated `src/` diff when generator behavior changes.
