// Do not edit. This file is generated.
// MoonBit type: CSSMarginRule
// Specifications: cssom.idl

///|
#external
pub type CSSMarginRule

///|
pub impl TJsValue for CSSMarginRule with to_js(self : CSSMarginRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSMarginRule] CSSMarginRule::into(self : CSSMarginRule) -> T = "%identity"

///|
pub impl TCSSMarginRule for CSSMarginRule

///|
pub impl TCSSRule for CSSMarginRule

///|
pub trait TCSSMarginRule: TCSSRule {
  name(self : Self) -> String = _
  style(self : Self) -> CSSStyleDeclaration = _
}

///|
extern "js" fn css_margin_rule_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl TCSSMarginRule with name(self : Self) -> String {
  css_margin_rule_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_margin_rule_style_ffi(obj : JsValue) -> CSSStyleDeclaration = "(obj) => obj.style"

///|
impl TCSSMarginRule with style(self : Self) -> CSSStyleDeclaration {
  css_margin_rule_style_ffi(TJsValue::to_js(self))
}
