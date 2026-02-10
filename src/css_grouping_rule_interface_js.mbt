extern "js" fn css_grouping_rule_css_rules_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cssRules"

///|
fn css_grouping_rule_css_rules_ffi(obj: JsValue) -> CSSRuleList {
  css_grouping_rule_css_rules_ffi_js(obj).unsafe_cast()
}

extern "js" fn css_grouping_rule_insert_rule_ffi_js(obj: JsValue, rule: JsValue, index: JsValue) -> JsValue = "(obj, rule, index) => obj.insertRule(rule, index)"

///|
fn css_grouping_rule_insert_rule_ffi(obj: JsValue, rule: JsValue, index: JsValue) -> UInt {
  css_grouping_rule_insert_rule_ffi_js(obj, rule, index).unsafe_cast()
}

extern "js" fn css_grouping_rule_delete_rule_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.deleteRule(index)"