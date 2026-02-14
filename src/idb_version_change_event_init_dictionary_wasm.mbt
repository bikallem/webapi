///|
fn idb_version_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_version : JsValue,
  new_version : JsValue,
) -> IDBVersionChangeEventInit = "webapi_IDBVersionChangeEventInit" "new"

///|
fn idb_version_change_event_init_empty_ffi() -> IDBVersionChangeEventInit = "webapi_Dictionary" "empty"
