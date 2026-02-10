// Do not edit. This file is generated.
// MoonBit type: DOMTokenList
// Specifications: dom.idl

///|
/// [DOMTokenList](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList)
#external
pub type DOMTokenList

///|
pub impl TJsValue for DOMTokenList with to_js(self : DOMTokenList) -> JsValue = "%identity"

///|
pub fn[T : TDOMTokenList] DOMTokenList::into(self : DOMTokenList) -> T = "%identity"

///|
pub impl TDOMTokenList for DOMTokenList

///|
/// [DOMTokenList](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList) interface.
pub trait TDOMTokenList: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> String? = _
  contains(self : Self, token : String) -> Bool = _
  add(self : Self, tokens : Array[String]) -> Unit = _
  remove(self : Self, tokens : Array[String]) -> Unit = _
  toggle(self : Self, token : String, force? : Bool) -> Bool = _
  replace(self : Self, token : String, new_token : String) -> Bool = _
  supports(self : Self, token : String) -> Bool = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
}

///|
/// [DOMTokenList.length](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/length)
impl TDOMTokenList with length(self : Self) -> UInt {
  dom_token_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [DOMTokenList.item](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/item)
impl TDOMTokenList with item(self : Self, index : UInt) -> String? {
  let result = dom_token_list_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [DOMTokenList.contains](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/contains)
impl TDOMTokenList with contains(self : Self, token : String) -> Bool {
  dom_token_list_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(token))
}

///|
/// [DOMTokenList.add](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/add)
impl TDOMTokenList with add(self : Self, tokens : Array[String]) -> Unit {
  dom_token_list_add_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tokens.map(fn(v) { TJsValue::to_js(v) })),
  )
}

///|
/// [DOMTokenList.remove](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/remove)
impl TDOMTokenList with remove(self : Self, tokens : Array[String]) -> Unit {
  dom_token_list_remove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tokens.map(fn(v) { TJsValue::to_js(v) })),
  )
}

///|
/// [DOMTokenList.toggle](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/toggle)
impl TDOMTokenList with toggle(self : Self, token : String, force? : Bool) -> Bool {
  dom_token_list_toggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(token),
    opt_to_js(force),
  )
}

///|
/// [DOMTokenList.replace](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/replace)
impl TDOMTokenList with replace(self : Self, token : String, new_token : String) -> Bool {
  dom_token_list_replace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(token),
    TJsValue::to_js(new_token),
  )
}

///|
/// [DOMTokenList.supports](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/supports)
impl TDOMTokenList with supports(self : Self, token : String) -> Bool {
  dom_token_list_supports_ffi(TJsValue::to_js(self), TJsValue::to_js(token))
}

///|
/// [DOMTokenList.value](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/value)
impl TDOMTokenList with value(self : Self) -> String {
  dom_token_list_value_ffi(TJsValue::to_js(self))
}

///|
/// [DOMTokenList.value](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/value)
impl TDOMTokenList with set_value(self : Self, value : String) -> Unit {
  dom_token_list_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}
