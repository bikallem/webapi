///|
/// Emit Moonbit code for a WebIDL enum definition

///|
/// Emit Moonbit code for a WebIDL enum definition
pub fn emit_enum(enum_def : EnumDefinition) -> String {
  let emit = enum_to_emit(enum_def)
  emit_from_enum_emit(emit)
}

///|
fn enum_to_emit(enum_def : EnumDefinition) -> EnumEmit {
  let variants = enum_def.values.map(fn(v) {
    EnumMemberEmit::{
      variant_name: enum_value_to_variant(v),
      original_value: v,
    }
  })
  EnumEmit::{ name: enum_def.name, variants }
}

///|
fn emit_from_enum_emit(emit : EnumEmit) -> String {
  let buf = StringBuilder::new()
  let name = emit.name
  let variants = emit.variants

  // Header
  buf.write_string("// Auto-generated MoonBit bindings for \{name} enum\n")
  buf.write_string("// Do not edit manually\n\n")

  // Emit enum type definition
  buf.write_string("///|\n")
  buf.write_string("pub(all) enum \{name} {\n")
  for variant in variants {
    buf.write_string("  \{variant.variant_name}\n")
  }
  buf.write_string("} derive(Eq,Show)\n\n")

  // Emit from(String) method
  buf.write_string("///|\n")
  buf.write_string("pub fn \{name}::from(value: String) -> \{name} {\n")
  buf.write_string("  match value {\n")
  for variant in variants {
    buf.write_string(
      "    \"\{variant.original_value}\" => \{variant.variant_name}\n",
    )
  }
  // Default to first variant
  if variants.length() > 0 {
    let default_variant = variants[0].variant_name
    buf.write_string("    _ => \{default_variant}\n")
  } else {
    // Should not happen for valid enums, but handle gracefully
    buf.write_string("    _ => panic()\n")
  }
  buf.write_string("  }\n")
  buf.write_string("}\n\n")

  // Emit to_js() method
  buf.write_string("///|\n")
  buf.write_string("pub fn \{name}::to_js(self : \{name}) -> String {\n")
  buf.write_string("  match self {\n")
  for variant in variants {
    buf.write_string(
      "    \{variant.variant_name} => \"\{variant.original_value}\"\n",
    )
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
  to_pascal_case(value)
}

///|
test "emit_enum generates correct MoonBit code" {
  let enum_def : EnumDefinition = {
    name: "ScrollBehavior",
    values: ["auto", "instant", "smooth"],
  }
  let code = emit_enum(enum_def)
  inspect(
    code,
    content=(
      #|// Auto-generated MoonBit bindings for ScrollBehavior enum
      #|// Do not edit manually
      #|
      #|///|
      #|pub(all) enum ScrollBehavior {
      #|  Auto
      #|  Instant
      #|  Smooth
      #|} derive(Eq,Show)
      #|
      #|///|
      #|pub fn ScrollBehavior::from(value: String) -> ScrollBehavior {
      #|  match value {
      #|    "auto" => Auto
      #|    "instant" => Instant
      #|    "smooth" => Smooth
      #|    _ => Auto
      #|  }
      #|}
      #|
      #|///|
      #|pub fn ScrollBehavior::to_js(self : ScrollBehavior) -> String {
      #|  match self {
      #|    Auto => "auto"
      #|    Instant => "instant"
      #|    Smooth => "smooth"
      #|  }
      #|}
      #|
    ),
  )
}

//|

///|
test "emit_enum handles hyphenated values" {
  let enum_def : EnumDefinition = {
    name: "TextDirection",
    values: ["ltr", "rtl", "no-change"],
  }
  let code = emit_enum(enum_def)
  inspect(
    code,
    content=(
      #|// Auto-generated MoonBit bindings for TextDirection enum
      #|// Do not edit manually
      #|
      #|///|
      #|pub(all) enum TextDirection {
      #|  Ltr
      #|  Rtl
      #|  NoChange
      #|} derive(Eq,Show)
      #|
      #|///|
      #|pub fn TextDirection::from(value: String) -> TextDirection {
      #|  match value {
      #|    "ltr" => Ltr
      #|    "rtl" => Rtl
      #|    "no-change" => NoChange
      #|    _ => Ltr
      #|  }
      #|}
      #|
      #|///|
      #|pub fn TextDirection::to_js(self : TextDirection) -> String {
      #|  match self {
      #|    Ltr => "ltr"
      #|    Rtl => "rtl"
      #|    NoChange => "no-change"
      #|  }
      #|}
      #|
    ),
  )
}
