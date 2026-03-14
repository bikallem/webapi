// Do not edit. This file is generated.
// MoonBit type: DOMRectList
// Specifications: geometry.idl

/// [DOMRectList](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList)
#external
pub type DOMRectList

pub impl TJsValue for DOMRectList with to_js(self: DOMRectList) -> JsValue = "%identity"

pub impl FromJsAny for DOMRectList with from_js_any(value : JsAny) -> DOMRectList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDOMRectList] DOMRectList::into(self : DOMRectList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDOMRectList] DOMRectList::unsafe_into(self : DOMRectList) -> T = "%identity"

pub impl HasConstructor for DOMRectList with constructor_name() { "DOMRectList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMRectList + HasConstructor] DOMRectList::try_into(self : DOMRectList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDOMRectList for DOMRectList

/// [DOMRectList](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList) interface.
pub trait TDOMRectList: TJsValue {
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> DOMRect? = _
  item(self : Self, index : UInt) -> DOMRect = _
}

/// [DOMRectList.length](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList/length)
impl TDOMRectList with length(self : Self) -> UInt {
  dom_rect_list_length_ffi(TJsValue::to_js(self))
}

/// [DOMRectList.item](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectList/item)
impl TDOMRectList with item_opt(self : Self, 
index : UInt) -> DOMRect? {
  dom_rect_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

impl TDOMRectList with item(self : Self, 
index : UInt) -> DOMRect {
  self.item_opt(index).unwrap()
}

#cfg(target="js")
extern "js" fn dom_rect_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn dom_rect_list_length_ffi(obj: JsValue) -> UInt {
  dom_rect_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_rect_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

#cfg(target="wasm-gc")
fn dom_rect_list_length_ffi(obj: JsValue) -> UInt = "webapi_DOMRectList" "get_length"

#cfg(target="wasm-gc")
fn dom_rect_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_DOMRectList" "item"