///|
fn resize_observer_options_ffi(box : JsValue) -> ResizeObserverOptions = "webapi_ResizeObserverOptions" "new"

///|
fn resize_observer_options_empty_ffi() -> ResizeObserverOptions = "webapi_Dictionary" "empty"

///|
fn resize_observer_options_get_box_ffi(obj : JsValue) -> JsValue = "webapi_ResizeObserverOptions" "get_box"
