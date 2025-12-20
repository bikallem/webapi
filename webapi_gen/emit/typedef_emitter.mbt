///|
pub(all) struct TypedefEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for TypedefEmitter with emit(
  self : TypedefEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{to_snake_case(name)}_typedef.mbt")
  let typedef_def = self.idl.typedefs[name]
  (filename, emit_typedef(typedef_def, self.type_registry))
}

///|
pub fn emit_typedef(
  typedef_def : @parser.TypedefDefinition,
  type_registry : @type_registry.TypeRegistry,
) -> Array[Emit] {
  match typedef_def.type_ {
    Union(members) => {
      let member_types = filter_typedef_union_members(members, type_registry)
      [Emit::TypedefUnion(typedef_def.name, member_types)]
    }
    _ => {
      let target_type = idl_to_mbt_type(typedef_def.type_)
      [Emit::TypedefAlias(typedef_def.name, target_type)]
    }
  }
}

///|
/// Types to skip in union typedef generation
let skip_union_types : @hashset.HashSet[String] = [
    "WindowProxy", "MediaProvider", "HTMLOrSVGScriptElement", "TrustedType", "TrustedHTML",
    "TrustedScript", "TrustedScriptURL",
  ]
  |> @hashset.from_array

///|
/// Filters union members to produce MoonBit type names, removing duplicates,
/// Unit, and skip types.
fn filter_typedef_union_members(
  members : Array[@parser.TypeWithExtendedAttributes],
  type_registry : @type_registry.TypeRegistry,
) -> Array[String] {
  let seen : @hashset.HashSet[String] = @hashset.new()
  let result : Array[String] = []
  for mem in members {
    let mbt_type = typedef_type_to_mbt(mem.type_, type_registry)
    if mbt_type != "Unit" &&
      not(skip_union_types.contains(mbt_type)) &&
      not(seen.contains(mbt_type)) {
      seen.add(mbt_type)
      result.push(mbt_type)
    }
  }
  result
}

///|
/// Map WebIDL type to MoonBit type string for typedef unions.
/// Interfaces become trait references (&TName).
fn typedef_type_to_mbt(
  idl_type : @parser.Type,
  type_registry : @type_registry.TypeRegistry,
) -> String {
  match idl_type {
    Identifier(name) =>
      if type_registry.is_interface(name) {
        "&T\{name}"
      } else {
        name
      }
    Nullable(t) => typedef_type_to_mbt(t, type_registry)
    _ => idl_to_mbt_type(idl_type)
  }
}
