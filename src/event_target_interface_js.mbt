extern "js" fn event_target_new_ffi() -> EventTarget = "() => new EventTarget()"

extern "js" fn event_target_add_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.addEventListener(type_, callback, options)"

extern "js" fn event_target_remove_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.removeEventListener(type_, callback, options)"

extern "js" fn event_target_dispatch_event_ffi_js(obj: JsValue, event: JsValue) -> JsValue = "(obj, event) => obj.dispatchEvent(event)"

///|
fn event_target_dispatch_event_ffi(obj: JsValue, event: JsValue) -> Bool {
  event_target_dispatch_event_ffi_js(obj, event).unsafe_cast()
}