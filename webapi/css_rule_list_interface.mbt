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
  item(self : Self, index : UInt) -> CSSRule = _
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
impl TCSSRuleList with item(self : Self, index : UInt) -> CSSRule {
  self.item_opt(index).unwrap()
}

///|
#cfg(target="js")
extern "js" fn css_rule_list_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="js")
extern "js" fn css_rule_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn css_rule_list_length_ffi(obj : JsValue) -> UInt {
  css_rule_list_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_rule_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_CSSRuleList" "item"

///|
#cfg(target="wasm-gc")
fn css_rule_list_length_ffi(obj : JsValue) -> UInt = "webapi_CSSRuleList" "get_length"
