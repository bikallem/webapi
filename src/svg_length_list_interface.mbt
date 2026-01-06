// Do not edit. This file is generated.
// MoonBit type: SVGLengthList
// Specifications: SVG.idl

///|
#external
pub type SVGLengthList

///|
pub impl TJsValue for SVGLengthList with to_js(self : SVGLengthList) -> JsValue = "%identity"

///|
pub fn[T : TSVGLengthList] SVGLengthList::into(self : SVGLengthList) -> T = "%identity"

///|
pub impl TSVGLengthList for SVGLengthList

///|
pub trait TSVGLengthList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : &TSVGLength) -> SVGLength = _
  insert_item_before(self : Self, new_item : &TSVGLength, index : UInt) -> SVGLength = _
  replace_item(self : Self, new_item : &TSVGLength, index : UInt) -> SVGLength = _
  remove_item(self : Self, index : UInt) -> SVGLength = _
  append_item(self : Self, new_item : &TSVGLength) -> SVGLength = _
}

///|
extern "js" fn svg_length_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TSVGLengthList with length(self : Self) -> UInt {
  svg_length_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_length_list_number_of_items_ffi(obj : JsValue) -> UInt = "(obj) => obj.numberOfItems"

///|
impl TSVGLengthList with number_of_items(self : Self) -> UInt {
  svg_length_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_length_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
impl TSVGLengthList with clear(self : Self) -> Unit {
  svg_length_list_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_length_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGLength = "(obj, new_item) => obj.initialize(new_item)"

///|
impl TSVGLengthList with initialize(self : Self, new_item : &TSVGLength) -> SVGLength {
  svg_length_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
extern "js" fn svg_length_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGLength = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

///|
impl TSVGLengthList with insert_item_before(
  self : Self,
  new_item : &TSVGLength,
  index : UInt,
) -> SVGLength {
  svg_length_list_insert_item_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_length_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGLength = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

///|
impl TSVGLengthList with replace_item(
  self : Self,
  new_item : &TSVGLength,
  index : UInt,
) -> SVGLength {
  svg_length_list_replace_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_length_list_remove_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> SVGLength = "(obj, index) => obj.removeItem(index)"

///|
impl TSVGLengthList with remove_item(self : Self, index : UInt) -> SVGLength {
  svg_length_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
extern "js" fn svg_length_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGLength = "(obj, new_item) => obj.appendItem(new_item)"

///|
impl TSVGLengthList with append_item(self : Self, new_item : &TSVGLength) -> SVGLength {
  svg_length_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}
