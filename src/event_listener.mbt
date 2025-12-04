///|
/// EventListener - Callback interface for handling events

///|
#external
pub type EventListener

///|
pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"

///|
fn event_listener_new_ffi(f : JsValue) -> EventListener = "webapi_EventListener" "new"

///|
pub fn EventListener::new(f : (Event) -> Unit) -> EventListener {
  event_listener_new_ffi(fn_to_js(f))
}

///|
pub fn EventListener::null() -> EventListener = "JsValue" "null"

///|
pub fn EventListener::is_null(self : EventListener) -> Bool = "JsValue" "isNull"
