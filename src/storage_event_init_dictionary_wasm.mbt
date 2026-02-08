fn storage_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, key: JsValue, old_value: JsValue, new_value: JsValue, url: JsValue, storage_area: JsValue) -> StorageEventInit = "webapi_StorageEventInit" "new"

fn storage_event_init_empty_ffi() -> StorageEventInit = "webapi_Dictionary" "empty"