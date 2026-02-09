///|
pub fn OnBeforeUnloadEventHandlerNonNull::new(
  f : (Event) -> String,
) -> OnBeforeUnloadEventHandlerNonNull {
  on_before_unload_event_handler_non_null_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn on_before_unload_event_handler_non_null_ffi(
  f : JsValue,
) -> JsValue = "(f) => f"
