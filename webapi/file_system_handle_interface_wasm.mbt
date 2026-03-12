fn file_system_handle_kind_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileSystemHandle" "get_kind"

///|
fn file_system_handle_kind_ffi(obj: JsValue) -> FileSystemHandleKind {
  FileSystemHandleKind::from_unchecked(jsvalue_to_string(file_system_handle_kind_ffi_wasm(obj)))
}

fn file_system_handle_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileSystemHandle" "get_name"

///|
fn file_system_handle_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(file_system_handle_name_ffi_wasm(obj))
}

fn file_system_handle_is_same_entry_ffi_wasm(obj: JsValue, other: JsValue) -> JsValue = "webapi_FileSystemHandle" "isSameEntry"

///|
fn file_system_handle_is_same_entry_ffi(obj: JsValue, other: JsValue) -> JsPromise[Bool] {
  file_system_handle_is_same_entry_ffi_wasm(obj, other).unsafe_cast()
}

fn file_system_handle_query_permission_ffi_wasm(obj: JsValue, descriptor: JsValue) -> JsValue = "webapi_FileSystemHandle" "queryPermission"

///|
fn file_system_handle_query_permission_ffi(obj: JsValue, descriptor: JsValue) -> JsPromise[PermissionState] {
  file_system_handle_query_permission_ffi_wasm(obj, descriptor).unsafe_cast()
}

fn file_system_handle_request_permission_ffi_wasm(obj: JsValue, descriptor: JsValue) -> JsValue = "webapi_FileSystemHandle" "requestPermission"

///|
fn file_system_handle_request_permission_ffi(obj: JsValue, descriptor: JsValue) -> JsPromise[PermissionState] {
  file_system_handle_request_permission_ffi_wasm(obj, descriptor).unsafe_cast()
}