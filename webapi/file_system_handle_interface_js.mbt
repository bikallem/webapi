extern "js" fn file_system_handle_kind_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.kind"

///|
fn file_system_handle_kind_ffi(obj: JsValue) -> FileSystemHandleKind {
  FileSystemHandleKind::from_unchecked(file_system_handle_kind_ffi_js(obj).unsafe_cast())
}

extern "js" fn file_system_handle_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn file_system_handle_name_ffi(obj: JsValue) -> String {
  file_system_handle_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn file_system_handle_is_same_entry_ffi_js(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.isSameEntry(other)"

///|
fn file_system_handle_is_same_entry_ffi(obj: JsValue, other: JsValue) -> JsPromise[Bool] {
  file_system_handle_is_same_entry_ffi_js(obj, other).unsafe_cast()
}

extern "js" fn file_system_handle_query_permission_ffi_js(obj: JsValue, descriptor: JsValue) -> JsValue = "(obj, descriptor) => obj.queryPermission(descriptor)"

///|
fn file_system_handle_query_permission_ffi(obj: JsValue, descriptor: JsValue) -> JsPromise[PermissionState] {
  file_system_handle_query_permission_ffi_js(obj, descriptor).unsafe_cast()
}

extern "js" fn file_system_handle_request_permission_ffi_js(obj: JsValue, descriptor: JsValue) -> JsValue = "(obj, descriptor) => obj.requestPermission(descriptor)"

///|
fn file_system_handle_request_permission_ffi(obj: JsValue, descriptor: JsValue) -> JsPromise[PermissionState] {
  file_system_handle_request_permission_ffi_js(obj, descriptor).unsafe_cast()
}