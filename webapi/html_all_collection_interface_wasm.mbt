///|
fn html_all_collection_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLAllCollection" "get_length"

///|
fn html_all_collection_get_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_HTMLAllCollection" "get"

///|
fn html_all_collection_named_item_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_HTMLAllCollection" "namedItem"

///|
fn html_all_collection_item_ffi(
  obj : JsValue,
  name_or_index : JsValue,
) -> JsValue = "webapi_HTMLAllCollection" "item"
