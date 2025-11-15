///|
fn main {
  println("WebIDL to MoonBit Code Generator v0.1.0\n")
  
  // Test with real EventTarget.webidl patterns (simplified to single line)
  let event_target_idl = "dictionary EventListenerOptions { boolean capture = false; }; dictionary AddEventListenerOptions : EventListenerOptions { boolean passive; }; interface EventTarget { undefined addEventListener(DOMString type); undefined removeEventListener(DOMString type); boolean dispatchEvent(Event event); };"
  
  let definitions = @idl_parser.parse(event_target_idl)
  println("Parsed \{definitions.length()} definitions from EventTarget\n")
  
  for def in definitions {
    match def {
      @idl_parser.Definition::InterfaceDef(iface) => {
        println("▶ Interface: \{iface.name}")
        if iface.operations.length() > 0 {
          println("  Operations (\{iface.operations.length()}):")
          for op in iface.operations {
            println("    • \{op.name}()")
          }
        }
      }
      @idl_parser.Definition::DictionaryDef(dict) => {
        println("▶ Dictionary: \{dict.name}")
        if dict.fields.length() > 0 {
          println("  Fields: \{dict.fields.length()}")
        }
      }
      _ => ()
    }
    println("")
  }
}
