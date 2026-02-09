///|
extern "js" fn node_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn node_list_length_ffi(obj : JsValue) -> UInt {
  node_list_length_ffi_js(obj).unsafe_cast()
}
