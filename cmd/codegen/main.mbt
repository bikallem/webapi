///|
fn main {
  println("WebIDL to MoonBit Code Generator v0.1.0")
  println("Processing WebIDL definitions and generating MoonBit code\n")
  
  // Test case 1: EventTarget
  let event_target_idl = "dictionary EventListenerOptions { boolean capture = false; }; dictionary AddEventListenerOptions : EventListenerOptions { boolean passive; }; interface EventTarget { undefined addEventListener(DOMString type); undefined removeEventListener(DOMString type); boolean dispatchEvent(Event event); };"
  
  println("═══════════════════════════════════════════════════════════════════════")
  println("EventTarget.webidl")
  println("═══════════════════════════════════════════════════════════════════════")
  
  let definitions = @idl_parser.parse(event_target_idl)
  println("Parsed \{definitions.length()} definitions")
  
  let generated_code = @generator.generate_package_code(definitions)
  println(generated_code)
  
  // Test case 2: Simple Window interface
  let window_idl = "interface Window { void alert(DOMString message); void close(); };"
  
  println("═══════════════════════════════════════════════════════════════════════")
  println("Window.webidl (simplified)")
  println("═══════════════════════════════════════════════════════════════════════")
  
  let window_defs = @idl_parser.parse(window_idl)
  println("Parsed \{window_defs.length()} definitions")
  
  let window_code = @generator.generate_package_code(window_defs)
  println(window_code)
  
  println("✓ Code generation complete")
}
