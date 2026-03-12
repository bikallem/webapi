///|
extern "js" fn file_system_file_handle_get_file_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getFile()"

///|
fn file_system_file_handle_get_file_ffi(obj : JsValue) -> JsPromise[File] {
  file_system_file_handle_get_file_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_system_file_handle_create_writable_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.createWritable(options)"

///|
fn file_system_file_handle_create_writable_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemWritableFileStream] {
  file_system_file_handle_create_writable_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn file_system_file_handle_create_sync_access_handle_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createSyncAccessHandle()"

///|
fn file_system_file_handle_create_sync_access_handle_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemSyncAccessHandle] {
  file_system_file_handle_create_sync_access_handle_ffi_js(obj).unsafe_cast()
}
