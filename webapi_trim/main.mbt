///|
fn usage() -> Unit {
  println(
    "Usage: webapi_trim <input.wasm> [options]\n\nOptions:\n  -o <path>       Output file (default: webapi.mjs next to input.wasm)\n  --source <path> Path to full webapi.mjs (default: webapi/webapi.mjs)",
  )
}

///|
fn main {
  let args = @sys.get_cli_args()
  let mut wasm_path = ""
  let mut output_path = ""
  let mut source_path = "webapi/webapi.mjs"
  let mut i = 1
  while i < args.length() {
    match args[i] {
      "-o" => {
        guard i + 1 < args.length() else {
          println("error: -o requires an argument")
          usage()
          return
        }
        i += 1
        output_path = args[i]
      }
      "--source" => {
        guard i + 1 < args.length() else {
          println("error: --source requires an argument")
          usage()
          return
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
          println("error: unknown option: " + arg)
          usage()
          return
        }
        if wasm_path.is_empty() {
          wasm_path = arg
        } else {
          println("error: unexpected argument: " + arg)
          usage()
          return
        }
      }
    }
    i += 1
  }
  if wasm_path.is_empty() {
    println("error: no input wasm file specified")
    usage()
    return
  }
  // Read wasm binary
  let wasm_bytes = @fs.read_file_to_bytes(wasm_path) catch {
    err => {
      println("error: cannot read \{wasm_path}: \{err}")
      return
    }
  }
  let imports = parse_wasm_imports(wasm_bytes)
  // Collect unique module names
  let modules : @hashset.HashSet[String] = @hashset.new()
  for pair in imports {
    modules.add(pair.0)
  }
  let total_imports = imports.length()
  let total_modules = modules.length()
  println(
    "Found \{total_imports} imports across \{total_modules} modules in \{wasm_path}",
  )
  // Read and filter webapi.mjs
  let source = @fs.read_file_to_string(source_path) catch {
    err => {
      println("error: cannot read \{source_path}: \{err}")
      return
    }
  }
  let trimmed = filter_js_modules(source, modules)
  // Default output: webapi.mjs next to the input wasm file
  let out = if output_path.is_empty() {
    @path.Path(wasm_path).dirname().join("webapi.mjs").to_string()
  } else {
    output_path
  }
  @fs.write_string_to_file(out, trimmed) catch {
    err => {
      println("error: cannot write \{out}: \{err}")
      return
    }
  }
  let src_lines = source.split("\n").fold(init=0, fn(acc, _) { acc + 1 })
  let out_lines = trimmed.split("\n").fold(init=0, fn(acc, _) { acc + 1 })
  println("Wrote \{out}: \{out_lines} lines (from \{src_lines})")
}
