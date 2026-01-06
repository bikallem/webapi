// Do not edit. This file is generated.
// MoonBit type: SVGPointList
// Specifications: SVG.idl

///|
#external
pub type SVGPointList

///|
pub impl TJsValue for SVGPointList with to_js(self : SVGPointList) -> JsValue = "%identity"

///|
pub fn[T : TSVGPointList] SVGPointList::into(self : SVGPointList) -> T = "%identity"

///|
pub impl TSVGPointList for SVGPointList

///|
pub trait TSVGPointList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : &TDOMPoint) -> DOMPoint = _
  insert_item_before(self : Self, new_item : &TDOMPoint, index : UInt) -> DOMPoint = _
  replace_item(self : Self, new_item : &TDOMPoint, index : UInt) -> DOMPoint = _
  remove_item(self : Self, index : UInt) -> DOMPoint = _
  append_item(self : Self, new_item : &TDOMPoint) -> DOMPoint = _
}

///|
extern "js" fn svg_point_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TSVGPointList with length(self : Self) -> UInt {
  svg_point_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_point_list_number_of_items_ffi(obj : JsValue) -> UInt = "(obj) => obj.numberOfItems"

///|
impl TSVGPointList with number_of_items(self : Self) -> UInt {
  svg_point_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_point_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
impl TSVGPointList with clear(self : Self) -> Unit {
  svg_point_list_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_point_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> DOMPoint = "(obj, new_item) => obj.initialize(new_item)"

///|
impl TSVGPointList with initialize(self : Self, new_item : &TDOMPoint) -> DOMPoint {
  svg_point_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
extern "js" fn svg_point_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> DOMPoint = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

///|
impl TSVGPointList with insert_item_before(
  self : Self,
  new_item : &TDOMPoint,
  index : UInt,
) -> DOMPoint {
  svg_point_list_insert_item_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_point_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> DOMPoint = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

///|
impl TSVGPointList with replace_item(
  self : Self,
  new_item : &TDOMPoint,
  index : UInt,
) -> DOMPoint {
  svg_point_list_replace_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_point_list_remove_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> DOMPoint = "(obj, index) => obj.removeItem(index)"

///|
impl TSVGPointList with remove_item(self : Self, index : UInt) -> DOMPoint {
  svg_point_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
extern "js" fn svg_point_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> DOMPoint = "(obj, new_item) => obj.appendItem(new_item)"

///|
impl TSVGPointList with append_item(self : Self, new_item : &TDOMPoint) -> DOMPoint {
  svg_point_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}
