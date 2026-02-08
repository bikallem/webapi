extern "js" fn css_grouping_rule_css_rules_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cssRules"

extern "js" fn css_grouping_rule_insert_rule_ffi(obj: JsValue, rule: JsValue, index: JsValue) -> JsValue = "(obj, rule, index) => obj.insertRule(rule, index)"

extern "js" fn css_grouping_rule_delete_rule_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.deleteRule(index)"