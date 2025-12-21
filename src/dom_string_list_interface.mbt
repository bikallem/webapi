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
  contains(self : Self, string : String) -> Bool = _
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
