// Auto-generated MoonBit bindings for BlobCallback callback

// Do not edit manually

//
// WebIDL Callback:
// callback BlobCallback = undefined (Blob? blob);

///|
#external
pub type BlobCallback

///|
pub impl TJsValue for BlobCallback with to_js(self : BlobCallback) -> JsValue = "%identity"

///|
fn blob_callback_new_ffi(f : (JsValue) -> Unit) -> BlobCallback = "webapi_BlobCallback" "new"

///|
pub fn BlobCallback::new(f : (JsValue) -> Unit) -> BlobCallback {
  blob_callback_new_ffi(f)
}
