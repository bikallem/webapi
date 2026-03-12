fn file_system_file_handle_get_file_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileSystemFileHandle" "getFile"

///|
fn file_system_file_handle_get_file_ffi(obj: JsValue) -> JsPromise[File] {
  file_system_file_handle_get_file_ffi_wasm(obj).unsafe_cast()
}

fn file_system_file_handle_create_writable_ffi_wasm(obj: JsValue, options: JsValue) -> JsValue = "webapi_FileSystemFileHandle" "createWritable"

///|
fn file_system_file_handle_create_writable_ffi(obj: JsValue, options: JsValue) -> JsPromise[FileSystemWritableFileStream] {
  file_system_file_handle_create_writable_ffi_wasm(obj, options).unsafe_cast()
}

fn file_system_file_handle_create_sync_access_handle_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileSystemFileHandle" "createSyncAccessHandle"

///|
fn file_system_file_handle_create_sync_access_handle_ffi(obj: JsValue) -> JsPromise[FileSystemSyncAccessHandle] {
  file_system_file_handle_create_sync_access_handle_ffi_wasm(obj).unsafe_cast()
}