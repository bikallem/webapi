///|
fn html_options_collection_length_ffi(obj : JsValue) -> JsValue = "webapi_HTMLOptionsCollection" "get_length"

///|
fn html_options_collection_set_length_ffi(
  obj : JsValue,
  length : JsValue,
) -> Unit = "webapi_HTMLOptionsCollection" "set_length"

///|
fn html_options_collection_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "webapi_HTMLOptionsCollection" "add"

///|
fn html_options_collection_remove_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLOptionsCollection" "remove"

///|
fn html_options_collection_selected_index_ffi(obj : JsValue) -> JsValue = "webapi_HTMLOptionsCollection" "get_selectedIndex"

///|
fn html_options_collection_set_selected_index_ffi(
  obj : JsValue,
  selected_index : JsValue,
) -> Unit = "webapi_HTMLOptionsCollection" "set_selectedIndex"
