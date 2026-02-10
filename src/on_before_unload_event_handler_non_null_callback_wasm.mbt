pub fn OnBeforeUnloadEventHandlerNonNull::new(f : (Event) -> String) -> OnBeforeUnloadEventHandlerNonNull {
  let w : (JsValue) -> JsValue = fn(a0 : JsValue) { TJsValue::to_js(f(a0.unsafe_cast())) }
  on_before_unload_event_handler_non_null_ffi(w).unsafe_cast()
}

///|
fn on_before_unload_event_handler_non_null_ffi(f : (JsValue) -> JsValue) -> JsValue = "webapi_OnBeforeUnloadEventHandlerNonNull" "new"