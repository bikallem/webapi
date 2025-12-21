///|
#external
pub type WindowPostMessageOptions

///|
pub impl TJsValue for WindowPostMessageOptions with to_js(
  self : WindowPostMessageOptions,
) -> JsValue = "%identity"

///|
extern "js" fn window_post_message_options_ffi(
  transfer : JsValue,
  target_origin : JsValue,
) -> WindowPostMessageOptions =
  #|(transfer, targetOrigin) => {
  #|  const obj = {};
  #|  if (transfer !== undefined) obj.transfer = transfer;
  #|  if (targetOrigin !== undefined) obj.targetOrigin = targetOrigin;
  #|  return obj;
  #|}

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
extern "js" fn window_post_message_options_empty_ffi() -> WindowPostMessageOptions = "() => {}"

///|
pub fn WindowPostMessageOptions::empty() -> WindowPostMessageOptions {
  window_post_message_options_empty_ffi()
}
