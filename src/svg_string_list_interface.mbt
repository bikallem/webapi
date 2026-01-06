// Do not edit. This file is generated.
// MoonBit type: SVGStringList
// Specifications: SVG.idl

///|
#external
pub type SVGStringList

///|
pub impl TJsValue for SVGStringList with to_js(self : SVGStringList) -> JsValue = "%identity"

///|
pub fn[T : TSVGStringList] SVGStringList::into(self : SVGStringList) -> T = "%identity"

///|
pub impl TSVGStringList for SVGStringList

///|
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
extern "js" fn svg_string_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TSVGStringList with length(self : Self) -> UInt {
  svg_string_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_string_list_number_of_items_ffi(obj : JsValue) -> UInt = "(obj) => obj.numberOfItems"

///|
impl TSVGStringList with number_of_items(self : Self) -> UInt {
  svg_string_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_string_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
impl TSVGStringList with clear(self : Self) -> Unit {
  svg_string_list_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_string_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> String = "(obj, new_item) => obj.initialize(new_item)"

///|
impl TSVGStringList with initialize(self : Self, new_item : String) -> String {
  svg_string_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
extern "js" fn svg_string_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> String = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

///|
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
extern "js" fn svg_string_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> String = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

///|
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
extern "js" fn svg_string_list_remove_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> String = "(obj, index) => obj.removeItem(index)"

///|
impl TSVGStringList with remove_item(self : Self, index : UInt) -> String {
  svg_string_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
extern "js" fn svg_string_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> String = "(obj, new_item) => obj.appendItem(new_item)"

///|
impl TSVGStringList with append_item(self : Self, new_item : String) -> String {
  svg_string_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}
