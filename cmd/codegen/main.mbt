///|
fn main {
  println("WebIDL to MoonBit Code Generator v0.1.0")
  println("Usage: codegen <webidl_files...>")

  // Test tokenizer
  let test_idl = "interface Window { void alert(DOMString message); };"
  let tokens = @idl_parser.tokenize(test_idl)
  println("Tokenized \{tokens.length()} tokens")

  // Test parser
  let definitions = @idl_parser.parse(test_idl)
  println("Parsed \{definitions.length()} definitions")
}
