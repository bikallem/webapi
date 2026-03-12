extern "js" fn css_style_sheet_new_ffi(options: JsValue) -> CSSStyleSheet = "(options) => new CSSStyleSheet(options)"

extern "js" fn css_style_sheet_owner_rule_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ownerRule"

///|
fn css_style_sheet_owner_rule_ffi(obj: JsValue) -> CSSRule {
  css_style_sheet_owner_rule_ffi_js(obj).unsafe_cast()
}

extern "js" fn css_style_sheet_css_rules_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cssRules"

///|
fn css_style_sheet_css_rules_ffi(obj: JsValue) -> CSSRuleList {
  css_style_sheet_css_rules_ffi_js(obj).unsafe_cast()
}

extern "js" fn css_style_sheet_insert_rule_ffi_js(obj: JsValue, rule: JsValue, index: JsValue) -> JsValue = "(obj, rule, index) => obj.insertRule(rule, index)"

///|
fn css_style_sheet_insert_rule_ffi(obj: JsValue, rule: JsValue, index: JsValue) -> UInt {
  css_style_sheet_insert_rule_ffi_js(obj, rule, index).unsafe_cast()
}

extern "js" fn css_style_sheet_delete_rule_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.deleteRule(index)"

extern "js" fn css_style_sheet_replace_ffi_js(obj: JsValue, text: JsValue) -> JsValue = "(obj, text) => obj.replace(text)"

///|
fn css_style_sheet_replace_ffi(obj: JsValue, text: JsValue) -> JsPromise[CSSStyleSheet] {
  css_style_sheet_replace_ffi_js(obj, text).unsafe_cast()
}

extern "js" fn css_style_sheet_replace_sync_ffi(obj: JsValue, text: JsValue) -> Unit = "(obj, text) => obj.replaceSync(text)"

extern "js" fn css_style_sheet_rules_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rules"

///|
fn css_style_sheet_rules_ffi(obj: JsValue) -> CSSRuleList {
  css_style_sheet_rules_ffi_js(obj).unsafe_cast()
}

extern "js" fn css_style_sheet_add_rule_ffi_js(obj: JsValue, selector: JsValue, style: JsValue, index: JsValue) -> JsValue = "(obj, selector, style, index) => obj.addRule(selector, style, index)"

///|
fn css_style_sheet_add_rule_ffi(obj: JsValue, selector: JsValue, style: JsValue, index: JsValue) -> Int {
  css_style_sheet_add_rule_ffi_js(obj, selector, style, index).unsafe_cast()
}

extern "js" fn css_style_sheet_remove_rule_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.removeRule(index)"