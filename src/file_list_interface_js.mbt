///|
extern "js" fn file_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn file_list_length_ffi(obj : JsValue) -> UInt {
  file_list_length_ffi_js(obj).unsafe_cast()
}
