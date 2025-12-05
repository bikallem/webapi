// Auto-generated MoonBit bindings for WindowPostMessageOptions dictionary

// Do not edit manually

///|
#external
pub type WindowPostMessageOptions

///|
pub impl TJsValue for WindowPostMessageOptions with to_js(
  self : WindowPostMessageOptions,
) -> JsValue = "%identity"

///|
fn window_post_message_options_ffi(
  target_origin : JsValue,
) -> WindowPostMessageOptions = "webapi_WindowPostMessageOptions" "new"

///|
pub fn WindowPostMessageOptions::new(
  target_origin? : String = "/",
) -> WindowPostMessageOptions {
  window_post_message_options_ffi(TJsValue::to_js(target_origin))
}

///|
pub fn WindowPostMessageOptions::empty() -> WindowPostMessageOptions = "webapi_Dictionary" "empty"
