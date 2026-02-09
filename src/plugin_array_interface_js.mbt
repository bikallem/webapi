///|
extern "js" fn plugin_array_refresh_ffi(obj : JsValue) -> Unit = "(obj) => obj.refresh()"

///|
extern "js" fn plugin_array_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn plugin_array_length_ffi(obj : JsValue) -> UInt {
  plugin_array_length_ffi_js(obj).unsafe_cast()
}
