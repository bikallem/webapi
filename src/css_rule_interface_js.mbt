///|
extern "js" fn css_rule_css_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cssText"

///|
fn css_rule_css_text_ffi(obj : JsValue) -> CSSOMString {
  css_rule_css_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_rule_set_css_text_ffi(
  obj : JsValue,
  css_text : JsValue,
) -> Unit = "(obj, cssText) => { obj.cssText = cssText; }"

///|
extern "js" fn css_rule_parent_rule_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parentRule"

///|
fn css_rule_parent_rule_ffi(obj : JsValue) -> CSSRule {
  css_rule_parent_rule_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_rule_parent_style_sheet_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parentStyleSheet"

///|
fn css_rule_parent_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet {
  css_rule_parent_style_sheet_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_rule_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn css_rule_type_ffi(obj : JsValue) -> UInt {
  css_rule_type_ffi_js(obj).unsafe_cast()
}
