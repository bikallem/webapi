///|
/// Derive base name without extension from a file path
fn basename_without_ext(path : String) -> String {
  let mut start = 0
  for i = 0; i < path.length(); i = i + 1 {
    if path[i] == '/' {
      start = i + 1
    }
  }
  let mut end = path.length()
  // find last '.' after start
  let mut i = path.length()
  while i > start {
    i = i - 1
    if path[i] == '.' {
      end = i
      break
    }
  }
  // Safe for ASCII file paths
  let view = try path[start: end] catch { _ => path[:] }
  view.to_string()
}

///|
/// Process an IDL file from disk using @webidl.parse_string and dump AST JSON
fn process_idl_file(file_path : String, output_dir : String?) -> Unit {
  let result : Result[String, _] = try? @fs.read_file_to_string(file_path)
  match result {
    Ok(content) => {
      println("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ")
      println("Processing: \{file_path}")
      println("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")

      // Parse IDL to get list of definitions
      let parsed : Result[_, _] = try? @webidl.parse_string(content)
      match parsed {
        Err(_) => {
          println("Parse error: failed to parse IDL")
          return
        }
        Ok(defs) => {
          // Serialize AST definitions as JSON
          let mut json_str = "["
          let mut first = true
          for def in defs {
            if not(first) {
              json_str = json_str + ","
            }
            first = false
            let def_json = def.to_json()
            json_str = json_str + def_json.to_string()
          }
          json_str = json_str + "]"
          let json_text = json_str

          // Determine output path
          let base = basename_without_ext(file_path)
          let out_dir : String = match output_dir {
            Some(d) => d
            None => "generated"
          }
          let out_path = out_dir + "/" + base + ".json"

          // Ensure write
          let write_res : Result[Unit, _] = try? @fs.write_string_to_file(out_path, json_text)
          match write_res {
            Ok(_) => println("✓ Written JSON: \{out_path}")
            Err(_) => println("Error writing \{out_path}")
          }
          println("")
        }
      }
    }
    Err(e) => println("Error reading \{file_path}: \{e}")
  }
}

///|
/// Print help message
fn print_help() -> Unit {
  println("IDL → AST JSON Dumper v0.1.0")
  println("")
  println("Usage: moon run cmd/codegen [OPTIONS] [FILES]")
  println("")
  println("Options:")
  println("  --help, -h           Show this help message")
  println("  --output, -o DIR     Output directory for generated JSON files (default: generated/)")
  println("")
  println("Arguments:")
  println("  FILES                Web IDL (.idl) files to process")
  println("")
  println("Examples:")
  println("  moon run cmd/codegen webidls/Event.idl")
  println("  moon run cmd/codegen --output generated/ webidls/*.idl")
}

///|
fn main {
  let args = @sys.get_cli_args()

  // If no arguments, show help
  if args.length() == 0 {
    print_help()
    return
  }
  let files : Array[String] = []
  let mut output_dir : String? = None
  let mut skip_next = false

  // Parse command-line arguments
  for i = 0; i < args.length(); i = i + 1 {
    if skip_next {
      skip_next = false
      continue
    }
    let arg = args[i]
    if arg == "--help" || arg == "-h" {
      print_help()
      return
    } else if arg == "--output" || arg == "-o" {
      // Next argument is the output directory
      if i + 1 < args.length() {
        output_dir = Some(args[i + 1])
        skip_next = true
      } else {
        println("Error: --output requires a directory argument")
        return
      }
    } else if arg.has_prefix("-") {
      println("Error: unknown option '\{arg}'")
      print_help()
      return
    } else {
      // This is a file path
      files.push(arg)
    }
  }

  // If no files specified, use default files from webidls/
  if files.length() == 0 {
    println("IDL → AST JSON Dumper v0.1.0")
    println("Parsing Web IDL and generating JSON\n")
    println("Note: No files specified. Using default webidls/ directory.")
    println("Default: Event.idl, EventListener.idl, EventTarget.idl")
    println("")
    process_idl_file("webidls/Event.idl", output_dir)
    process_idl_file("webidls/EventListener.idl", output_dir)
    process_idl_file("webidls/EventTarget.idl", output_dir)
  } else {
    println("IDL → AST JSON Dumper v0.1.0")
    println("Parsing Web IDL and generating JSON\n")
    match output_dir {
      Some(dir) => println("Output directory: \{dir}\n")
      None => ()
    }

    // Process each specified file
    for file_path in files {
      process_idl_file(file_path, output_dir)
    }
  }
  println("✓ JSON generation complete")
}
