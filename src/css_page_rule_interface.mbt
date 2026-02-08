// Do not edit. This file is generated.
// MoonBit type: CSSPageRule
// Specifications: cssom.idl

/// [CSSPageRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule)
#external
pub type CSSPageRule

pub impl TJsValue for CSSPageRule with to_js(self: CSSPageRule) -> JsValue = "%identity"

pub fn[T: TCSSPageRule] CSSPageRule::into(self : CSSPageRule) -> T = "%identity"

pub impl TCSSPageRule for CSSPageRule

pub impl TCSSGroupingRule for CSSPageRule

pub impl TCSSRule for CSSPageRule

/// [CSSPageRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule) interface.
pub trait TCSSPageRule: TCSSGroupingRule {
  selector_text(self : Self) -> CSSOMString = _
  set_selector_text(self : Self, selector_text : CSSOMString) -> Unit = _
  style(self : Self) -> CSSPageDescriptors = _
}

/// [CSSPageRule.selectorText](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule/selectorText)
impl TCSSPageRule with selector_text(self : Self) -> CSSOMString {
  css_page_rule_selector_text_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [CSSPageRule.selectorText](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule/selectorText)
impl TCSSPageRule with set_selector_text(self : Self, 
selector_text : CSSOMString) -> Unit {
  css_page_rule_set_selector_text_ffi(TJsValue::to_js(self), TJsValue::to_js(selector_text))
}

/// [CSSPageRule.style](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule/style)
impl TCSSPageRule with style(self : Self) -> CSSPageDescriptors {
  css_page_rule_style_ffi(TJsValue::to_js(self)).unsafe_cast()
}