// Do not edit. This file is generated.
// MoonBit type: CSSNamespaceRule
// Specifications: cssom.idl

///|
#external
pub type CSSNamespaceRule

///|
pub impl TJsValue for CSSNamespaceRule with to_js(self : CSSNamespaceRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSNamespaceRule] CSSNamespaceRule::into(
  self : CSSNamespaceRule,
) -> T = "%identity"

///|
pub impl TCSSNamespaceRule for CSSNamespaceRule

///|
pub impl TCSSRule for CSSNamespaceRule

///|
pub trait TCSSNamespaceRule: TCSSRule {
  namespace_uri(self : Self) -> CSSOMString = _
  prefix(self : Self) -> CSSOMString = _
}

///|
extern "js" fn css_namespace_rule_namespace_uri_ffi(
  obj : JsValue,
) -> CSSOMString = "(obj) => obj.namespaceURI"

///|
impl TCSSNamespaceRule with namespace_uri(self : Self) -> CSSOMString {
  css_namespace_rule_namespace_uri_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_namespace_rule_prefix_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.prefix"

///|
impl TCSSNamespaceRule with prefix(self : Self) -> CSSOMString {
  css_namespace_rule_prefix_ffi(TJsValue::to_js(self))
}
