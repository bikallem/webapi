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
pub trait TCSSMarginRule: TCSSRule {}
