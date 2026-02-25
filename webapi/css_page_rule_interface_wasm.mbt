///|
fn css_page_rule_selector_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageRule" "get_selectorText"

///|
fn css_page_rule_selector_text_ffi(obj : JsValue) -> CSSOMString {
  css_page_rule_selector_text_ffi_wasm(obj).unsafe_cast()
}

///|
fn css_page_rule_set_selector_text_ffi(
  obj : JsValue,
  selector_text : JsValue,
) -> Unit = "webapi_CSSPageRule" "set_selectorText"

///|
fn css_page_rule_style_ffi(obj : JsValue) -> CSSPageDescriptors = "webapi_CSSPageRule" "get_style"
