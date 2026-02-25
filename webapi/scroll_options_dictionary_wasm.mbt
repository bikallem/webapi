///|
fn scroll_options_ffi(behavior : JsValue) -> ScrollOptions = "webapi_ScrollOptions" "new"

///|
fn scroll_options_empty_ffi() -> ScrollOptions = "webapi_Dictionary" "empty"

///|
fn scroll_options_get_behavior_ffi(obj : JsValue) -> JsValue = "webapi_ScrollOptions" "get_behavior"
