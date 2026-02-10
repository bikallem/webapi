pub fn EventHandlerNonNull::new(f : (Event) -> JsValue) -> EventHandlerNonNull { event_handler_non_null_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn event_handler_non_null_ffi(f : JsValue) -> JsValue = "(f) => f"