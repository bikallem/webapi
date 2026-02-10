///|
extern "js" fn bar_prop_visible_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.visible"

///|
fn bar_prop_visible_ffi(obj : JsValue) -> Bool {
  bar_prop_visible_ffi_js(obj).unsafe_cast()
}
