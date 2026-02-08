// Do not edit. This file is generated.
// MoonBit type: WindowPostMessageOptions
// Specifications: html.idl

///|
/// [WindowPostMessageOptions](https://developer.mozilla.org/en-US/docs/Web/API/WindowPostMessageOptions)
#external
pub type WindowPostMessageOptions

///|
pub impl TJsValue for WindowPostMessageOptions with to_js(
  self : WindowPostMessageOptions,
) -> JsValue = "%identity"

///|
pub fn WindowPostMessageOptions::new(
  transfer? : Array[JsValue] = [],
  target_origin? : String = "/",
) -> WindowPostMessageOptions {
  window_post_message_options_ffi(
    TJsValue::to_js(transfer),
    TJsValue::to_js(target_origin),
  )
}

///|
pub fn WindowPostMessageOptions::empty() -> WindowPostMessageOptions {
  window_post_message_options_empty_ffi()
}
