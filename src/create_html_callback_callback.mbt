// Do not edit. This file is generated.
// MoonBit type: CreateHTMLCallback
// Specifications: trusted-types.idl

///|
/// [CreateHTMLCallback](https://developer.mozilla.org/en-US/docs/Web/API/CreateHTMLCallback)
#external
pub type CreateHTMLCallback

///|
pub impl TJsValue for CreateHTMLCallback with to_js(self : CreateHTMLCallback) -> JsValue = "%identity"

///|
extern "js" fn create_html_callback_ffi(
  f : (String, JsValue) -> String,
) -> CreateHTMLCallback = "(f) => f"

///|
pub fn CreateHTMLCallback::new(
  f : (String, JsValue) -> String,
) -> CreateHTMLCallback {
  create_html_callback_ffi(f)
}
