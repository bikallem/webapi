///|
pub(all) struct DictionaryEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for DictionaryEmitter with emit(
  self : DictionaryEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{@type_mapping.snake_case(name)}_dictionary.mbt")
  let dict = self.idl.dictionaries[name]
  let emits = [
    Emit::FileHeader(TypeName(name), Specs(dict.specs)),
    Emit::External(dict.name),
    Emit::ImplTJsValue(dict.name),
    Emit::ImplFromJsAny(dict.name),
  ]
  let (args, arg_emits) = method_args(
    dict.members.map(mem => (mem.name, mem.type_, !mem.required, false)),
    dict.name,
    "new",
    self.type_registry,
  )
  emits
  ..push_iter(arg_emits.iter())
  ..push(Emit::DictionaryCreate(dict.name, args)) // empty constructor
  .push(Emit::EmptyMethod(dict.name))
  // Emit property getters for each dictionary member
  let getter_args : Array[DictionaryGetterArg] = []
  for mem in dict.members {
    let (mbt_type, extra_emits) = arg_mbt_type(
      mem.type_,
      dict.name,
      "get",
      mem.name,
      self.type_registry,
    )
    emits.push_iter(extra_emits.iter())
    emit_union_return_type(mbt_type, emits)
    let return_type_name = mbt_type.name()
    getter_args.push(DictionaryGetterArg::{
      original_name: mem.name,
      return_type: return_type_name,
      is_optional: !mem.required,
      is_enum_type: mbt_type.is_enum(),
      is_valid_wasm_stub: is_wasm_valid_stub_type(mbt_type),
      is_primitive: mbt_type is Primitive(_),
    })
  }
  emits.push(Emit::DictionaryGetter(dict.name, getter_args))
  (filename, emits)
}
