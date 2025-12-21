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
  let filename = Filename("\{to_snake_case(name)}_callback.mbt")
  let cb_def = self.idl.callbacks[name]
  let args : Array[CallbackArgEmit] = []
  for arg in cb_def.arguments {
    let mbt_type = callback_arg_to_mbt(arg.type_.type_, self.type_registry)
    args.push(CallbackArgEmit::{ name: safe_identifier(arg.name), mbt_type })
  }
  let return_type = idl_to_mbt_type(cb_def.return_type)
  let emit_callback = [Emit::Callback(cb_def.name, args, return_type)]
  (filename, emit_callback)
}

///|
/// Map WebIDL type to MoonBit type string for callback arguments.
/// Interfaces become trait references (&TName).
fn callback_arg_to_mbt(
  idl_type : @parser.Type,
  type_registry : @type_registry.TypeRegistry,
) -> String {
  match idl_type {
    Identifier(name) => name
    Sequence(t) => "Array[\{callback_arg_to_mbt(t, type_registry)}]"
    Nullable(t) => "\{callback_arg_to_mbt(t, type_registry)}?"
    _ => idl_to_mbt_type(idl_type)
  }
}
