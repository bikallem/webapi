// Do not edit. This file is generated.
// MoonBit type: SVGTransformList
// Specifications: SVG.idl

///|
/// [SVGTransformList](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList)
#external
pub type SVGTransformList

///|
pub impl TJsValue for SVGTransformList with to_js(self : SVGTransformList) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGTransformList with from_js_any(value : JsAny) -> SVGTransformList = "%identity"

///|
pub fn[T : TSVGTransformList] SVGTransformList::into(
  self : SVGTransformList,
) -> T = "%identity"

///|
pub impl TSVGTransformList for SVGTransformList

///|
/// [SVGTransformList](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList) interface.
pub trait TSVGTransformList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : &TSVGTransform) -> SVGTransform = _
  get_item(self : Self, index : UInt) -> SVGTransform = _
  insert_item_before(self : Self, new_item : &TSVGTransform, index : UInt) -> SVGTransform = _
  replace_item(self : Self, new_item : &TSVGTransform, index : UInt) -> SVGTransform = _
  remove_item(self : Self, index : UInt) -> SVGTransform = _
  append_item(self : Self, new_item : &TSVGTransform) -> SVGTransform = _
  set(self : Self, index : UInt, new_item : &TSVGTransform) -> Unit = _
  create_svg_transform_from_matrix(self : Self, matrix? : DOMMatrix2DInit) -> SVGTransform = _
  consolidate_opt(self : Self) -> SVGTransform? = _
  consolidate(self : Self) -> SVGTransform = _
}

///|
/// [SVGTransformList.length](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/length)
impl TSVGTransformList with length(self : Self) -> UInt {
  svg_transform_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTransformList.numberOfItems](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/numberOfItems)
impl TSVGTransformList with number_of_items(self : Self) -> UInt {
  svg_transform_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTransformList.clear](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/clear)
impl TSVGTransformList with clear(self : Self) -> Unit {
  svg_transform_list_clear_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTransformList.initialize](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/initialize)
impl TSVGTransformList with initialize(self : Self, new_item : &TSVGTransform) -> SVGTransform {
  svg_transform_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
/// [SVGTransformList.getItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/getItem)
impl TSVGTransformList with get_item(self : Self, index : UInt) -> SVGTransform {
  svg_transform_list_get_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [SVGTransformList.insertItemBefore](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/insertItemBefore)
impl TSVGTransformList with insert_item_before(
  self : Self,
  new_item : &TSVGTransform,
  index : UInt,
) -> SVGTransform {
  svg_transform_list_insert_item_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGTransformList.replaceItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/replaceItem)
impl TSVGTransformList with replace_item(
  self : Self,
  new_item : &TSVGTransform,
  index : UInt,
) -> SVGTransform {
  svg_transform_list_replace_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGTransformList.removeItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/removeItem)
impl TSVGTransformList with remove_item(self : Self, index : UInt) -> SVGTransform {
  svg_transform_list_remove_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGTransformList.appendItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/appendItem)
impl TSVGTransformList with append_item(self : Self, new_item : &TSVGTransform) -> SVGTransform {
  svg_transform_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
/// [SVGTransformList.set](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/set)
impl TSVGTransformList with set(
  self : Self,
  index : UInt,
  new_item : &TSVGTransform,
) -> Unit {
  svg_transform_list_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
    TJsValue::to_js(new_item),
  )
}

///|
/// [SVGTransformList.createSVGTransformFromMatrix](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/createSVGTransformFromMatrix)
impl TSVGTransformList with create_svg_transform_from_matrix(
  self : Self,
  matrix? : DOMMatrix2DInit = DOMMatrix2DInit::empty(),
) -> SVGTransform {
  svg_transform_list_create_svg_transform_from_matrix_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(matrix),
  )
}

///|
/// [SVGTransformList.consolidate](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList/consolidate)
impl TSVGTransformList with consolidate_opt(self : Self) -> SVGTransform? {
  svg_transform_list_consolidate_ffi(TJsValue::to_js(self)).to_option()
}

///|
impl TSVGTransformList with consolidate(self : Self) -> SVGTransform {
  self.consolidate_opt().unwrap()
}
