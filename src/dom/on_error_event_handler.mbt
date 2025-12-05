// Auto-generated MoonBit bindings for OnErrorEventHandler typedef

// Do not edit manually

///|
#external
pub type OnErrorEventHandler

///|
pub impl TJsValue for OnErrorEventHandler with to_js(self : OnErrorEventHandler) -> JsValue = "%identity"

///|
fn on_error_event_handler_new_ffi(f : JsValue) -> OnErrorEventHandler = "webapi_OnErrorEventHandlerNonNull" "new"

///|
pub fn OnErrorEventHandler::new(
  f : (JsValue, String, UInt, UInt, JsValue) -> JsValue,
) -> OnErrorEventHandler {
  on_error_event_handler_new_ffi(fn_to_js(f))
}
