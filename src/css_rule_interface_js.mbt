extern "js" fn css_rule_css_text_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cssText"

extern "js" fn css_rule_set_css_text_ffi(obj: JsValue, css_text: JsValue) -> Unit = "(obj, cssText) => { obj.cssText = cssText; }"

extern "js" fn css_rule_parent_rule_ffi(obj: JsValue) -> JsValue = "(obj) => obj.parentRule"

extern "js" fn css_rule_parent_style_sheet_ffi(obj: JsValue) -> JsValue = "(obj) => obj.parentStyleSheet"

extern "js" fn css_rule_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"