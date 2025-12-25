// Do not edit. This file is generated.
// MoonBit type: CSSGroupingRule
// Specifications: cssom.idl

///|
#external
pub type CSSGroupingRule

///|
pub impl TJsValue for CSSGroupingRule with to_js(self : CSSGroupingRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSGroupingRule] CSSGroupingRule::into(self : CSSGroupingRule) -> T = "%identity"

///|
pub impl TCSSGroupingRule for CSSGroupingRule

///|
pub impl TCSSRule for CSSGroupingRule

///|
pub trait TCSSGroupingRule: TCSSRule {
  css_rules(self : Self) -> CSSRuleList = _
  insert_rule(self : Self, rule : CSSOMString, index? : UInt) -> UInt = _
  delete_rule(self : Self, index : UInt) -> Unit = _
}

///|
extern "js" fn css_grouping_rule_css_rules_ffi(obj : JsValue) -> CSSRuleList = "(obj) => obj.cssRules"

///|
impl TCSSGroupingRule with css_rules(self : Self) -> CSSRuleList {
  css_grouping_rule_css_rules_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_grouping_rule_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> UInt = "(obj, rule, index) => obj.insertRule(obj, rule, index)"

///|
impl TCSSGroupingRule with insert_rule(
  self : Self,
  rule : CSSOMString,
  index? : UInt = 0,
) -> UInt {
  css_grouping_rule_insert_rule_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rule),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn css_grouping_rule_delete_rule_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRule(obj, index)"

///|
impl TCSSGroupingRule with delete_rule(self : Self, index : UInt) -> Unit {
  css_grouping_rule_delete_rule_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}
