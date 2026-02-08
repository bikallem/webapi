///|
fn css_grouping_rule_css_rules_ffi(obj : JsValue) -> JsValue = "webapi_CSSGroupingRule" "get_cssRules"

///|
fn css_grouping_rule_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> JsValue = "webapi_CSSGroupingRule" "insertRule"

///|
fn css_grouping_rule_delete_rule_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_CSSGroupingRule" "deleteRule"
