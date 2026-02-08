///|
fn svg_string_list_length_ffi(obj : JsValue) -> JsValue = "webapi_SVGStringList" "get_length"

///|
fn svg_string_list_number_of_items_ffi(obj : JsValue) -> JsValue = "webapi_SVGStringList" "get_numberOfItems"

///|
fn svg_string_list_clear_ffi(obj : JsValue) -> Unit = "webapi_SVGStringList" "clear"

///|
fn svg_string_list_initialize_ffi(obj : JsValue, new_item : JsValue) -> JsValue = "webapi_SVGStringList" "initialize"

///|
fn svg_string_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "webapi_SVGStringList" "insertItemBefore"

///|
fn svg_string_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "webapi_SVGStringList" "replaceItem"

///|
fn svg_string_list_remove_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_SVGStringList" "removeItem"

///|
fn svg_string_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "webapi_SVGStringList" "appendItem"
