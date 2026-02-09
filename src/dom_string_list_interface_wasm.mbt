///|
fn dom_string_list_length_ffi(obj : JsValue) -> UInt = "webapi_DOMStringList" "get_length"

///|
fn dom_string_list_contains_ffi(obj : JsValue, string : JsValue) -> Bool = "webapi_DOMStringList" "contains"
