///|
fn css_margin_rule_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSMarginRule" "get_name"

///|
fn css_margin_rule_name_ffi(obj : JsValue) -> CSSOMString {
  css_margin_rule_name_ffi_wasm(obj).unsafe_cast()
}

///|
fn css_margin_rule_style_ffi(obj : JsValue) -> CSSStyleDeclaration = "webapi_CSSMarginRule" "get_style"
