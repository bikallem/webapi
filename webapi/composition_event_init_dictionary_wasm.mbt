///|
fn composition_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  data : JsValue,
) -> CompositionEventInit = "webapi_CompositionEventInit" "new"

///|
fn composition_event_init_empty_ffi() -> CompositionEventInit = "webapi_Dictionary" "empty"

///|
fn composition_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_bubbles"

///|
fn composition_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_cancelable"

///|
fn composition_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_composed"

///|
fn composition_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_view"

///|
fn composition_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_detail"

///|
fn composition_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_which"

///|
fn composition_event_init_get_data_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_data"
