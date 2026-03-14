// Do not edit. This file is generated.
// MoonBit type: CSSGroupingRule
// Specifications: cssom.idl

///|
/// [CSSGroupingRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule)
#external
pub type CSSGroupingRule

///|
pub impl TJsValue for CSSGroupingRule with to_js(self : CSSGroupingRule) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSGroupingRule with from_js_any(value : JsAny) -> CSSGroupingRule = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCSSGroupingRule] CSSGroupingRule::into(self : CSSGroupingRule) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCSSGroupingRule] CSSGroupingRule::unsafe_into(
  self : CSSGroupingRule,
) -> T = "%identity"

///|
pub impl HasConstructor for CSSGroupingRule with constructor_name() {
  "CSSGroupingRule"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSGroupingRule + HasConstructor] CSSGroupingRule::try_into(
  self : CSSGroupingRule,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCSSGroupingRule for CSSGroupingRule

///|
pub impl TCSSRule for CSSGroupingRule

///|
/// [CSSGroupingRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule) interface.
pub trait TCSSGroupingRule: TCSSRule {
  css_rules(self : Self) -> CSSRuleList = _
  insert_rule(self : Self, rule : CSSOMString, index? : UInt) -> UInt = _
  delete_rule(self : Self, index : UInt) -> Unit = _
}

///|
/// [CSSGroupingRule.cssRules](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule/cssRules)
impl TCSSGroupingRule with css_rules(self : Self) -> CSSRuleList {
  css_grouping_rule_css_rules_ffi(TJsValue::to_js(self))
}

///|
/// [CSSGroupingRule.insertRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule/insertRule)
impl TCSSGroupingRule with insert_rule(
  self : Self,
  rule : CSSOMString,
  index? : UInt,
) -> UInt {
  css_grouping_rule_insert_rule_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rule),
    opt_to_js(index),
  )
}

///|
/// [CSSGroupingRule.deleteRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSGroupingRule/deleteRule)
impl TCSSGroupingRule with delete_rule(self : Self, index : UInt) -> Unit {
  css_grouping_rule_delete_rule_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
#cfg(target="js")
extern "js" fn css_grouping_rule_css_rules_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cssRules"

///|
#cfg(target="js")
fn css_grouping_rule_css_rules_ffi(obj : JsValue) -> CSSRuleList {
  css_grouping_rule_css_rules_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_grouping_rule_insert_rule_ffi_js(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> JsValue = "(obj, rule, index) => obj.insertRule(rule, index)"

///|
#cfg(target="js")
fn css_grouping_rule_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> UInt {
  css_grouping_rule_insert_rule_ffi_js(obj, rule, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_grouping_rule_delete_rule_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRule(index)"

///|
#cfg(target="wasm-gc")
fn css_grouping_rule_css_rules_ffi(obj : JsValue) -> CSSRuleList = "webapi_CSSGroupingRule" "get_cssRules"

///|
#cfg(target="wasm-gc")
fn css_grouping_rule_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> UInt = "webapi_CSSGroupingRule" "insertRule"

///|
#cfg(target="wasm-gc")
fn css_grouping_rule_delete_rule_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_CSSGroupingRule" "deleteRule"
