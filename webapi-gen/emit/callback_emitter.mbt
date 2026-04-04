///|
pub(all) struct CallbackEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for CallbackEmitter with emit(
  self : CallbackEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{@type_mapping.snake_case(name)}_callback.mbt")
  let cb_def = self.idl.callbacks[name]
  let args : Array[CallbackArgEmit] = []
  let emits = []
  for arg in cb_def.arguments {
    let (mbt_type, arg_emits) = arg_mbt_type(
      arg.type_.type_,
      name,
      "",
      arg.name,
      self.type_registry,
    )
    emits.push_iter(arg_emits.iter())
    args.push(CallbackArgEmit::{
      name: @type_mapping.safe_identifier(arg.name),
      mbt_type: mbt_type.name(),
    })
  }
  let (return_type, return_emits) = arg_mbt_type(
    cb_def.return_type,
    "",
    "",
    "",
    self.type_registry,
  )
  emits.push_iter(return_emits.iter())
  let emits = [
    Emit::FileHeader(TypeName(name), specs_from_optional(cb_def.spec)),
    Emit::External(cb_def.name),
    Emit::ImplTJsValue(cb_def.name),
    Emit::ImplFromJsAny(cb_def.name),
    Emit::Callback(cb_def.name, args, TypeName(return_type.name())),
  ]
  (filename, emits)
}
