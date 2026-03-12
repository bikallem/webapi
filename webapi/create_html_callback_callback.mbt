// Do not edit. This file is generated.
// MoonBit type: CreateHTMLCallback
// Specifications: trusted-types.idl

/// [CreateHTMLCallback](https://developer.mozilla.org/en-US/docs/Web/API/CreateHTMLCallback)
#external
pub type CreateHTMLCallback

pub impl TJsValue for CreateHTMLCallback with to_js(self: CreateHTMLCallback) -> JsValue = "%identity"

pub impl FromJsAny for CreateHTMLCallback with from_js_any(value : JsAny) -> CreateHTMLCallback = "%identity"

pub fn CreateHTMLCallback::new(callback : (String, JsValue) -> String) -> CreateHTMLCallback { create_html_callback_ffi(callback) }