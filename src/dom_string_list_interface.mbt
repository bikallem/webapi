///|
#external
pub type DOMStringList

///|
pub impl TJsValue for DOMStringList with to_js(self : DOMStringList) -> JsValue = "%identity"

///|
pub fn[T : TDOMStringList] DOMStringList::into(self : DOMStringList) -> T = "%identity"

///|
pub impl TDOMStringList for DOMStringList

///|
pub trait TDOMStringList: TJsValue {
  length(self : Self) -> UInt = _
  contains(self : Self, string : String) -> Bool = _
}

///|
extern "js" fn dom_string_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TDOMStringList with length(self : Self) -> UInt {
  dom_string_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_string_list_contains_ffi(
  obj : JsValue,
  string : JsValue,
) -> Bool = "(obj, string) => obj.contains(obj, string)"

///|
impl TDOMStringList with contains(self : Self, string : String) -> Bool {
  dom_string_list_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(string))
}
