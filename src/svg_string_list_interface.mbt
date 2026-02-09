// Do not edit. This file is generated.
// MoonBit type: SVGStringList
// Specifications: SVG.idl

///|
/// [SVGStringList](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList)
#external
pub type SVGStringList

///|
pub impl TJsValue for SVGStringList with to_js(self : SVGStringList) -> JsValue = "%identity"

///|
pub fn[T : TSVGStringList] SVGStringList::into(self : SVGStringList) -> T = "%identity"

///|
pub impl TSVGStringList for SVGStringList

///|
/// [SVGStringList](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList) interface.
pub trait TSVGStringList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : String) -> String = _
  insert_item_before(self : Self, new_item : String, index : UInt) -> String = _
  replace_item(self : Self, new_item : String, index : UInt) -> String = _
  remove_item(self : Self, index : UInt) -> String = _
  append_item(self : Self, new_item : String) -> String = _
}

///|
/// [SVGStringList.length](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/length)
impl TSVGStringList with length(self : Self) -> UInt {
  svg_string_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [SVGStringList.numberOfItems](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/numberOfItems)
impl TSVGStringList with number_of_items(self : Self) -> UInt {
  svg_string_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
/// [SVGStringList.clear](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/clear)
impl TSVGStringList with clear(self : Self) -> Unit {
  svg_string_list_clear_ffi(TJsValue::to_js(self))
}

///|
/// [SVGStringList.initialize](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/initialize)
impl TSVGStringList with initialize(self : Self, new_item : String) -> String {
  svg_string_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
/// [SVGStringList.insertItemBefore](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/insertItemBefore)
impl TSVGStringList with insert_item_before(
  self : Self,
  new_item : String,
  index : UInt,
) -> String {
  svg_string_list_insert_item_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGStringList.replaceItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/replaceItem)
impl TSVGStringList with replace_item(
  self : Self,
  new_item : String,
  index : UInt,
) -> String {
  svg_string_list_replace_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGStringList.removeItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/removeItem)
impl TSVGStringList with remove_item(self : Self, index : UInt) -> String {
  svg_string_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [SVGStringList.appendItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/appendItem)
impl TSVGStringList with append_item(self : Self, new_item : String) -> String {
  svg_string_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}
