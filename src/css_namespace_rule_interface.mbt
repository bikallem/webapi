// Do not edit. This file is generated.
// MoonBit type: CSSNamespaceRule
// Specifications: cssom.idl

/// [CSSNamespaceRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule)
#external
pub type CSSNamespaceRule

pub impl TJsValue for CSSNamespaceRule with to_js(self: CSSNamespaceRule) -> JsValue = "%identity"

pub fn[T: TCSSNamespaceRule] CSSNamespaceRule::into(self : CSSNamespaceRule) -> T = "%identity"

pub impl TCSSNamespaceRule for CSSNamespaceRule

pub impl TCSSRule for CSSNamespaceRule

/// [CSSNamespaceRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule) interface.
pub trait TCSSNamespaceRule: TCSSRule {
  namespace_uri(self : Self) -> CSSOMString = _
  prefix(self : Self) -> CSSOMString = _
}

/// [CSSNamespaceRule.namespaceURI](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule/namespaceURI)
impl TCSSNamespaceRule with namespace_uri(self : Self) -> CSSOMString {
  css_namespace_rule_namespace_uri_ffi(TJsValue::to_js(self))
}

/// [CSSNamespaceRule.prefix](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule/prefix)
impl TCSSNamespaceRule with prefix(self : Self) -> CSSOMString {
  css_namespace_rule_prefix_ffi(TJsValue::to_js(self))
}