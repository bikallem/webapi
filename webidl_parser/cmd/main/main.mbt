///|
fn main {
  let args = @sys.get_cli_args()
  if args.length() < 2 {
    println("Usage: moon run cmd/main <webidl_file>")
    return
  }
  let filepath = args[1]
  try {
    let defs = @webidl_parser.parse_file(filepath)
    println(defs.to_json().stringify())
  } catch {
    e => println("Error: \{e}")
  }
}
