pub fn BlobCallback::new(f : (Blob) -> Unit) -> BlobCallback { blob_callback_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn blob_callback_ffi(f : JsValue) -> JsValue = "(f) => f"