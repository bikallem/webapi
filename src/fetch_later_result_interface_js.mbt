///|
extern "js" fn fetch_later_result_activated_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activated"

///|
fn fetch_later_result_activated_ffi(obj : JsValue) -> Bool {
  fetch_later_result_activated_ffi_js(obj).unsafe_cast()
}
