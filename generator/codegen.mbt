///|
/// Generate MoonBit code from WebIDL definitions

///|
/// Generate getter and setter methods for an attribute
fn generate_attribute_methods(
  interface_name : String,
  attr : @idl_parser.Attribute
) -> String {
  let mb_type = @lib.map_idl_type(attr.attr_type)
  let type_str = @lib.moonbit_type_string(mb_type)
  let snake_name = generate_ffi_binding_snake_helper(attr.name)
  
  let mut methods = ""
  
  // Generate getter
  methods = methods + "pub fn \{interface_name}::\{snake_name}(self : \{interface_name}) -> \{type_str} = \"\{interface_name}\" \"\{attr.name}\"\n"
  
  // Generate setter only if not readonly
  if !attr.is_readonly {
    methods = methods + "pub fn \{interface_name}::set_\{snake_name}(self : \{interface_name}, value : \{type_str}) -> Unit = \"\{interface_name}\" \"set_\{attr.name}\"\n"
  }
  
  methods
}

///|
/// Helper to convert to snake_case - wraps the snake case converter
fn generate_ffi_binding_snake_helper(name : String) -> String {
  let mut result = ""
  let mut index = 0
  for c in name {
    if index > 0 && c.is_ascii_uppercase() {
      result = result + "_"
      result = result + c.to_ascii_lowercase().to_string()
    } else {
      result = result + c.to_string()
    }
    index = index + 1
  }
  result
}

///|
/// Generate MoonBit struct for a dictionary
pub fn generate_dictionary_struct(
  dict : @idl_parser.Dictionary
) -> String {
  let mut struct_str = "pub struct \{dict.name} {\n"
  
  for i = 0; i < dict.fields.length(); i = i + 1 {
    let field = dict.fields[i]
    let field_name = field.0
    let field_type = field.1
    let is_optional = field.2
    let mb_type = @lib.map_idl_type(field_type)
    let type_str = if is_optional {
      "Option[\{@lib.moonbit_type_string(mb_type)}]"
    } else {
      @lib.moonbit_type_string(mb_type)
    }
    struct_str = struct_str + "  \{field_name} : \{type_str}\n"
  }
  
  struct_str = struct_str + "}"
  struct_str
}

///|
/// Generate a complete MoonBit package from WebIDL definitions
/// Processes definitions in inheritance order (base types first)
pub fn generate_package_code(
  definitions : Array[@idl_parser.Definition]
) -> String {
  let mut code = "///| Generated from WebIDL - DO NOT EDIT MANUALLY\n\n"
  
  // Resolve inheritance order to ensure base types come before derived types
  let sorted_defs = resolve_inheritance_order(definitions)
  
  // Process each definition in sorted order
  for def in sorted_defs {
    match def {
      @idl_parser.Definition::InterfaceDef(iface) => {
        code = code + "/// \{iface.name} interface\n"
        code = code + "#external type \{iface.name}\n"
        code = code + "\n"
        
        // Generate FFI bindings for attributes (getters/setters)
        for attr in iface.attributes {
          let attr_methods = generate_attribute_methods(iface.name, attr)
          code = code + attr_methods + "\n"
        }
        
        // Generate FFI bindings for operations
        for op in iface.operations {
          // Map IDL return type to MoonBit type
          let mb_type = @lib.map_idl_type(op.return_type)
          let type_str = @lib.moonbit_type_string(mb_type)
          
          // Use existing generate_ffi_binding with parameters
          let binding = generate_ffi_binding(
            iface.name, 
            op.name,
            type_str,
            parameters=op.parameters
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
