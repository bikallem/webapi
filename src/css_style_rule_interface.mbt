///|
#external
pub type CSSStyleRule

///|
pub impl TJsValue for CSSStyleRule with to_js(self : CSSStyleRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSStyleRule] CSSStyleRule::into(self : CSSStyleRule) -> T = "%identity"

///|
pub impl TCSSStyleRule for CSSStyleRule

///|
pub impl TCSSGroupingRule for CSSStyleRule

///|
pub impl TCSSRule for CSSStyleRule

///|
pub trait TCSSStyleRule: TCSSGroupingRule {}
