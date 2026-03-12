fn css_style_properties_css_float_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSStyleProperties" "get_cssFloat"

///|
fn css_style_properties_css_float_ffi(obj: JsValue) -> CSSOMString {
  css_style_properties_css_float_ffi_wasm(obj).unsafe_cast()
}

fn css_style_properties_set_css_float_ffi(obj: JsValue, css_float: JsValue) -> Unit = "webapi_CSSStyleProperties" "set_cssFloat"