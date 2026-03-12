///|
fn custom_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  detail : JsValue,
) -> CustomEventInit = "webapi_CustomEventInit" "new"

///|
fn custom_event_init_empty_ffi() -> CustomEventInit = "webapi_Dictionary" "empty"

///|
fn custom_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_CustomEventInit" "get_bubbles"

///|
fn custom_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_CustomEventInit" "get_cancelable"

///|
fn custom_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_CustomEventInit" "get_composed"

///|
fn custom_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_CustomEventInit" "get_detail"
