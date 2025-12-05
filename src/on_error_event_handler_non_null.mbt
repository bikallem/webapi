// Auto-generated MoonBit bindings for OnErrorEventHandlerNonNull callback

// Do not edit manually

///|
#external
pub type OnErrorEventHandlerNonNull

///|
pub impl TJsValue for OnErrorEventHandlerNonNull with to_js(
  self : OnErrorEventHandlerNonNull,
) -> JsValue = "%identity"

///|
fn on_error_event_handler_non_null_new_ffi(
  f : JsValue,
) -> OnErrorEventHandlerNonNull = "webapi_OnErrorEventHandlerNonNull" "new"

///|
pub fn OnErrorEventHandlerNonNull::new(
  f : (JsValue, String, UInt, UInt, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull {
  on_error_event_handler_non_null_new_ffi(fn_to_js(f))
}
