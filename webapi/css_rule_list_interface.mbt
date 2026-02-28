// Do not edit. This file is generated.
// MoonBit type: CSSRuleList
// Specifications: cssom.idl

///|
/// [CSSRuleList](https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList)
#external
pub type CSSRuleList

///|
pub impl TJsValue for CSSRuleList with to_js(self : CSSRuleList) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSRuleList with from_js_any(value : JsAny) -> CSSRuleList = "%identity"

///|
pub fn[T : TCSSRuleList] CSSRuleList::into(self : CSSRuleList) -> T = "%identity"

///|
pub impl TCSSRuleList for CSSRuleList

///|
/// [CSSRuleList](https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList) interface.
pub trait TCSSRuleList: TJsValue {
  item_opt(self : Self, index : UInt) -> CSSRule? = _
  length(self : Self) -> UInt = _
}

///|
/// [CSSRuleList.item](https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList/item)
impl TCSSRuleList with item_opt(self : Self, index : UInt) -> CSSRule? {
  css_rule_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [CSSRuleList.length](https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList/length)
impl TCSSRuleList with length(self : Self) -> UInt {
  css_rule_list_length_ffi(TJsValue::to_js(self))
}

///|
pub fn[T : TCSSRule] CSSRuleList::item(self : CSSRuleList, index : UInt) -> T {
  self.item_opt(index).unwrap().into()
}
