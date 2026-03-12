extern "js" fn file_system_sync_access_handle_read_ffi_js(obj: JsValue, buffer: JsValue, options: JsValue) -> JsValue = "(obj, buffer, options) => obj.read(buffer, options)"

///|
fn file_system_sync_access_handle_read_ffi(obj: JsValue, buffer: JsValue, options: JsValue) -> UInt64 {
  file_system_sync_access_handle_read_ffi_js(obj, buffer, options).unsafe_cast()
}

extern "js" fn file_system_sync_access_handle_write_ffi_js(obj: JsValue, buffer: JsValue, options: JsValue) -> JsValue = "(obj, buffer, options) => obj.write(buffer, options)"

///|
fn file_system_sync_access_handle_write_ffi(obj: JsValue, buffer: JsValue, options: JsValue) -> UInt64 {
  file_system_sync_access_handle_write_ffi_js(obj, buffer, options).unsafe_cast()
}

extern "js" fn file_system_sync_access_handle_truncate_ffi(obj: JsValue, new_size: JsValue) -> Unit = "(obj, new_size) => obj.truncate(new_size)"

extern "js" fn file_system_sync_access_handle_get_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getSize()"

///|
fn file_system_sync_access_handle_get_size_ffi(obj: JsValue) -> UInt64 {
  file_system_sync_access_handle_get_size_ffi_js(obj).unsafe_cast()
}

extern "js" fn file_system_sync_access_handle_flush_ffi(obj: JsValue) -> Unit = "(obj) => obj.flush()"

extern "js" fn file_system_sync_access_handle_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"