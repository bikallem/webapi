// Do not edit. This file is generated.
// MoonBit type: OnBeforeUnloadEventHandlerNonNull
// Specifications: html.idl

///|
/// [OnBeforeUnloadEventHandlerNonNull](https://developer.mozilla.org/en-US/docs/Web/API/OnBeforeUnloadEventHandlerNonNull)
#external
pub type OnBeforeUnloadEventHandlerNonNull

///|
pub impl TJsValue for OnBeforeUnloadEventHandlerNonNull with to_js(
  self : OnBeforeUnloadEventHandlerNonNull,
) -> JsValue = "%identity"

///|
pub fn OnBeforeUnloadEventHandlerNonNull::new(
  callback : (Event) -> String,
) -> OnBeforeUnloadEventHandlerNonNull {
  on_before_unload_event_handler_non_null_ffi(callback)
}
