///|
extern "js" fn css_page_rule_selector_text_ffi(obj : JsValue) -> JsValue = "(obj) => obj.selectorText"

///|
extern "js" fn css_page_rule_set_selector_text_ffi(
  obj : JsValue,
  selector_text : JsValue,
) -> Unit = "(obj, selectorText) => { obj.selectorText = selectorText; }"

///|
extern "js" fn css_page_rule_style_ffi(obj : JsValue) -> JsValue = "(obj) => obj.style"
