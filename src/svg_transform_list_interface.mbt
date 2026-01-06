// Do not edit. This file is generated.
// MoonBit type: SVGTransformList
// Specifications: SVG.idl

///|
#external
pub type SVGTransformList

///|
pub impl TJsValue for SVGTransformList with to_js(self : SVGTransformList) -> JsValue = "%identity"

///|
pub fn[T : TSVGTransformList] SVGTransformList::into(
  self : SVGTransformList,
) -> T = "%identity"

///|
pub impl TSVGTransformList for SVGTransformList

///|
pub trait TSVGTransformList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : &TSVGTransform) -> SVGTransform = _
  insert_item_before(self : Self, new_item : &TSVGTransform, index : UInt) -> SVGTransform = _
  replace_item(self : Self, new_item : &TSVGTransform, index : UInt) -> SVGTransform = _
  remove_item(self : Self, index : UInt) -> SVGTransform = _
  append_item(self : Self, new_item : &TSVGTransform) -> SVGTransform = _
  create_svg_transform_from_matrix(self : Self, matrix? : DOMMatrix2DInit) -> SVGTransform = _
  consolidate(self : Self) -> SVGTransform? = _
}

///|
extern "js" fn svg_transform_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TSVGTransformList with length(self : Self) -> UInt {
  svg_transform_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_transform_list_number_of_items_ffi(obj : JsValue) -> UInt = "(obj) => obj.numberOfItems"

///|
impl TSVGTransformList with number_of_items(self : Self) -> UInt {
  svg_transform_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_transform_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
impl TSVGTransformList with clear(self : Self) -> Unit {
  svg_transform_list_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_transform_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGTransform = "(obj, new_item) => obj.initialize(new_item)"

///|
impl TSVGTransformList with initialize(self : Self, new_item : &TSVGTransform) -> SVGTransform {
  svg_transform_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
extern "js" fn svg_transform_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGTransform = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

///|
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
extern "js" fn svg_transform_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGTransform = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

///|
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
extern "js" fn svg_transform_list_remove_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> SVGTransform = "(obj, index) => obj.removeItem(index)"

///|
impl TSVGTransformList with remove_item(self : Self, index : UInt) -> SVGTransform {
  svg_transform_list_remove_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_transform_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGTransform = "(obj, new_item) => obj.appendItem(new_item)"

///|
impl TSVGTransformList with append_item(self : Self, new_item : &TSVGTransform) -> SVGTransform {
  svg_transform_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
extern "js" fn svg_transform_list_create_svg_transform_from_matrix_ffi(
  obj : JsValue,
  matrix : JsValue,
) -> SVGTransform = "(obj, matrix) => obj.createSVGTransformFromMatrix(matrix)"

///|
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
extern "js" fn svg_transform_list_consolidate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.consolidate()"

///|
impl TSVGTransformList with consolidate(self : Self) -> SVGTransform? {
  let result = svg_transform_list_consolidate_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
