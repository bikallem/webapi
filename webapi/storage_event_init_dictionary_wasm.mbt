fn storage_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, key: JsValue, old_value: JsValue, new_value: JsValue, url: JsValue, storage_area: JsValue) -> StorageEventInit = "webapi_StorageEventInit" "new"

fn storage_event_init_empty_ffi() -> StorageEventInit = "webapi_Dictionary" "empty"

fn storage_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_StorageEventInit" "get_bubbles"

fn storage_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_StorageEventInit" "get_cancelable"

fn storage_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_StorageEventInit" "get_composed"

fn storage_event_init_get_key_ffi(obj: JsValue) -> JsValue = "webapi_StorageEventInit" "get_key"

fn storage_event_init_get_old_value_ffi(obj: JsValue) -> JsValue = "webapi_StorageEventInit" "get_oldValue"

fn storage_event_init_get_new_value_ffi(obj: JsValue) -> JsValue = "webapi_StorageEventInit" "get_newValue"

fn storage_event_init_get_url_ffi(obj: JsValue) -> JsValue = "webapi_StorageEventInit" "get_url"

fn storage_event_init_get_storage_area_ffi(obj: JsValue) -> JsValue = "webapi_StorageEventInit" "get_storageArea"