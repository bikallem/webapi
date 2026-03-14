///|
suberror TrimCliError {
  FatalError(String)
} derive(Show)

///|
let default_source_path : String = "src/webapi.mjs"

///|
let usage_exit_code : Int = 2

///|
let failure_exit_code : Int = 1

///|
priv struct TrimCliOptions {
  wasm_path : String
  output_path : String
  source_path : String
}

///|
fn build_cli_command() -> @argparse.Command {
  @argparse.Command(
    "webapi_trim",
    about="Trim webapi.mjs to only the modules imported by a wasm binary.",
    options=[
      OptionArg(
        "output",
        short='o',
        long="",
        about="Output file path (default: webapi.mjs next to the input wasm).",
      ),
      OptionArg(
        "source",
        long="source",
        about="Path to the full webapi.mjs source.",
        default_values=[default_source_path],
      ),
    ],
    positionals=[
      PositionArg(
        "input",
        about="Path to the input wasm file.",
        num_args=@argparse.ValueRange::single(),
      ),
    ],
  )
}

///|
fn parse_cli_matches(matches : @argparse.Matches) -> TrimCliOptions {
  let wasm_path = matches.values["input"][0]
  let output_path = matches.values
    .get("output")
    .map(values => values[0])
    .unwrap_or("")
  let source_path = matches.values
    .get("source")
    .map(values => values[0])
    .unwrap_or(default_source_path)
  { wasm_path, output_path, source_path }
}

///|
fn parse_cli(
  argv : ArrayView[String],
  env? : Map[String, String] = {},
) -> TrimCliOptions raise {
  parse_cli_matches(build_cli_command().parse(argv~, env~))
}

///|
fn runtime_argv() -> Array[String] {
  let args = @sys.get_cli_args()
  if args.length() > 1 {
    args[1:].to_array()
  } else {
    []
  }
}

///|
fn parse_runtime_cli() -> TrimCliOptions raise {
  parse_cli(runtime_argv())
}

///|
#cfg(any(target="native", target="llvm"))
extern "c" fn runtime_native_exit(code : Int) = "exit"

///|
#cfg(any(target="native", target="llvm"))
fn[T] exit_with(code : Int) -> T {
  runtime_native_exit(code)
  panic()
}

///|
#cfg(target="js")
extern "js" fn runtime_js_try_exit(code : Int) -> Bool =
  #| function(code) {
  #|   if (typeof process !== "undefined" && typeof process.exit === "function") {
  #|     process.exit(code);
  #|     return true;
  #|   }
  #|   return false;
  #| }

///|
#cfg(target="js")
fn[T] exit_with(code : Int) -> T {
  if !runtime_js_try_exit(code) {
    panic()
  }
  panic()
}

///|
#cfg(any(target="wasm", target="wasm-gc"))
fn runtime_wasm_exit(code : Int) -> Unit = "__moonbit_sys_unstable" "exit"

///|
#cfg(any(target="wasm", target="wasm-gc"))
fn[T] exit_with(code : Int) -> T {
  runtime_wasm_exit(code)
  panic()
}

///|
fn resolve_output_path(options : TrimCliOptions) -> String {
  if options.output_path.is_empty() {
    @path.Path(options.wasm_path).dirname().join("webapi.mjs").to_string()
  } else {
    options.output_path
  }
}

///|
fn run_with_options(options : TrimCliOptions) -> Unit raise {
  // Read wasm binary
  let wasm_bytes = @fs.read_file_to_bytes(options.wasm_path) catch {
    err => raise FatalError("cannot read \{options.wasm_path}: \{err}")
  }
  let imports = parse_wasm_imports(wasm_bytes) catch {
    err => raise FatalError(err.message())
  }
  // Build map of module name → required field names
  let required_imports : Map[String, @hashset.HashSet[String]] = {}
  for pair in imports {
    let (mod_name, field_name) = pair
    match required_imports.get(mod_name) {
      Some(fields) => fields.add(field_name)
      None => {
        let fields : @hashset.HashSet[String] = @hashset.new()
        fields.add(field_name)
        required_imports[mod_name] = fields
      }
    }
  }
  let total_imports = imports.length()
  let total_modules = required_imports.length()
  println(
    "Found \{total_imports} imports across \{total_modules} modules in \{options.wasm_path}",
  )
  // Read and filter webapi.mjs
  let source = @fs.read_file_to_string(options.source_path) catch {
    err => raise FatalError("cannot read \{options.source_path}: \{err}")
  }
  let trimmed = filter_js_modules(source, required_imports)
  // Default output: webapi.mjs next to the input wasm file
  let out = resolve_output_path(options)
  @fs.write_string_to_file(out, trimmed) catch {
    err => raise FatalError("cannot write \{out}: \{err}")
  }
  let src_lines = source.split("\n").fold(init=0, fn(acc, _) { acc + 1 })
  let out_lines = trimmed.split("\n").fold(init=0, fn(acc, _) { acc + 1 })
  println("Wrote \{out}: \{out_lines} lines (from \{src_lines})")
}

///|
fn main {
  let options = parse_runtime_cli() catch {
    err => {
      println(err.to_string())
      exit_with(usage_exit_code)
    }
  }
  run_with_options(options) catch {
    FatalError(message) => {
      println("error: " + message)
      exit_with(failure_exit_code)
    }
    err => {
      println("error: \{err}")
      exit_with(failure_exit_code)
    }
  }
}
