pub fn EventListener::new(f : (Event) -> Unit) -> EventListener { event_listener_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn event_listener_ffi(f : JsValue) -> JsValue = "(f) => f"