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
      #|// Specifications: 
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
      #|// Specifications: 
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
      #|// Specifications: 
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
      #|// Specifications: 
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
      #|// Specifications: 
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
