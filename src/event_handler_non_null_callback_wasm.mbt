pub fn EventHandlerNonNull::new(f : (Event) -> JsValue) -> EventHandlerNonNull {
  let w : (JsValue) -> JsValue = fn(a0 : JsValue) { TJsValue::to_js(f(a0.unsafe_cast())) }
  event_handler_non_null_ffi(w).unsafe_cast()
}

///|
fn event_handler_non_null_ffi(f : (JsValue) -> JsValue) -> JsValue = "webapi_EventHandlerNonNull" "new"