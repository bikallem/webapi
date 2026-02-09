///|
extern "js" fn css_style_properties_css_float_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cssFloat"

///|
fn css_style_properties_css_float_ffi(obj : JsValue) -> CSSOMString {
  css_style_properties_css_float_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_style_properties_set_css_float_ffi(
  obj : JsValue,
  css_float : JsValue,
) -> Unit = "(obj, cssFloat) => { obj.cssFloat = cssFloat; }"
