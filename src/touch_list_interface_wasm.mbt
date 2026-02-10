///|
fn touch_list_length_ffi(obj : JsValue) -> UInt = "webapi_TouchList" "get_length"

///|
fn touch_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_TouchList" "item"
