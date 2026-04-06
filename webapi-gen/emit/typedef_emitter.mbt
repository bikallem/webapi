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
  let filename = Filename("\{@type_mapping.snake_case(name)}_typedef.mbt")
  let typedef_def = self.idl.typedefs[name]
  let emits = [
    Emit::FileHeader(
      TypeName(typedef_def.name),
      @hashset.HashSet::from_array([typedef_def.spec]),
    ),
  ]
  let typedef_emits = match typedef_def.type_ {
    Union(options) => {
      let emits = []
      let trait_name = TraitName("T\{typedef_def.name}")
      let external_name = TypeName(typedef_def.name)
      emits
      ..push(Emit::External(external_name))
      ..push(Emit::ImplTJsValue(external_name))
      ..push(Emit::ImplFromJsAny(external_name))
      ..push(Emit::UnionArgTrait(trait_name))
      ..push(Emit::UnionIntoMethod(external_name))
      ..push(Emit::FromMethod(external_name))
      .push(Emit::UnionArgTraitImpl(external_name, trait_name))
      let seen : @hashset.HashSet[@type_mapping.ArgMbtType] = @hashset.new()
      for opt in options {
        let (mbt_type, arg_emits) = arg_mbt_type(
          opt.type_,
          typedef_def.name,
          "",
          "",
          self.type_registry,
        )
        if !seen.contains(mbt_type) {
          seen.add(mbt_type)
          emits
          ..push_iter(arg_emits.iter())
          .push(Emit::UnionArgTraitImpl(TypeName(mbt_type.name()), trait_name))
        }
      }
      emits
    }
    _ => {
      let (target_type, inner_emits) = arg_mbt_type(
        typedef_def.type_,
        typedef_def.name,
        "",
        "",
        self.type_registry,
      )
      let result = []
      result.push_iter(inner_emits.iter())
      result.push(Emit::TypedefAlias(typedef_def.name, target_type.name()))
      result
    }
  }
  emits.push_iter(typedef_emits.iter())
  (filename, emits)
}
