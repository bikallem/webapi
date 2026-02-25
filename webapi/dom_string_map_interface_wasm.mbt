///|
fn dom_string_map_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_DOMStringMap" "get"

///|
fn dom_string_map_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "webapi_DOMStringMap" "set"

///|
fn dom_string_map_delete__ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_DOMStringMap" "delete_"
