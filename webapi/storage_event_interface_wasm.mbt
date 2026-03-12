fn storage_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> StorageEvent = "webapi_StorageEvent" "new"

fn storage_event_key_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StorageEvent" "get_key"

///|
fn storage_event_key_ffi(obj: JsValue) -> String {
  jsvalue_to_string(storage_event_key_ffi_wasm(obj))
}

fn storage_event_old_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StorageEvent" "get_oldValue"

///|
fn storage_event_old_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(storage_event_old_value_ffi_wasm(obj))
}

fn storage_event_new_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StorageEvent" "get_newValue"

///|
fn storage_event_new_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(storage_event_new_value_ffi_wasm(obj))
}

fn storage_event_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StorageEvent" "get_url"

///|
fn storage_event_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(storage_event_url_ffi_wasm(obj))
}

fn storage_event_storage_area_ffi(obj: JsValue) -> Storage = "webapi_StorageEvent" "get_storageArea"

fn storage_event_init_storage_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue, key: JsValue, old_value: JsValue, new_value: JsValue, url: JsValue, storage_area: JsValue) -> Unit = "webapi_StorageEvent" "initStorageEvent"