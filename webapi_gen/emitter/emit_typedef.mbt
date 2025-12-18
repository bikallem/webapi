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
  match typedef_def.type_ {
    Union(members) => {
      let member_types = filter_union_members(members, type_registry)
      Union({ name: typedef_def.name, member_types })
    }
    _ => {
      let target_type = to_mbt_type_string(typedef_def.type_, type_registry)
      Alias({ name: typedef_def.name, target_type })
    }
  }
}

///|
fn emit_from_typedef_emit(emit : TypedefEmit) -> String {
  let buf = StringBuilder::new()
  let name = match emit {
    Alias(a) => a.name
    Union(u) => u.name
  }

  // Header
  buf.write_string("// Auto-generated MoonBit bindings for \{name} typedef\n")
  match emit {
    Alias(typedef_alias) =>
      buf.write_string(
        "///|\npub typealias \{typedef_alias.name} = \{typedef_alias.target_type}\n",
      )
    Union(union_def) => {
      let name = union_def.name
      let trait_name = "T\{name}"

      // Emit trait definition
      buf.write_string("///|\npub(open) trait \{trait_name} {\n")
      buf.write_string("  to_js(self : Self) -> JsValue\n")
      buf.write_string("}\n\n")

      // Emit into method
      buf.write_string(
        "///|\npub fn[T : \{trait_name}] &\{trait_name}::into(self : &\{trait_name}) -> T = \"%identity\"\n\n",
      )

      // Emit impl for each member type
      for i, member_type in union_def.member_types {
        buf.write_string(
          "///|\npub impl \{trait_name} for \{member_type} with to_js(self : \{member_type}) -> JsValue = \"%identity\"",
        )
        if i < union_def.member_types.length() - 1 {
          buf.write_string("\n\n")
        }
      }
      buf.write_string("\n")
    }
  }
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
