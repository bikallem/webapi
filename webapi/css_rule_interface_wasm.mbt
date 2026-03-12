///|
fn css_rule_css_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSRule" "get_cssText"

///|
fn css_rule_css_text_ffi(obj : JsValue) -> CSSOMString {
  css_rule_css_text_ffi_wasm(obj).unsafe_cast()
}

///|
fn css_rule_set_css_text_ffi(obj : JsValue, css_text : JsValue) -> Unit = "webapi_CSSRule" "set_cssText"

///|
fn css_rule_parent_rule_ffi(obj : JsValue) -> CSSRule = "webapi_CSSRule" "get_parentRule"

///|
fn css_rule_parent_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "webapi_CSSRule" "get_parentStyleSheet"

///|
fn css_rule_type_ffi(obj : JsValue) -> UInt = "webapi_CSSRule" "get_type"
