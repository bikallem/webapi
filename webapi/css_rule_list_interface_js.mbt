extern "js" fn css_rule_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

extern "js" fn css_rule_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn css_rule_list_length_ffi(obj: JsValue) -> UInt {
  css_rule_list_length_ffi_js(obj).unsafe_cast()
}