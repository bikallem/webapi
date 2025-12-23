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
  let filename = Filename("\{snake_case(name)}_callback.mbt")
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
      name: safe_identifier(arg.name),
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
  let emits = [Emit::Callback(cb_def.name, args, TypeName(return_type.name()))]
  (filename, emits)
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
