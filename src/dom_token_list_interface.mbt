///|
#external
pub type DOMTokenList

///|
pub impl TJsValue for DOMTokenList with to_js(self : DOMTokenList) -> JsValue = "%identity"

///|
pub fn[T : TDOMTokenList] DOMTokenList::into(self : DOMTokenList) -> T = "%identity"

///|
pub impl TDOMTokenList for DOMTokenList

///|
pub trait TDOMTokenList: TJsValue {
  length(self : Self) -> UInt = _
  contains(self : Self, token : String) -> Bool = _
  add(self : Self, tokens : String) -> Unit = _
  remove(self : Self, tokens : String) -> Unit = _
  toggle(self : Self, token : String, force? : Bool) -> Bool = _
  replace(self : Self, token : String, new_token : String) -> Bool = _
  supports(self : Self, token : String) -> Bool = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
}

///|
extern "js" fn dom_token_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TDOMTokenList with length(self : Self) -> UInt {
  dom_token_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_token_list_contains_ffi(
  obj : JsValue,
  token : JsValue,
) -> Bool = "(obj, token) => obj.contains(obj, token)"

///|
impl TDOMTokenList with contains(self : Self, token : String) -> Bool {
  dom_token_list_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(token))
}

///|
extern "js" fn dom_token_list_add_ffi(obj : JsValue, tokens : JsValue) -> Unit = "(obj, tokens) => obj.add(obj, tokens)"

///|
impl TDOMTokenList with add(self : Self, tokens : String) -> Unit {
  dom_token_list_add_ffi(TJsValue::to_js(self), TJsValue::to_js(tokens))
}

///|
extern "js" fn dom_token_list_remove_ffi(
  obj : JsValue,
  tokens : JsValue,
) -> Unit = "(obj, tokens) => obj.remove(obj, tokens)"

///|
impl TDOMTokenList with remove(self : Self, tokens : String) -> Unit {
  dom_token_list_remove_ffi(TJsValue::to_js(self), TJsValue::to_js(tokens))
}

///|
extern "js" fn dom_token_list_toggle_ffi(
  obj : JsValue,
  token : JsValue,
  force : JsValue,
) -> Bool = "(obj, token, force) => obj.toggle(obj, token, force)"

///|
impl TDOMTokenList with toggle(self : Self, token : String, force? : Bool) -> Bool {
  dom_token_list_toggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(token),
    opt_to_js(force),
  )
}

///|
extern "js" fn dom_token_list_replace_ffi(
  obj : JsValue,
  token : JsValue,
  new_token : JsValue,
) -> Bool = "(obj, token, new_token) => obj.replace(obj, token, new_token)"

///|
impl TDOMTokenList with replace(self : Self, token : String, new_token : String) -> Bool {
  dom_token_list_replace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(token),
    TJsValue::to_js(new_token),
  )
}

///|
extern "js" fn dom_token_list_supports_ffi(
  obj : JsValue,
  token : JsValue,
) -> Bool = "(obj, token) => obj.supports(obj, token)"

///|
impl TDOMTokenList with supports(self : Self, token : String) -> Bool {
  dom_token_list_supports_ffi(TJsValue::to_js(self), TJsValue::to_js(token))
}

///|
extern "js" fn dom_token_list_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl TDOMTokenList with value(self : Self) -> String {
  dom_token_list_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_token_list_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl TDOMTokenList with set_value(self : Self, value : String) -> Unit {
  dom_token_list_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}
