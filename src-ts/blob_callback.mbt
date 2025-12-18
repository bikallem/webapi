// Auto-generated MoonBit bindings for BlobCallback callback

// Do not edit manually

///|
#external
pub type BlobCallback

///|
pub impl TJsValue for BlobCallback with to_js(self : BlobCallback) -> JsValue = "%identity"

///|
pub fn BlobCallback::new(f : (Blob) -> Unit) -> BlobCallback = "webapi_BlobCallback" "new"
