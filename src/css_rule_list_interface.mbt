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
pub trait TCSSRuleList: TJsValue {
  length(self : Self) -> UInt = _
}

///|
extern "js" fn css_rule_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TCSSRuleList with length(self : Self) -> UInt {
  css_rule_list_length_ffi(TJsValue::to_js(self))
}
