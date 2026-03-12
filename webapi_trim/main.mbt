///|
fn usage() -> Unit {
  println(
    "Usage: webapi_trim <input.wasm> [options]\n\nOptions:\n  -o <path>       Output file (default: webapi.mjs next to input.wasm)\n  --source <path> Path to full webapi.mjs (default: webapi/webapi.mjs)",
  )
}

///|
suberror TrimCliError {
  UsageError(String)
  FatalError(String)
} derive(Show)

///|
#cfg(any(target="native", target="llvm"))
extern "c" fn runtime_native_exit(code : Int) = "exit"

///|
#cfg(any(target="native", target="llvm"))
fn exit_failure() -> Unit {
  runtime_native_exit(1)
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
fn exit_failure() -> Unit {
  if !runtime_js_try_exit(1) {
    panic()
  }
}

///|
#cfg(any(target="wasm", target="wasm-gc"))
fn runtime_wasm_exit(code : Int) -> Unit = "__moonbit_sys_unstable" "exit"

///|
#cfg(any(target="wasm", target="wasm-gc"))
fn exit_failure() -> Unit {
  runtime_wasm_exit(1)
}

///|
fn run() -> Unit raise {
  let args = @sys.get_cli_args()
  let mut wasm_path = ""
  let mut output_path = ""
  let mut source_path = "webapi/webapi.mjs"
  let mut i = 1
  while i < args.length() {
    match args[i] {
      "-o" => {
        guard i + 1 < args.length() else {
          raise UsageError("-o requires an argument")
        }
        i += 1
        output_path = args[i]
      }
      "--source" => {
        guard i + 1 < args.length() else {
          raise UsageError("--source requires an argument")
        }
        i += 1
        source_path = args[i]
      }
      "--help" | "-h" => {
        usage()
        return
      }
      arg => {
        if arg.has_prefix("-") {
          raise UsageError("unknown option: " + arg)
        }
        if wasm_path.is_empty() {
          wasm_path = arg
        } else {
          raise UsageError("unexpected argument: " + arg)
        }
      }
    }
    i += 1
  }
  if wasm_path.is_empty() {
    raise UsageError("no input wasm file specified")
  }
  // Read wasm binary
  let wasm_bytes = @fs.read_file_to_bytes(wasm_path) catch {
    err => raise FatalError("cannot read \{wasm_path}: \{err}")
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
    "Found \{total_imports} imports across \{total_modules} modules in \{wasm_path}",
  )
  // Read and filter webapi.mjs
  let source = @fs.read_file_to_string(source_path) catch {
    err => raise FatalError("cannot read \{source_path}: \{err}")
  }
  let trimmed = filter_js_modules(source, required_imports)
  // Default output: webapi.mjs next to the input wasm file
  let out = if output_path.is_empty() {
    @path.Path(wasm_path).dirname().join("webapi.mjs").to_string()
  } else {
    output_path
  }
  @fs.write_string_to_file(out, trimmed) catch {
    err => raise FatalError("cannot write \{out}: \{err}")
  }
  let src_lines = source.split("\n").fold(init=0, fn(acc, _) { acc + 1 })
  let out_lines = trimmed.split("\n").fold(init=0, fn(acc, _) { acc + 1 })
  println("Wrote \{out}: \{out_lines} lines (from \{src_lines})")
}

///|
fn main {
  run() catch {
    UsageError(message) => {
      println("error: " + message)
      usage()
      exit_failure()
    }
    FatalError(message) => {
      println("error: " + message)
      exit_failure()
    }
    err => {
      println("error: \{err}")
      exit_failure()
    }
  }
}
