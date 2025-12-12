///|
fn main {
  let args = @sys.get_cli_args()
  if args.length() < 2 {
    println("Usage: moon run cmd/main <webidl_file> [config_file]")
    return
  }
  let filepath = args[1]
  let config_file = if args.length() > 2 { args[2] } else { "config.json" }
  try {
    let content = @fs.read_file_to_string(config_file) catch {
      e => fail("failed to read config file: \{e}")
    }
    let config = @config.load_config_from_string(content)
    let flattened = @parser.parse_file(filepath)
      |> filter_idl(config, _)
      |> merge_partials
      |> flatten

    // emit enums
    let enum_files = emit_all_enums(flattened)

    // Output generated code
    println("=== Generated Enums ===")
    for filename, enum_content in enum_files {
      println("\n-- \{filename} ---")
      println(enum_content)
    }

    // Output generated dictionaries
    println("=== Generated Dictionaries ===")
    for filename, dict_content in emit_all_dictionaries(flattened) {
      println("\n-- \{filename} ---")
      println(dict_content)
    }
  } catch {
    e => println("Error: \{e}")
  }
}
