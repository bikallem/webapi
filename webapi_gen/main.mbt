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
    let definitions = @parser.parse_file(filepath) |> filter_idl(config, _)
    let type_registry = TypeRegistry::new(definitions)
    let flattened = merge_partials(definitions) |> flatten

    // emit enums
    let enum_files = emit_all_enums(flattened)

    // Generate enums
    println("=== Generated Enums ===")
    for filename, code in enum_files {
      println("\n--- \{filename} ---")
      println(code)
    }

    // Generate dictionaries
    println("=== Generated Dictionaries ===")
    for filename, code in emit_all_dictionaries(flattened, type_registry) {
      println("\n--- \{filename} ---")
      println(code)
    }

    // Generate interfaces
    println("=== Generated Interfaces ===")
    for filename, code in emit_all_interfaces(flattened, type_registry) {
      println("\n--- \{filename} ---")
      println(code)
    }
  } catch {
    e => println("Error: \{e}")
  }
}
