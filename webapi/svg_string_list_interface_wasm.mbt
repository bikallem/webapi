///|
fn svg_string_list_length_ffi(obj : JsValue) -> UInt = "webapi_SVGStringList" "get_length"

///|
fn svg_string_list_number_of_items_ffi(obj : JsValue) -> UInt = "webapi_SVGStringList" "get_numberOfItems"

///|
fn svg_string_list_clear_ffi(obj : JsValue) -> Unit = "webapi_SVGStringList" "clear"

///|
fn svg_string_list_initialize_ffi_wasm(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "webapi_SVGStringList" "initialize"

///|
fn svg_string_list_initialize_ffi(obj : JsValue, new_item : JsValue) -> String {
  jsvalue_to_string(svg_string_list_initialize_ffi_wasm(obj, new_item))
}

///|
fn svg_string_list_get_item_ffi_wasm(obj : JsValue, index : JsValue) -> JsValue = "webapi_SVGStringList" "getItem"

///|
fn svg_string_list_get_item_ffi(obj : JsValue, index : JsValue) -> String {
  jsvalue_to_string(svg_string_list_get_item_ffi_wasm(obj, index))
}

///|
fn svg_string_list_insert_item_before_ffi_wasm(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "webapi_SVGStringList" "insertItemBefore"

///|
fn svg_string_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> String {
  jsvalue_to_string(
    svg_string_list_insert_item_before_ffi_wasm(obj, new_item, index),
  )
}

///|
fn svg_string_list_replace_item_ffi_wasm(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "webapi_SVGStringList" "replaceItem"

///|
fn svg_string_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> String {
  jsvalue_to_string(svg_string_list_replace_item_ffi_wasm(obj, new_item, index))
}

///|
fn svg_string_list_remove_item_ffi_wasm(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "webapi_SVGStringList" "removeItem"

///|
fn svg_string_list_remove_item_ffi(obj : JsValue, index : JsValue) -> String {
  jsvalue_to_string(svg_string_list_remove_item_ffi_wasm(obj, index))
}

///|
fn svg_string_list_append_item_ffi_wasm(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "webapi_SVGStringList" "appendItem"

///|
fn svg_string_list_append_item_ffi(obj : JsValue, new_item : JsValue) -> String {
  jsvalue_to_string(svg_string_list_append_item_ffi_wasm(obj, new_item))
}

///|
fn svg_string_list_set_ffi(
  obj : JsValue,
  index : JsValue,
  new_item : JsValue,
) -> Unit = "webapi_SVGStringList" "set"
