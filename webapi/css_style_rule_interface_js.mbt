extern "js" fn css_style_rule_selector_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectorText"

///|
fn css_style_rule_selector_text_ffi(obj: JsValue) -> CSSOMString {
  css_style_rule_selector_text_ffi_js(obj).unsafe_cast()
}

extern "js" fn css_style_rule_set_selector_text_ffi(obj: JsValue, selector_text: JsValue) -> Unit = "(obj, selectorText) => { obj.selectorText = selectorText; }"

extern "js" fn css_style_rule_style_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.style"

///|
fn css_style_rule_style_ffi(obj: JsValue) -> CSSStyleProperties {
  css_style_rule_style_ffi_js(obj).unsafe_cast()
}