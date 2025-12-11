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
    let config = GeneratorConfig::load_config(config_file)
    let merged = @parser.parse_file(filepath)
      |> filter_idl(config, _)
      |> merge_partials
      |> flatten
    println(merged.to_json().stringify(indent=2))
  } catch {
    e => println("Error: \{e}")
  }
}
