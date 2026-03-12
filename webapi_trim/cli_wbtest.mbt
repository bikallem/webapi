///|
test "parse_cli uses default source path and empty explicit output" {
  let options = parse_cli(["fixtures/test.wasm"]) catch {
    err => fail(err.to_string())
  }
  assert_eq(options.wasm_path, "fixtures/test.wasm")
  assert_eq(options.output_path, "")
  assert_eq(options.source_path, default_source_path)
}

///|
test "parse_cli accepts output and source options" {
  let options = parse_cli([
    "fixtures/test.wasm", "-o", "out.mjs", "--source", "full.mjs",
  ]) catch {
    err => fail(err.to_string())
  }
  assert_eq(options.wasm_path, "fixtures/test.wasm")
  assert_eq(options.output_path, "out.mjs")
  assert_eq(options.source_path, "full.mjs")
}

///|
test "resolve_output_path defaults next to input wasm" {
  let options = TrimCliOptions::{
    wasm_path: "/tmp/build/sample.wasm",
    output_path: "",
    source_path: default_source_path,
  }
  assert_eq(resolve_output_path(options), "/tmp/build/webapi.mjs")
}

///|
test "build_cli_command help includes declared options" {
  let help = build_cli_command().render_help()
  inspect(help.contains("Usage: webapi_trim"), content="true")
  inspect(help.contains("-o <output>"), content="true")
  inspect(help.contains("--source <source>"), content="true")
}

///|
test "parse_cli surfaces argparse parse errors" {
  try parse_cli(["--bogus"]) catch {
    err => {
      let message = err.to_string()
      inspect(
        message.contains("unexpected argument '--bogus' found"),
        content="true",
      )
      inspect(message.contains("Usage: webapi_trim"), content="true")
    }
  } noraise {
    _ => fail("expected parse error")
  }
}
