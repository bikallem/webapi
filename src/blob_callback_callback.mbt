// Do not edit. This file is generated.
// MoonBit type: BlobCallback
// Specifications: html.idl

///|
#external
pub type BlobCallback

///|
pub impl TJsValue for BlobCallback with to_js(self : BlobCallback) -> JsValue = "%identity"

///|
extern "js" fn blob_callback_ffi(f : (Blob) -> Unit) -> BlobCallback = "(f) => f"

///|
pub fn BlobCallback::new(f : (Blob) -> Unit) -> BlobCallback {
  blob_callback_ffi(f)
}
