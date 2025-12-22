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

///|
test "emit_callback simple EventListener" {
  let idl =
    #|callback EventListener = undefined (Event event);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let callback_emitter = CallbackEmitter::{
    idl: flattened,
    type_registry: registry,
  }
  let (_filename, emits) = callback_emitter.emit("EventListener")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type EventListener
      #|
      #|pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"
      #|
      #|extern "js" fn event_listener_ffi(f : (Event) -> Unit) -> EventListener = "(f) => f"
      #|
      #|pub fn EventListener::new(f : (Event) -> Unit) -> EventListener { event_listener_ffi(f) }
    ),
  )
}

///|
test "emit_callback with interface argument uses trait reference" {
  let idl =
    #|interface Event {};
    #|callback EventListener = undefined (Event event);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let callback_emitter = CallbackEmitter::{
    idl: flattened,
    type_registry: registry,
  }
  let (_filename, emits) = callback_emitter.emit("EventListener")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type EventListener
      #|
      #|pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"
      #|
      #|extern "js" fn event_listener_ffi(f : (Event) -> Unit) -> EventListener = "(f) => f"
      #|
      #|pub fn EventListener::new(f : (Event) -> Unit) -> EventListener { event_listener_ffi(f) }
    ),
  )
}

///|
test "emit_callback multi-arg MutationCallback" {
  let idl =
    #|callback MutationCallback = undefined (sequence<MutationRecord> mutations, MutationObserver observer);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let callback_emitter = CallbackEmitter::{
    idl: flattened,
    type_registry: registry,
  }
  let (_filename, emits) = callback_emitter.emit("MutationCallback")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type MutationCallback
      #|
      #|pub impl TJsValue for MutationCallback with to_js(self : MutationCallback) -> JsValue = "%identity"
      #|
      #|extern "js" fn mutation_callback_ffi(f : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback = "(f) => f"
      #|
      #|pub fn MutationCallback::new(f : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback { mutation_callback_ffi(f) }
    ),
  )
}

///|
test "js_code_gen Callback generates correct code" {
  let idl =
    #|callback EventListener = undefined (Event event);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let callback_emitter = CallbackEmitter::{
    idl: flattened,
    type_registry: registry,
  }
  let (_filename, emits) = callback_emitter.emit("EventListener")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type EventListener
      #|
      #|pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"
      #|
      #|extern "js" fn event_listener_ffi(f : (Event) -> Unit) -> EventListener = "(f) => f"
      #|
      #|pub fn EventListener::new(f : (Event) -> Unit) -> EventListener { event_listener_ffi(f) }
    ),
  )
}

///|
test "js_code_gen Callback with multiple args" {
  let idl =
    #|callback MutationCallback = undefined (sequence<MutationRecord> mutations, MutationObserver observer);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let callback_emitter = CallbackEmitter::{
    idl: flattened,
    type_registry: registry,
  }
  let (_filename, emits) = callback_emitter.emit("MutationCallback")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type MutationCallback
      #|
      #|pub impl TJsValue for MutationCallback with to_js(self : MutationCallback) -> JsValue = "%identity"
      #|
      #|extern "js" fn mutation_callback_ffi(f : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback = "(f) => f"
      #|
      #|pub fn MutationCallback::new(f : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback { mutation_callback_ffi(f) }
    ),
  )
}
