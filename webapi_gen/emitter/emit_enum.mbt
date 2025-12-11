///|
/// Emit Moonbit code for a WebIDL enum definition
pub fn emit_enum(enum_def : EnumDefinition) -> String {
  let buf = StringBuilder::new()
  let name = enum_def.name
  let variants : Array[(String, String)] = enum_def.values.map(fn(v) {
    (enum_value_to_variant(v), v)
  })

  // Emit enum type definition
  buf.write_string("///|\n")
  buf.write_string("pub(all) enum \{name} {\n")
  for variant in variants {
    buf.write_string("  \{variant.0}\n")
  }
  buf.write_string("} derive(Eq,Show)\n\n")

  // Emit from(String) method
  buf.write_string("///|\n")
  buf.write_string("pub fn \{name}::from(value: String) -> \{name} {\n")
  buf.write_string("  match value {\n")
  for variant in variants {
    buf.write_string("    \"\{variant.1}\" => \{variant.0}\n")
  }
  // Default to first variant
  let default_variant = variants[0].0
  buf.write_string("    _ => \{default_variant}\n")
  buf.write_string("  }\n")
  buf.write_string("}\n\n")

  // Emit to_js() method
  buf.write_string("///|\n")
  buf.write_string("pub fn \{name}::to_js(self : \{name}) -> String {\n")
  buf.write_string("  match self {\n")
  for variant in variants {
    buf.write_string("    \{variant.0} => \"\{variant.1}\"\n")
  }
  buf.write_string("  }\n")
  buf.write_string("}\n")
  buf.to_string()
}

///|
/// Emit all enums from a FlattenedIdl
pub fn emit_all_enums(flattened_idl : FlattenedIdl) -> Map[String, String] {
  let result = {}
  for name, enum_def in flattened_idl.enums {
    let filename = "\{to_snake_case(name)}_enum.mbt"
    result[filename] = emit_enum(enum_def)
  }
  result
}

///|
/// Convert WebIDL enum value to MoonBit enum variant name
fn enum_value_to_variant(value : String) -> String {
  to_pascal_case(value.to_string())
}
