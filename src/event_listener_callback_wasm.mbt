///|
pub fn EventListener::new(f : (Event) -> Unit) -> EventListener {
  let w : (JsValue) -> Unit = fn(a0 : JsValue) { f(a0.unsafe_cast()) }
  event_listener_ffi(w).unsafe_cast()
}

///|
fn event_listener_ffi(f : (JsValue) -> Unit) -> JsValue = "webapi_EventListener" "new"
