///|
fn file_system_sync_access_handle_read_ffi(
  obj : JsValue,
  buffer : JsValue,
  options : JsValue,
) -> UInt64 = "webapi_FileSystemSyncAccessHandle" "read"

///|
fn file_system_sync_access_handle_write_ffi(
  obj : JsValue,
  buffer : JsValue,
  options : JsValue,
) -> UInt64 = "webapi_FileSystemSyncAccessHandle" "write"

///|
fn file_system_sync_access_handle_truncate_ffi(
  obj : JsValue,
  new_size : JsValue,
) -> Unit = "webapi_FileSystemSyncAccessHandle" "truncate"

///|
fn file_system_sync_access_handle_get_size_ffi(obj : JsValue) -> UInt64 = "webapi_FileSystemSyncAccessHandle" "getSize"

///|
fn file_system_sync_access_handle_flush_ffi(obj : JsValue) -> Unit = "webapi_FileSystemSyncAccessHandle" "flush"

///|
fn file_system_sync_access_handle_close_ffi(obj : JsValue) -> Unit = "webapi_FileSystemSyncAccessHandle" "close"
