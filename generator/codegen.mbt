///|
/// Generate MoonBit code from WebIDL definitions

///|
/// Generate MoonBit struct for a dictionary
pub fn generate_dictionary_struct(
  dict : @idl_parser.Dictionary
) -> String {
  "pub struct \{dict.name} {\n  // TODO: add fields\n}"
}

///|
/// Generate a complete MoonBit package from WebIDL definitions
pub fn generate_package_code(
  definitions : Array[@idl_parser.Definition]
) -> String {
  let mut code = "///| Generated from WebIDL - DO NOT EDIT MANUALLY\n\n"
  
  // Process each definition
  for def in definitions {
    match def {
      @idl_parser.Definition::InterfaceDef(iface) => {
        code = code + "/// \{iface.name} interface\n"
        code = code + "#external type \{iface.name}\n"
        code = code + "\n"
        
        // Generate FFI bindings for operations
        for op in iface.operations {
          let binding = generate_ffi_binding(
            iface.name, 
            op.name,
            "Unit"  // TODO: map return type properly
          )
          code = code + binding + "\n"
        }
        code = code + "\n"
      }
      @idl_parser.Definition::DictionaryDef(dict) => {
        let dict_code = generate_dictionary_struct(dict)
        code = code + dict_code + "\n\n"
      }
      _ => ()
    }
  }
  code
}
