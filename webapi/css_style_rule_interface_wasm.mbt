///|
fn css_style_rule_selector_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSStyleRule" "get_selectorText"

///|
fn css_style_rule_selector_text_ffi(obj : JsValue) -> CSSOMString {
  css_style_rule_selector_text_ffi_wasm(obj).unsafe_cast()
}

///|
fn css_style_rule_set_selector_text_ffi(
  obj : JsValue,
  selector_text : JsValue,
) -> Unit = "webapi_CSSStyleRule" "set_selectorText"

///|
fn css_style_rule_style_ffi(obj : JsValue) -> CSSStyleProperties = "webapi_CSSStyleRule" "get_style"
