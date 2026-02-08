// Do not edit. This file is generated.
// MoonBit type: CSSMarginRule
// Specifications: cssom.idl

/// [CSSMarginRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSMarginRule)
#external
pub type CSSMarginRule

pub impl TJsValue for CSSMarginRule with to_js(self: CSSMarginRule) -> JsValue = "%identity"

pub fn[T: TCSSMarginRule] CSSMarginRule::into(self : CSSMarginRule) -> T = "%identity"

pub impl TCSSMarginRule for CSSMarginRule

pub impl TCSSRule for CSSMarginRule

/// [CSSMarginRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSMarginRule) interface.
pub trait TCSSMarginRule: TCSSRule {
  name(self : Self) -> CSSOMString = _
  style(self : Self) -> CSSStyleDeclaration = _
}

/// [CSSMarginRule.name](https://developer.mozilla.org/en-US/docs/Web/API/CSSMarginRule/name)
impl TCSSMarginRule with name(self : Self) -> CSSOMString {
  css_margin_rule_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [CSSMarginRule.style](https://developer.mozilla.org/en-US/docs/Web/API/CSSMarginRule/style)
impl TCSSMarginRule with style(self : Self) -> CSSStyleDeclaration {
  css_margin_rule_style_ffi(TJsValue::to_js(self)).unsafe_cast()
}