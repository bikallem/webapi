///|
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
fn main {
  println("WebIDL to MoonBit Code Generator v0.1.0")
  println("Processing WebIDL definitions and generating MoonBit code\n")
  
  // Process real WebIDL files from webidls directory
  process_webidl_file("webidls/EventTarget.webidl")
  process_webidl_file("webidls/Window.webidl")
  process_webidl_file("webidls/Document.webidl")
  process_webidl_file("webidls/Element.webidl")
  process_webidl_file("webidls/Node.webidl")
  
  println("✓ Code generation complete")
}
