// Do not edit. This file is generated.
// MoonBit type: CSSGroupingRule
// Specifications: cssom.idl

/// [CSSGroupingRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule)
#external
pub type CSSGroupingRule

pub impl TJsValue for CSSGroupingRule with to_js(self: CSSGroupingRule) -> JsValue = "%identity"

pub fn[T: TCSSGroupingRule] CSSGroupingRule::into(self : CSSGroupingRule) -> T = "%identity"

pub impl TCSSGroupingRule for CSSGroupingRule

pub impl TCSSRule for CSSGroupingRule

/// [CSSGroupingRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule) interface.
pub trait TCSSGroupingRule: TCSSRule {
  css_rules(self : Self) -> CSSRuleList = _
  insert_rule(self : Self, rule : CSSOMString, index? : UInt) -> UInt = _
  delete_rule(self : Self, index : UInt) -> Unit = _
}

/// [CSSGroupingRule.cssRules](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule/cssRules)
impl TCSSGroupingRule with css_rules(self : Self) -> CSSRuleList {
  css_grouping_rule_css_rules_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [CSSGroupingRule.insertRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule/insertRule)
impl TCSSGroupingRule with insert_rule(self : Self, 
rule : CSSOMString, 
index? : UInt = (0: UInt)) -> UInt {
  css_grouping_rule_insert_rule_ffi(TJsValue::to_js(self), TJsValue::to_js(rule), TJsValue::to_js(index)).unsafe_cast()
}

/// [CSSGroupingRule.deleteRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule/deleteRule)
impl TCSSGroupingRule with delete_rule(self : Self, 
index : UInt) -> Unit {
  css_grouping_rule_delete_rule_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}