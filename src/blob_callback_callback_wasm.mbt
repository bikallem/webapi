///|
pub fn BlobCallback::new(f : (Blob) -> Unit) -> BlobCallback {
  let w : (JsValue) -> Unit = fn(a0 : JsValue) { f(a0.unsafe_cast()) }
  blob_callback_ffi(w).unsafe_cast()
}

///|
fn blob_callback_ffi(f : (JsValue) -> Unit) -> JsValue = "webapi_BlobCallback" "new"
