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
pub trait TCSSNamespaceRule: TCSSRule {}
