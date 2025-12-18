// Auto-generated MoonBit bindings for DOMTokenList interface
// Do not edit manually

#external
pub type DOMTokenList

pub impl TJsValue for DOMTokenList with to_js(self: DOMTokenList) -> JsValue = "%identity"


pub fn[T: TDOMTokenList] DOMTokenList::into(self : DOMTokenList) -> T = "%identity"
pub impl TDOMTokenList for DOMTokenList

pub trait TDOMTokenList: TJSValue {
  length(self: Self) -> UInt = _
  contains(self: Self, token : String) -> Bool = _
  add(self: Self, tokens : String) -> Unit = _
  remove(self: Self, tokens : String) -> Unit = _
  toggle(self: Self, token : String, force? : Bool) -> Bool = _
  replace(self: Self, token : String, new_token : String) -> Bool = _
  supports(self: Self, token : String) -> Bool = _
  value(self: Self) -> String = _
  set_value(self: Self, value : String) -> Unit = _
}

///|
fn d_o_m_token_list_length_ffi(obj : JsValue) -> UInt = "webapi_DOMTokenList" "length"

///|
impl TDOMTokenList with length(self : Self) -> UInt {
  d_o_m_token_list_length_ffi(self.to_js())
}

///|
fn d_o_m_token_list_value_ffi(obj : JsValue) -> String = "webapi_DOMTokenList" "value"

///|
impl TDOMTokenList with value(self : Self) -> String {
  d_o_m_token_list_value_ffi(self.to_js())
}

///|
fn d_o_m_token_list_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_DOMTokenList" "set_value"

///|
impl TDOMTokenList with set_value(self : Self, value : String) -> Unit {
  d_o_m_token_list_set_value_ffi(self.to_js(), value)
}

///|
fn d_o_m_token_list_contains_ffi(obj : JsValue, token : JsValue) -> Bool = "webapi_DOMTokenList" "contains"

///|
impl TDOMTokenList with contains(self : Self, token : String) -> Bool {
  d_o_m_token_list_contains_ffi(self.to_js(), TJsValue::to_js(token))
}

///|
fn d_o_m_token_list_add_ffi(obj : JsValue, tokens : JsValue) -> Unit = "webapi_DOMTokenList" "add"

///|
impl TDOMTokenList with add(self : Self, tokens : String) -> Unit {
  d_o_m_token_list_add_ffi(self.to_js(), TJsValue::to_js(tokens))
}

///|
fn d_o_m_token_list_remove_ffi(obj : JsValue, tokens : JsValue) -> Unit = "webapi_DOMTokenList" "remove"

///|
impl TDOMTokenList with remove(self : Self, tokens : String) -> Unit {
  d_o_m_token_list_remove_ffi(self.to_js(), TJsValue::to_js(tokens))
}

///|
fn d_o_m_token_list_toggle_ffi(obj : JsValue, token : JsValue, force : JsValue) -> Bool = "webapi_DOMTokenList" "toggle"

///|
impl TDOMTokenList with toggle(self : Self, token : String, force? : Bool) -> Bool {
  d_o_m_token_list_toggle_ffi(self.to_js(), TJsValue::to_js(token), TJsValue::to_js(force))
}

///|
fn d_o_m_token_list_replace_ffi(obj : JsValue, token : JsValue, new_token : JsValue) -> Bool = "webapi_DOMTokenList" "replace"

///|
impl TDOMTokenList with replace(self : Self, token : String, new_token : String) -> Bool {
  d_o_m_token_list_replace_ffi(self.to_js(), TJsValue::to_js(token), TJsValue::to_js(new_token))
}

///|
fn d_o_m_token_list_supports_ffi(obj : JsValue, token : JsValue) -> Bool = "webapi_DOMTokenList" "supports"

///|
impl TDOMTokenList with supports(self : Self, token : String) -> Bool {
  d_o_m_token_list_supports_ffi(self.to_js(), TJsValue::to_js(token))
}