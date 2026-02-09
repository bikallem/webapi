///|
extern "js" fn mime_type_array_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn mime_type_array_length_ffi(obj : JsValue) -> UInt {
  mime_type_array_length_ffi_js(obj).unsafe_cast()
}
