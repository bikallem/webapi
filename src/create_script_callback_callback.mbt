// Do not edit. This file is generated.
// MoonBit type: CreateScriptCallback
// Specifications: trusted-types.idl

/// [CreateScriptCallback](https://developer.mozilla.org/en-US/docs/Web/API/CreateScriptCallback)
#external
pub type CreateScriptCallback

pub impl TJsValue for CreateScriptCallback with to_js(self: CreateScriptCallback) -> JsValue = "%identity"

pub impl FromJsAny for CreateScriptCallback with from_js_any(value : JsAny) -> CreateScriptCallback = "%identity"

pub fn CreateScriptCallback::new(callback : (String, JsValue) -> String) -> CreateScriptCallback { create_script_callback_ffi(callback) }

#cfg(target="js")
extern "js" fn create_script_callback_ffi(callback : (String, JsValue) -> String) -> CreateScriptCallback = "(callback) => callback"

#cfg(target="wasm-gc")
fn create_script_callback_ffi(callback : (String, JsValue) -> String) -> CreateScriptCallback = "webapi_CreateScriptCallback" "new"