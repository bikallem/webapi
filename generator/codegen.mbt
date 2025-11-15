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
          // Map IDL return type to MoonBit type
          let mb_type = @lib.map_idl_type(op.return_type)
          let type_str = @lib.moonbit_type_string(mb_type)
          
          // Use existing generate_ffi_binding
          let binding = generate_ffi_binding(
            iface.name, 
            op.name,
            type_str
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
