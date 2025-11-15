///|
/// Generate moon.pkg.json content for a generated package
pub fn generate_moon_pkg_json_content(dependencies : Array[String]) -> String {
  let import_strs = dependencies
  let mut import_lines = ""
  for dep in import_strs {
    if import_lines == "" {
      import_lines = "    \"bikallem/webapi/generated/" + dep + "\""
    } else {
      import_lines = import_lines +
        ",\n    \"bikallem/webapi/generated/" +
        dep +
        "\""
    }
  }
  "{\n  \"import\": [\n    \"bikallem/webapi\"\n" +
  (if import_lines == "" {
    "  ]\n}"
  } else {
    ",\n" + import_lines + "\n  ]\n}"
  })
}

///|
/// Convert camelCase to snake_case
pub fn to_snake_case(s : String) -> String {
  let mut result = ""
  let mut index = 0
  for c in s {
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
/// Generate FFI binding for a method with parameters
pub fn generate_ffi_binding(
  interface_name : String,
  method_name : String,
  return_type : String,
  parameters? : Array[@idl_parser.Parameter] = [],
) -> String {
  let snake_case = to_snake_case(method_name)

  // Build parameter list
  let mut params_str = "self : \{interface_name}"
  for param in parameters {
    let param_type_mb = map_idl_type(param.param_type)
    let param_type_str = moonbit_type_string(param_type_mb)

    // Handle optional parameters with Option type
    let param_type_final = if param.optional {
      "Option[\{param_type_str}]"
    } else {
      param_type_str
    }
    params_str = params_str + ", \{param.name} : \{param_type_final}"
  }
  "pub fn " +
  interface_name +
  "::" +
  snake_case +
  "(" +
  params_str +
  ") -> " +
  return_type +
  " = \"" +
  interface_name +
  "\" \"" +
  method_name +
  "\""
}
