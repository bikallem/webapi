///|
#external
pub type CSSRuleList

///|
pub impl TJsValue for CSSRuleList with to_js(self : CSSRuleList) -> JsValue = "%identity"

///|
pub fn[T : TCSSRuleList] CSSRuleList::into(self : CSSRuleList) -> T = "%identity"

///|
pub impl TCSSRuleList for CSSRuleList

///|
pub trait TCSSRuleList: TJsValue {}
