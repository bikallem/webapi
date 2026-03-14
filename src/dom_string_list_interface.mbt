// Do not edit. This file is generated.
// MoonBit type: DOMStringList
// Specifications: html.idl

/// [DOMStringList](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList)
#external
pub type DOMStringList

pub impl TJsValue for DOMStringList with to_js(self: DOMStringList) -> JsValue = "%identity"

pub impl FromJsAny for DOMStringList with from_js_any(value : JsAny) -> DOMStringList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDOMStringList] DOMStringList::into(self : DOMStringList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDOMStringList] DOMStringList::unsafe_into(self : DOMStringList) -> T = "%identity"

pub impl HasConstructor for DOMStringList with constructor_name() { "DOMStringList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMStringList + HasConstructor] DOMStringList::try_into(self : DOMStringList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDOMStringList for DOMStringList

/// [DOMStringList](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList) interface.
pub trait TDOMStringList: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> String? = _
  contains(self : Self, string : String) -> Bool = _
}

/// [DOMStringList.length](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList/length)
impl TDOMStringList with length(self : Self) -> UInt {
  dom_string_list_length_ffi(TJsValue::to_js(self))
}

/// [DOMStringList.item](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList/item)
impl TDOMStringList with item(self : Self, 
index : UInt) -> String? {
  dom_string_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option_prim()
}

/// [DOMStringList.contains](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList/contains)
impl TDOMStringList with contains(self : Self, 
string : String) -> Bool {
  dom_string_list_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(string))
}

#cfg(target="js")
extern "js" fn dom_string_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn dom_string_list_length_ffi(obj: JsValue) -> UInt {
  dom_string_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_string_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

#cfg(target="js")
extern "js" fn dom_string_list_contains_ffi_js(obj: JsValue, string: JsValue) -> JsValue = "(obj, string) => obj.contains(string)"

///|
#cfg(target="js")
fn dom_string_list_contains_ffi(obj: JsValue, string: JsValue) -> Bool {
  dom_string_list_contains_ffi_js(obj, string).unsafe_cast()
}

#cfg(target="wasm-gc")
fn dom_string_list_length_ffi(obj: JsValue) -> UInt = "webapi_DOMStringList" "get_length"

#cfg(target="wasm-gc")
fn dom_string_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_DOMStringList" "item"

#cfg(target="wasm-gc")
fn dom_string_list_contains_ffi(obj: JsValue, string: JsValue) -> Bool = "webapi_DOMStringList" "contains"