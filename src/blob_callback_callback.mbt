// Do not edit. This file is generated.
// MoonBit type: BlobCallback
// Specifications: html.idl

/// [BlobCallback](https://developer.mozilla.org/en-US/docs/Web/API/BlobCallback)
#external
pub type BlobCallback

pub impl TJsValue for BlobCallback with to_js(self: BlobCallback) -> JsValue = "%identity"

pub impl FromJsAny for BlobCallback with from_js_any(value : JsAny) -> BlobCallback = "%identity"

pub fn BlobCallback::new(callback : (Blob) -> Unit) -> BlobCallback { blob_callback_ffi(callback) }

#cfg(target="js")
extern "js" fn blob_callback_ffi(callback : (Blob) -> Unit) -> BlobCallback = "(callback) => callback"

#cfg(target="wasm-gc")
fn blob_callback_ffi(callback : (Blob) -> Unit) -> BlobCallback = "webapi_BlobCallback" "new"