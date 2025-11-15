///|
/// Extract filename from path (e.g., "webidls/Window.webidl" -> "window")
fn get_module_name(file_path : String) -> String {
  // Simple approach: find last / and .webidl
  let filename_start = {
    let mut idx = 0
    for i = 0; i < file_path.length(); i = i + 1 {
      if file_path[i] == '/' {
        idx = i + 1
      }
    }
    idx
  }
  
  let filename_end = {
    if file_path.has_suffix(".webidl") {
      file_path.length() - 7
    } else {
      file_path.length()
    }
  }
  
  if filename_start < filename_end {
    "generated"
  } else {
    "generated"
  }
}

///|
/// Process a WebIDL file from disk and optionally write to file
fn process_webidl_file(file_path : String, output_dir : String?) -> Unit {
  let result : Result[String, _] = try? @fs.read_file_to_string(file_path)
  match result {
    Ok(content) => {
      println("═══════════════════════════════════════════════════════════════════════")
      println("Processing: \{file_path}")
      println("═══════════════════════════════════════════════════════════════════════")
      
      let definitions = @idl_parser.parse(content)
      println("Parsed \{definitions.length()} definitions")
      
      let generated_code = @generator.generate_package_code(definitions)
      
      // If output directory specified, write to file
      match output_dir {
        Some(dir) => {
          let module_name = get_module_name(file_path)
          let output_file = dir + "/" + module_name + ".mbt"
          
          let write_result : Result[Unit, _] = try? @fs.write_string_to_file(output_file, generated_code)
          match write_result {
            Ok(_) => println("✓ Written to: \{output_file}")
            Err(e) => println("Error writing \{output_file}: \{e}")
          }
        }
        None => {
          // Print to stdout if no output directory
          println(generated_code)
        }
      }
      println("")
    }
    Err(e) => println("Error reading \{file_path}: \{e}")
  }
}

///|
/// Print help message
fn print_help() -> Unit {
  println("WebIDL to MoonBit Code Generator v0.1.0")
  println("")
  println("Usage: moon run cmd/codegen [OPTIONS] [FILES]")
  println("")
  println("Options:")
  println("  --help, -h           Show this help message")
  println("  --output, -o DIR     Output directory for generated files (default: stdout)")
  println("")
  println("Arguments:")
  println("  FILES                WebIDL files to process")
  println("")
  println("Examples:")
  println("  moon run cmd/codegen webidls/Window.webidl")
  println("  moon run cmd/codegen --output generated/ webidls/*.webidl")
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
    println("WebIDL to MoonBit Code Generator v0.1.0")
    println("Processing WebIDL definitions and generating MoonBit code\n")
    
    println("Note: No files specified. Using default webidls/ directory.")
    println("Usage: moon run cmd/codegen [FILES] to process specific files")
    println("")
    
    process_webidl_file("webidls/EventTarget.webidl", output_dir)
    process_webidl_file("webidls/Window.webidl", output_dir)
    process_webidl_file("webidls/Document.webidl", output_dir)
    process_webidl_file("webidls/Element.webidl", output_dir)
    process_webidl_file("webidls/Node.webidl", output_dir)
  } else {
    println("WebIDL to MoonBit Code Generator v0.1.0")
    println("Processing WebIDL definitions and generating MoonBit code\n")
    
    match output_dir {
      Some(dir) => println("Output directory: \{dir}\n")
      None => ()
    }
    
    // Process each specified file
    for file_path in files {
      process_webidl_file(file_path, output_dir)
    }
  }
  
  println("✓ Code generation complete")
}
