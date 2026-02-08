// Do not edit. This file is generated.
// MoonBit type: CSSRuleList
// Specifications: cssom.idl

/// [CSSRuleList](https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList)
#external
pub type CSSRuleList

pub impl TJsValue for CSSRuleList with to_js(self: CSSRuleList) -> JsValue = "%identity"

pub fn[T: TCSSRuleList] CSSRuleList::into(self : CSSRuleList) -> T = "%identity"

pub impl TCSSRuleList for CSSRuleList

/// [CSSRuleList](https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList) interface.
pub trait TCSSRuleList: TJsValue {
  length(self : Self) -> UInt = _
}

/// [CSSRuleList.length](https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList/length)
impl TCSSRuleList with length(self : Self) -> UInt {
  css_rule_list_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}