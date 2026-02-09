///|
extern "js" fn svg_stop_element_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offset"

///|
fn svg_stop_element_offset_ffi(obj : JsValue) -> SVGAnimatedNumber {
  svg_stop_element_offset_ffi_js(obj).unsafe_cast()
}
