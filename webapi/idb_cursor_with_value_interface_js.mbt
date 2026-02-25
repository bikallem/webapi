///|
extern "js" fn idb_cursor_with_value_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
fn idb_cursor_with_value_value_ffi(obj : JsValue) -> JsValue {
  idb_cursor_with_value_value_ffi_js(obj).unsafe_cast()
}
