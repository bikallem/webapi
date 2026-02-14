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
pub impl FromJsAny for WindowPostMessageOptions with from_js_any(value : JsAny) -> WindowPostMessageOptions = "%identity"

///|
pub fn WindowPostMessageOptions::new(
  transfer? : Array[JsValue],
  target_origin? : String,
) -> WindowPostMessageOptions {
  window_post_message_options_ffi(opt_to_js(transfer), opt_to_js(target_origin))
}

///|
pub fn WindowPostMessageOptions::empty() -> WindowPostMessageOptions {
  window_post_message_options_empty_ffi()
}

///|
pub fn WindowPostMessageOptions::transfer(
  self : WindowPostMessageOptions,
) -> Array[JsValue]? {
  let result = window_post_message_options_get_transfer_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn WindowPostMessageOptions::target_origin(
  self : WindowPostMessageOptions,
) -> String? {
  let result = window_post_message_options_get_target_origin_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
