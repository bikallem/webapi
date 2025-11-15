///|
fn main {
  println("WebIDL to MoonBit Code Generator v0.1.0")
  
  // Test with EventTarget example
  let test_idl = "dictionary EventListenerOptions { boolean capture; } interface EventTarget { undefined addEventListener(DOMString type); };"
  
  let definitions = @idl_parser.parse(test_idl)
  println("Parsed \{definitions.length()} definitions\n")
  
  for def in definitions {
    match def {
      @idl_parser.Definition::InterfaceDef(iface) => {
        println("Interface: \{iface.name}")
        println("  Operations: \{iface.operations.length()}")
        for op in iface.operations {
          println("    • \{op.name}")
        }
      }
      @idl_parser.Definition::DictionaryDef(dict) => {
        println("Dictionary: \{dict.name}")
        println("  Fields: \{dict.fields.length()}")
      }
      _ => println("? Other definition")
    }
  }
}
