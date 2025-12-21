///|
#external
pub type CSSPageRule

///|
pub impl TJsValue for CSSPageRule with to_js(self : CSSPageRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSPageRule] CSSPageRule::into(self : CSSPageRule) -> T = "%identity"

///|
pub impl TCSSPageRule for CSSPageRule

///|
pub impl TCSSGroupingRule for CSSPageRule

///|
pub impl TCSSRule for CSSPageRule

///|
pub trait TCSSPageRule: TCSSGroupingRule {}
