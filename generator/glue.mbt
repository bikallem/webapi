///|
/// Generate JavaScript glue code for WebIDL FFI support

///|
/// Helper to generate valid function names from interface names
fn glue_helper_name(name : String) -> String {
  // Convert camelCase to snake_case: EventTarget => event_target
  let mut result = ""
  for i in 0..<name.length() {
    match name.get_char(i) {
      Some(ch) => {
        let is_upper = ch >= 'A' && ch <= 'Z'
        if is_upper && i > 0 {
          result = result + "_"
          let lower_ch : Char = match ch {
            'A' => 'a'
            'B' => 'b'
            'C' => 'c'
            'D' => 'd'
            'E' => 'e'
            'F' => 'f'
            'G' => 'g'
            'H' => 'h'
            'I' => 'i'
            'J' => 'j'
            'K' => 'k'
            'L' => 'l'
            'M' => 'm'
            'N' => 'n'
            'O' => 'o'
            'P' => 'p'
            'Q' => 'q'
            'R' => 'r'
            'S' => 's'
            'T' => 't'
            'U' => 'u'
            'V' => 'v'
            'W' => 'w'
            'X' => 'x'
            'Y' => 'y'
            'Z' => 'z'
            _ => ch
          }
          result = result + lower_ch.to_string()
        } else {
          result = result + ch.to_string()
        }
      }
      None => ()
    }
  }
  result
}

///|
fn gen_instanceof_helpers(defs : Array[@idl_parser.Definition]) -> String {
  let mut code = "// Type checking helpers\n"
  let seen : Map[String, Bool] = {}
  
  for def in defs {
    match def {
      @idl_parser.Definition::InterfaceDef(iface) => {
        // Only generate once per interface name
        match seen.get(iface.name) {
          Some(_) => ()
          None => {
            seen[iface.name] = true
            let helper_name = glue_helper_name(iface.name)
            code = code + "/**\n"
            code = code + " * Check if value is an instance of \{iface.name}\n"
            code = code + " */\n"
            code = code + "export function is_\{helper_name}(value) {\n"
            code = code + "  return value instanceof window.\{iface.name};\n"
            code = code + "}\n\n"
          }
        }
      }
      _ => ()
    }
  }
  
  code
}

///|
fn gen_type_converters() -> String {
  let mut code = "// Basic type conversion helpers\n\n"
  
  code = code + "/**\n"
  code = code + " * Convert MoonBit nullable value to JavaScript (null or value)\n"
  code = code + " */\n"
  code = code + "export function nullable_to_js(value) {\n"
  code = code + "  return value === undefined ? null : value;\n"
  code = code + "}\n\n"
  
  code = code + "/**\n"
  code = code + " * Convert JavaScript value to MoonBit Option (Some/None)\n"
  code = code + " */\n"
  code = code + "export function js_to_option(value) {\n"
  code = code + "  return value === null || value === undefined ? undefined : value;\n"
  code = code + "}\n\n"
  
  code = code + "/**\n"
  code = code + " * Create a function wrapper that handles errors\n"
  code = code + " */\n"
  code = code + "export function wrap_throwing_function(fn, name) {\n"
  code = code + "  return function(...args) {\n"
  code = code + "    try {\n"
  code = code + "      return fn.apply(this, args);\n"
  code = code + "    } catch (e) {\n"
  code = code + "      console.error('Error in ' + name + ':', e);\n"
  code = code + "      throw e;\n"
  code = code + "    }\n"
  code = code + "  };\n"
  code = code + "}\n\n"
  
  code
}

///|
fn gen_null_checks() -> String {
  let mut code = "// Null/undefined checking helpers\n\n"
  
  code = code + "/**\n"
  code = code + " * Safely access object property with undefined check\n"
  code = code + " */\n"
  code = code + "export function safe_get(obj, prop) {\n"
  code = code + "  return obj ? obj[prop] : undefined;\n"
  code = code + "}\n\n"
  
  code = code + "/**\n"
  code = code + " * Check if value is null or undefined\n"
  code = code + " */\n"
  code = code + "export function is_null_or_undefined(value) {\n"
  code = code + "  return value === null || value === undefined;\n"
  code = code + "}\n\n"
  
  code = code + "/**\n"
  code = code + " * Get value or default if null/undefined\n"
  code = code + " */\n"
  code = code + "export function get_or_default(value, defaultVal) {\n"
  code = code + "  return is_null_or_undefined(value) ? defaultVal : value;\n"
  code = code + "}\n"
  
  code
}

///|
/// Generate JavaScript helper functions for instanceof checks and type conversions
pub fn generate_glue_code(definitions : Array[@idl_parser.Definition]) -> String {
  let mut code = "// WebIDL to MoonBit Glue Code - Auto-generated\n"
  code = code + "// This file provides JavaScript helper functions for FFI operations\n\n"
  
  code = code + gen_instanceof_helpers(definitions)
  code = code + "\n"
  code = code + gen_type_converters()
  code = code + "\n"
  code = code + gen_null_checks()
  code = code + "\n"
  code = code + gen_attribute_helpers(definitions)
  
  code
}

///|
fn gen_attribute_helpers(_defs : Array[@idl_parser.Definition]) -> String {
  let mut code = "// Attribute access helpers\n\n"
  
  code = code + "/**\n"
  code = code + " * Get attribute value with type checking\n"
  code = code + " */\n"
  code = code + "export function get_attr(obj, attr) {\n"
  code = code + "  if (!obj) throw new Error('Cannot get attribute from null');\n"
  code = code + "  return obj[attr];\n"
  code = code + "}\n\n"
  
  code = code + "/**\n"
  code = code + " * Set attribute value with type checking\n"
  code = code + " */\n"
  code = code + "export function set_attr(obj, attr, value) {\n"
  code = code + "  if (!obj) throw new Error('Cannot set attribute on null');\n"
  code = code + "  obj[attr] = value;\n"
  code = code + "}\n\n"
  
  code = code + "/**\n"
  code = code + " * Call method on object with error handling\n"
  code = code + " */\n"
  code = code + "export function call_method(obj, method, args) {\n"
  code = code + "  if (!obj) throw new Error('Cannot call method on null');\n"
  code = code + "  if (typeof obj[method] !== 'function') {\n"
  code = code + "    throw new Error('Method ' + method + ' is not a function');\n"
  code = code + "  }\n"
  code = code + "  return obj[method](...args);\n"
  code = code + "}\n"
  
  code
}
