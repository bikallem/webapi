// Do not edit. This file is generated.
// MoonBit type: SVGPointList
// Specifications: SVG.idl

/// [SVGPointList](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList)
#external
pub type SVGPointList

pub impl TJsValue for SVGPointList with to_js(self: SVGPointList) -> JsValue = "%identity"

pub impl FromJsAny for SVGPointList with from_js_any(value : JsAny) -> SVGPointList = "%identity"

pub fn[T: TSVGPointList] SVGPointList::into(self : SVGPointList) -> T = "%identity"

pub impl TSVGPointList for SVGPointList

/// [SVGPointList](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList) interface.
pub trait TSVGPointList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : &TDOMPoint) -> DOMPoint = _
  get_item(self : Self, index : UInt) -> DOMPoint = _
  insert_item_before(self : Self, new_item : &TDOMPoint, index : UInt) -> DOMPoint = _
  replace_item(self : Self, new_item : &TDOMPoint, index : UInt) -> DOMPoint = _
  remove_item(self : Self, index : UInt) -> DOMPoint = _
  append_item(self : Self, new_item : &TDOMPoint) -> DOMPoint = _
  set(self : Self, index : UInt, new_item : &TDOMPoint) -> Unit = _
}

/// [SVGPointList.length](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/length)
impl TSVGPointList with length(self : Self) -> UInt {
  svg_point_list_length_ffi(TJsValue::to_js(self))
}

/// [SVGPointList.numberOfItems](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/numberOfItems)
impl TSVGPointList with number_of_items(self : Self) -> UInt {
  svg_point_list_number_of_items_ffi(TJsValue::to_js(self))
}

/// [SVGPointList.clear](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/clear)
impl TSVGPointList with clear(self : Self) -> Unit {
  svg_point_list_clear_ffi(TJsValue::to_js(self))
}

/// [SVGPointList.initialize](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/initialize)
impl TSVGPointList with initialize(self : Self, 
new_item : &TDOMPoint) -> DOMPoint {
  svg_point_list_initialize_ffi(TJsValue::to_js(self), TJsValue::to_js(new_item))
}

/// [SVGPointList.getItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/getItem)
impl TSVGPointList with get_item(self : Self, 
index : UInt) -> DOMPoint {
  svg_point_list_get_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

/// [SVGPointList.insertItemBefore](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/insertItemBefore)
impl TSVGPointList with insert_item_before(self : Self, 
new_item : &TDOMPoint, 
index : UInt) -> DOMPoint {
  svg_point_list_insert_item_before_ffi(TJsValue::to_js(self), TJsValue::to_js(new_item), TJsValue::to_js(index))
}

/// [SVGPointList.replaceItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/replaceItem)
impl TSVGPointList with replace_item(self : Self, 
new_item : &TDOMPoint, 
index : UInt) -> DOMPoint {
  svg_point_list_replace_item_ffi(TJsValue::to_js(self), TJsValue::to_js(new_item), TJsValue::to_js(index))
}

/// [SVGPointList.removeItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/removeItem)
impl TSVGPointList with remove_item(self : Self, 
index : UInt) -> DOMPoint {
  svg_point_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

/// [SVGPointList.appendItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/appendItem)
impl TSVGPointList with append_item(self : Self, 
new_item : &TDOMPoint) -> DOMPoint {
  svg_point_list_append_item_ffi(TJsValue::to_js(self), TJsValue::to_js(new_item))
}

/// [SVGPointList.set](https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList/set)
impl TSVGPointList with set(self : Self, 
index : UInt, 
new_item : &TDOMPoint) -> Unit {
  svg_point_list_set_ffi(TJsValue::to_js(self), TJsValue::to_js(index), TJsValue::to_js(new_item))
}