///|
extern "js" fn html_collection_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn html_collection_length_ffi(obj : JsValue) -> UInt {
  html_collection_length_ffi_js(obj).unsafe_cast()
}
