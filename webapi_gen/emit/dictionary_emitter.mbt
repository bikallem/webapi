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
  let filename = Filename("\{to_snake_case(name)}_dictionary.mbt")
  let dict = self.idl.dictionaries[name]
  let emits = [Emit::External(dict.name)]

  // Constructor method args
  let args = []
  for mem in dict.members {
    let (type_, arg_emits) = arg_type(
      mem.type_,
      dict.name,
      mem.name,
      self.type_registry,
    )
    // Push any additional emits needed for the arg type, e.g. union arg traits
    emits.push_iter(arg_emits.iter())
    args.push(MethodArg::{
      name: mem.name,
      type_,
      optional: !mem.required,
      default_value: mem.default_value.map(dv => arg_default_value(
        dv,
        mem.type_,
        self.type_registry,
      )),
    })
  }
  emits.push(Emit::DictionaryCreate(dict.name, args)) // empty constructor
  emits.push(Emit::EmptyMethod(dict.name))
  (filename, emits)
}
