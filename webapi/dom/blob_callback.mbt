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
pub fn cb_blob_callback(f : (JsValue) -> Unit) -> BlobCallback = "webapi_BlobCallback" "new"
