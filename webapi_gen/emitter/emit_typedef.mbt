///|
pub fn emit_typedef(
  typedef_def : @parser.TypedefDefinition,
  type_registry : TypeRegistry,
) -> String {
  let emit = typedef_to_emit(typedef_def, type_registry)
  emit_from_typedef_emit(emit)
}

///|
fn typedef_to_emit(
  typedef_def : @parser.TypedefDefinition,
  type_registry : TypeRegistry,
) -> TypedefEmit {
  let target_type = to_mbt_type_string(typedef_def.type_, type_registry)
  TypedefEmit::{ name: typedef_def.name, target_type }
}

///|
fn emit_from_typedef_emit(emit : TypedefEmit) -> String {
  let buf = StringBuilder::new()

  // Header
  buf.write_string(
    "// Auto-generated MoonBit bindings for \{emit.name} typedef\n",
  )

  // Type alias
  // Note: For now we just use a type alias. If we need more complex logic
  // (like trait implementations for unions), we might need to expand this.
  // But usually typedefs in WebIDL map to type aliases or just the underlying type.
  // However, since MoonBit doesn't have `type Alias = Target`, we usually
  // don't emit anything if it's just an alias, OR we emit a new type wrapper.
  // BUT consistent with how we handle other named types, we probably want a distinct type
  // that wraps the underlying type, or just don't emit it and use the underlying type everywhere.
  //
  // Looking at existing patterns (e.g. Enums are distinct types, Interfaces are distinct types),
  // but `typedef` often just names a union or primitive.
  // 
  // If we look at how `to_mbt_type_string` handles Identifier(name):
  //     if type_registry.is_interface(name) { "&T\{name}" } else { name }
  // This implies we ARE expecting a type named `name` to exist.
  //
  // So we should emit a type alias. MoonBit supports `type NewType = OldType`? No, creates a new type.
  // `type MyString String`
  //
  // Let's try to map it to a type alias if possible, or a newtype wrapper.
  // simple `pub typealias Name = Target` is supported in recent MoonBit versions?
  // Let's check if we can use `pub typealias`. If not, we might need `pub type Name Target` (newtype).

  // Wait, if I use `type Name String`, it's a new type distinct from String.
  // If the webapi expects `DOMString` (which maps to `String`), and we have `typedef DOMString MyString`,
  // then `MyString` should be usable as `String`?
  // 
  // Actually, in `to_mbt_type_string`:
  //     USVString => "String"
  //     DOMString => "String"
  //
  // If we have `typedef DOMString MyLabel;`, then `MyLabel` should just be `String`.
  // If we define `pub typealias MyLabel = String`, then it works.

  buf.write_string("///|\npub typealias \{emit.name} = \{emit.target_type}\n")

  // We should also implement TJsValue for it if it's not a primitive that already has it?
  // If it's a type alias, it inherits traits? No, type alias is just a synonym.
  // So if `emit.target_type` implements TJsValue, so does `emit.name`.

  buf.to_string()
}

///|
pub fn emit_all_typedefs(
  flattened_idl : FlattenedIdl,
  type_registry : TypeRegistry,
) -> Map[String, String] {
  let result : Map[String, String] = {}
  for name, typedef_def in flattened_idl.typedefs {
    let filename = "\{to_snake_case(name)}.mbt"
    result[filename] = emit_typedef(typedef_def, type_registry)
  }
  result
}
