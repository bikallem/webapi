///|
test "parse_cli uses default config path" {
  let options = parse_cli([]) catch { err => fail(err.to_string()) }
  assert_eq(options.config_file, default_config_file)
}

///|
test "parse_cli accepts explicit config path" {
  let options = parse_cli(["custom.toml"]) catch {
    err => fail(err.to_string())
  }
  assert_eq(options.config_file, "custom.toml")
}

///|
test "build_cli_command help mentions optional config positional" {
  let help = build_cli_command().render_help()
  inspect(help.contains("Usage: webapi_gen"), content="true")
  inspect(help.contains("[config]"), content="true")
}

///|
test "parse_cli rejects extra positional arguments" {
  try parse_cli(["a.toml", "b.toml"]) catch {
    err => {
      let message = err.to_string()
      inspect(
        message.contains("unexpected value 'b.toml' for '<config>' found"),
        content="true",
      )
      inspect(message.contains("Usage: webapi_gen"), content="true")
    }
  } noraise {
    _ => fail("expected parse error")
  }
}

///|
test "parse_cli rejects unknown options" {
  try parse_cli(["--bogus"]) catch {
    err => {
      let message = err.to_string()
      inspect(
        message.contains("unexpected argument '--bogus' found"),
        content="true",
      )
      inspect(message.contains("Usage: webapi_gen"), content="true")
    }
  } noraise {
    _ => fail("expected parse error")
  }
}
