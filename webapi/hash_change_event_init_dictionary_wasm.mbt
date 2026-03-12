///|
fn hash_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_url : JsValue,
  new_url : JsValue,
) -> HashChangeEventInit = "webapi_HashChangeEventInit" "new"

///|
fn hash_change_event_init_empty_ffi() -> HashChangeEventInit = "webapi_Dictionary" "empty"

///|
fn hash_change_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_bubbles"

///|
fn hash_change_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_cancelable"

///|
fn hash_change_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_composed"

///|
fn hash_change_event_init_get_old_url_ffi(obj : JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_oldURL"

///|
fn hash_change_event_init_get_new_url_ffi(obj : JsValue) -> JsValue = "webapi_HashChangeEventInit" "get_newURL"
