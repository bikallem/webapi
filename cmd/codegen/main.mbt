///|
/// Process a WebIDL file from disk
fn process_webidl_file(file_path : String) -> Unit {
  let result : Result[String, _] = try? @fs.read_file_to_string(file_path)
  match result {
    Ok(content) => {
      println("═══════════════════════════════════════════════════════════════════════")
      println("Processing: \{file_path}")
      println("═══════════════════════════════════════════════════════════════════════")
      
      let definitions = @idl_parser.parse(content)
      println("Parsed \{definitions.length()} definitions")
      
      let generated_code = @generator.generate_package_code(definitions)
      println(generated_code)
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
    
    process_webidl_file("webidls/EventTarget.webidl")
    process_webidl_file("webidls/Window.webidl")
    process_webidl_file("webidls/Document.webidl")
    process_webidl_file("webidls/Element.webidl")
    process_webidl_file("webidls/Node.webidl")
  } else {
    println("WebIDL to MoonBit Code Generator v0.1.0")
    println("Processing WebIDL definitions and generating MoonBit code\n")
    
    match output_dir {
      Some(dir) => println("Output directory: \{dir}\n")
      None => ()
    }
    
    // Process each specified file
    for file_path in files {
      process_webidl_file(file_path)
    }
  }
  
  println("✓ Code generation complete")
}
