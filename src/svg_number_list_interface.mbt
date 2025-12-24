///|
#external
pub type SVGNumberList

///|
pub impl TJsValue for SVGNumberList with to_js(self : SVGNumberList) -> JsValue = "%identity"

///|
pub fn[T : TSVGNumberList] SVGNumberList::into(self : SVGNumberList) -> T = "%identity"

///|
pub impl TSVGNumberList for SVGNumberList

///|
pub trait TSVGNumberList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : &TSVGNumber) -> SVGNumber = _
  insert_item_before(self : Self, new_item : &TSVGNumber, index : UInt) -> SVGNumber = _
  replace_item(self : Self, new_item : &TSVGNumber, index : UInt) -> SVGNumber = _
  remove_item(self : Self, index : UInt) -> SVGNumber = _
  append_item(self : Self, new_item : &TSVGNumber) -> SVGNumber = _
}

///|
extern "js" fn svg_number_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TSVGNumberList with length(self : Self) -> UInt {
  svg_number_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_number_list_number_of_items_ffi(obj : JsValue) -> UInt = "(obj) => obj.numberOfItems"

///|
impl TSVGNumberList with number_of_items(self : Self) -> UInt {
  svg_number_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_number_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear(obj)"

///|
impl TSVGNumberList with clear(self : Self) -> Unit {
  svg_number_list_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_number_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGNumber = "(obj, new_item) => obj.initialize(obj, new_item)"

///|
impl TSVGNumberList with initialize(self : Self, new_item : &TSVGNumber) -> SVGNumber {
  svg_number_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
extern "js" fn svg_number_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGNumber = "(obj, new_item, index) => obj.insertItemBefore(obj, new_item, index)"

///|
impl TSVGNumberList with insert_item_before(
  self : Self,
  new_item : &TSVGNumber,
  index : UInt,
) -> SVGNumber {
  svg_number_list_insert_item_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_number_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGNumber = "(obj, new_item, index) => obj.replaceItem(obj, new_item, index)"

///|
impl TSVGNumberList with replace_item(
  self : Self,
  new_item : &TSVGNumber,
  index : UInt,
) -> SVGNumber {
  svg_number_list_replace_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_number_list_remove_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> SVGNumber = "(obj, index) => obj.removeItem(obj, index)"

///|
impl TSVGNumberList with remove_item(self : Self, index : UInt) -> SVGNumber {
  svg_number_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
extern "js" fn svg_number_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGNumber = "(obj, new_item) => obj.appendItem(obj, new_item)"

///|
impl TSVGNumberList with append_item(self : Self, new_item : &TSVGNumber) -> SVGNumber {
  svg_number_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}
