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
    println(flattened.to_json().stringify(indent=2))
  } catch {
    e => println("Error: \{e}")
  }
}
