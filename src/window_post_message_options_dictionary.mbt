// Do not edit. This file is generated.
// MoonBit type: WindowPostMessageOptions
// Specifications: html.idl

/// [WindowPostMessageOptions](https://developer.mozilla.org/en-US/docs/Web/API/WindowPostMessageOptions)
#external
pub type WindowPostMessageOptions

pub impl TJsValue for WindowPostMessageOptions with to_js(self: WindowPostMessageOptions) -> JsValue = "%identity"

pub impl FromJsAny for WindowPostMessageOptions with from_js_any(value : JsAny) -> WindowPostMessageOptions = "%identity"

pub fn WindowPostMessageOptions::new(transfer? : Array[JsValue], 
target_origin? : String) -> WindowPostMessageOptions {
  window_post_message_options_ffi(opt_to_js(transfer), opt_to_js(target_origin))
}

pub fn WindowPostMessageOptions::empty() -> WindowPostMessageOptions { window_post_message_options_empty_ffi() }

pub fn WindowPostMessageOptions::transfer(self : WindowPostMessageOptions) -> Array[JsValue]? {
  window_post_message_options_get_transfer_ffi(TJsValue::to_js(self)).to_option()
}

pub fn WindowPostMessageOptions::target_origin(self : WindowPostMessageOptions) -> String? {
  window_post_message_options_get_target_origin_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn window_post_message_options_ffi(transfer: JsValue, target_origin: JsValue) -> WindowPostMessageOptions = 
#|(transfer, targetOrigin) => {
#|  const obj = {};
#|  if (transfer !== undefined) obj.transfer = transfer;
#|  if (targetOrigin !== undefined) obj.targetOrigin = targetOrigin;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn window_post_message_options_empty_ffi() -> WindowPostMessageOptions = "() => {}"

#cfg(target="js")
extern "js" fn window_post_message_options_get_transfer_ffi(obj: JsValue) -> JsValue = "(obj) => obj.transfer"

#cfg(target="js")
extern "js" fn window_post_message_options_get_target_origin_ffi(obj: JsValue) -> JsValue = "(obj) => obj.targetOrigin"

#cfg(target="wasm-gc")
fn window_post_message_options_ffi(transfer: JsValue, target_origin: JsValue) -> WindowPostMessageOptions = "webapi_WindowPostMessageOptions" "new"

#cfg(target="wasm-gc")
fn window_post_message_options_empty_ffi() -> WindowPostMessageOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn window_post_message_options_get_transfer_ffi(obj: JsValue) -> JsValue = "webapi_WindowPostMessageOptions" "get_transfer"

#cfg(target="wasm-gc")
fn window_post_message_options_get_target_origin_ffi(obj: JsValue) -> JsValue = "webapi_WindowPostMessageOptions" "get_targetOrigin"