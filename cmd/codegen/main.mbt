///|
fn main {
  println("WebIDL to MoonBit Code Generator v0.1.0\n")
  
  // Test with real EventTarget.webidl patterns
  let event_target_idl = "dictionary EventListenerOptions { boolean capture = false; }; dictionary AddEventListenerOptions : EventListenerOptions { boolean passive; }; interface EventTarget { undefined addEventListener(DOMString type); undefined removeEventListener(DOMString type); boolean dispatchEvent(Event event); };"
  
  let definitions = @idl_parser.parse(event_target_idl)
  println("Parsed \{definitions.length()} definitions\n")
  
  // Generate MoonBit code from definitions
  let generated_code = @generator.generate_package_code(definitions)
  println("Generated MoonBit code:")
  println("━".repeat(60))
  println(generated_code)
  println("━".repeat(60))
}
