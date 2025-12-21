///|
#external
pub type EventListener

///|
pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"

///|
extern "js" fn event_listener_ffi(f : (Event) -> Unit) -> EventListener = "(f) => f"

///|
pub fn EventListener::new(f : (Event) -> Unit) -> EventListener {
  event_listener_ffi(f)
}
