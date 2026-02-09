///|
extern "js" fn svg_length_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn svg_length_list_length_ffi(obj : JsValue) -> UInt {
  svg_length_list_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_length_list_number_of_items_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.numberOfItems"

///|
fn svg_length_list_number_of_items_ffi(obj : JsValue) -> UInt {
  svg_length_list_number_of_items_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_length_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
extern "js" fn svg_length_list_initialize_ffi_js(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "(obj, new_item) => obj.initialize(new_item)"

///|
fn svg_length_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGLength {
  svg_length_list_initialize_ffi_js(obj, new_item).unsafe_cast()
}

///|
extern "js" fn svg_length_list_insert_item_before_ffi_js(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

///|
fn svg_length_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGLength {
  svg_length_list_insert_item_before_ffi_js(obj, new_item, index).unsafe_cast()
}

///|
extern "js" fn svg_length_list_replace_item_ffi_js(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

///|
fn svg_length_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGLength {
  svg_length_list_replace_item_ffi_js(obj, new_item, index).unsafe_cast()
}

///|
extern "js" fn svg_length_list_remove_item_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.removeItem(index)"

///|
fn svg_length_list_remove_item_ffi(obj : JsValue, index : JsValue) -> SVGLength {
  svg_length_list_remove_item_ffi_js(obj, index).unsafe_cast()
}

///|
extern "js" fn svg_length_list_append_item_ffi_js(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "(obj, new_item) => obj.appendItem(new_item)"

///|
fn svg_length_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGLength {
  svg_length_list_append_item_ffi_js(obj, new_item).unsafe_cast()
}
