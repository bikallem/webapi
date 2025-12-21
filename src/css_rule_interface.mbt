///|
#external
pub type CSSRule

///|
pub impl TJsValue for CSSRule with to_js(self : CSSRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSRule] CSSRule::into(self : CSSRule) -> T = "%identity"

///|
pub impl TCSSRule for CSSRule

///|
pub trait TCSSRule: TJsValue {}
