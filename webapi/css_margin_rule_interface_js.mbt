extern "js" fn css_margin_rule_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn css_margin_rule_name_ffi(obj: JsValue) -> CSSOMString {
  css_margin_rule_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn css_margin_rule_style_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.style"

///|
fn css_margin_rule_style_ffi(obj: JsValue) -> CSSStyleDeclaration {
  css_margin_rule_style_ffi_js(obj).unsafe_cast()
}