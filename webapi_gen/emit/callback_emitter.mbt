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
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: EventListener
      #|
      #|
      #|/// [EventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventListener)
      #|#external
      #|pub type EventListener
      #|
      #|pub impl TJsValue for EventListener with to_js(self: EventListener) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for EventListener with from_js_any(value : JsAny) -> EventListener = "%identity"
      #|
      #|pub fn EventListener::new(callback : (Event) -> Unit) -> EventListener { event_listener_ffi(callback) }
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn event_listener_ffi(callback : (Event) -> Unit) -> EventListener = "(callback) => callback"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn event_listener_ffi(callback : (Event) -> Unit) -> EventListener = "webapi_EventListener" "new"
    ),
  )
}

///|
test "emit_callback keeps interface argument as concrete callback type" {
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
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: EventListener
      #|
      #|
      #|/// [EventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventListener)
      #|#external
      #|pub type EventListener
      #|
      #|pub impl TJsValue for EventListener with to_js(self: EventListener) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for EventListener with from_js_any(value : JsAny) -> EventListener = "%identity"
      #|
      #|pub fn EventListener::new(callback : (Event) -> Unit) -> EventListener { event_listener_ffi(callback) }
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn event_listener_ffi(callback : (Event) -> Unit) -> EventListener = "(callback) => callback"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn event_listener_ffi(callback : (Event) -> Unit) -> EventListener = "webapi_EventListener" "new"
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
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: MutationCallback
      #|
      #|
      #|/// [MutationCallback](https://developer.mozilla.org/en-US/docs/Web/API/MutationCallback)
      #|#external
      #|pub type MutationCallback
      #|
      #|pub impl TJsValue for MutationCallback with to_js(self: MutationCallback) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for MutationCallback with from_js_any(value : JsAny) -> MutationCallback = "%identity"
      #|
      #|pub fn MutationCallback::new(callback : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback { mutation_callback_ffi(callback) }
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn mutation_callback_ffi(callback : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback = "(callback) => callback"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn mutation_callback_ffi_raw(callback : (JsArray, MutationObserver) -> Unit) -> MutationCallback = "webapi_MutationCallback" "new"
      #|
      #|///|
      #|fn mutation_callback_ffi(callback : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback {
      #|  mutation_callback_ffi_raw(
      #|    fn(mutations : JsArray, observer : MutationObserver) -> Unit {
      #|      callback(mutations.to_array(), observer)
      #|    },
      #|  )
      #|}
    ),
  )
}

///|
test "CallbackEmitter multi-target separates FFI" {
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
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: EventListener
      #|
      #|
      #|/// [EventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventListener)
      #|#external
      #|pub type EventListener
      #|
      #|pub impl TJsValue for EventListener with to_js(self: EventListener) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for EventListener with from_js_any(value : JsAny) -> EventListener = "%identity"
      #|
      #|pub fn EventListener::new(callback : (Event) -> Unit) -> EventListener { event_listener_ffi(callback) }
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn event_listener_ffi(callback : (Event) -> Unit) -> EventListener = "(callback) => callback"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn event_listener_ffi(callback : (Event) -> Unit) -> EventListener = "webapi_EventListener" "new"
    ),
  )
}

///|
test "CallbackEmitter wasm always uses direct import" {
  let idl =
    #|enum NotificationPermission { "default", "denied", "granted" };
    #|callback NotificationPermissionCallback = undefined (NotificationPermission permission);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let callback_emitter = CallbackEmitter::{
    idl: flattened,
    type_registry: registry,
  }
  let (_filename, emits) = callback_emitter.emit(
    "NotificationPermissionCallback",
  )
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: NotificationPermissionCallback
      #|
      #|
      #|/// [NotificationPermissionCallback](https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback)
      #|#external
      #|pub type NotificationPermissionCallback
      #|
      #|pub impl TJsValue for NotificationPermissionCallback with to_js(self: NotificationPermissionCallback) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for NotificationPermissionCallback with from_js_any(value : JsAny) -> NotificationPermissionCallback = "%identity"
      #|
      #|pub fn NotificationPermissionCallback::new(callback : (NotificationPermission) -> Unit) -> NotificationPermissionCallback { notification_permission_callback_ffi(callback) }
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn notification_permission_callback_ffi(callback : (NotificationPermission) -> Unit) -> NotificationPermissionCallback = "(callback) => callback"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn notification_permission_callback_ffi(callback : (NotificationPermission) -> Unit) -> NotificationPermissionCallback = "webapi_NotificationPermissionCallback" "new"
    ),
  )
}
