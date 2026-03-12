extern "js" fn file_system_directory_handle_get_file_handle_ffi_js(obj: JsValue, name: JsValue, options: JsValue) -> JsValue = "(obj, name, options) => obj.getFileHandle(name, options)"

///|
fn file_system_directory_handle_get_file_handle_ffi(obj: JsValue, name: JsValue, options: JsValue) -> JsPromise[FileSystemFileHandle] {
  file_system_directory_handle_get_file_handle_ffi_js(obj, name, options).unsafe_cast()
}

extern "js" fn file_system_directory_handle_get_directory_handle_ffi_js(obj: JsValue, name: JsValue, options: JsValue) -> JsValue = "(obj, name, options) => obj.getDirectoryHandle(name, options)"

///|
fn file_system_directory_handle_get_directory_handle_ffi(obj: JsValue, name: JsValue, options: JsValue) -> JsPromise[FileSystemDirectoryHandle] {
  file_system_directory_handle_get_directory_handle_ffi_js(obj, name, options).unsafe_cast()
}

extern "js" fn file_system_directory_handle_remove_entry_ffi_js(obj: JsValue, name: JsValue, options: JsValue) -> JsValue = "(obj, name, options) => obj.removeEntry(name, options)"

///|
fn file_system_directory_handle_remove_entry_ffi(obj: JsValue, name: JsValue, options: JsValue) -> JsPromise[JsValue] {
  file_system_directory_handle_remove_entry_ffi_js(obj, name, options).unsafe_cast()
}

extern "js" fn file_system_directory_handle_resolve_ffi_js(obj: JsValue, possible_descendant: JsValue) -> JsValue = "(obj, possible_descendant) => obj.resolve(possible_descendant)"

///|
fn file_system_directory_handle_resolve_ffi(obj: JsValue, possible_descendant: JsValue) -> JsPromise[Array[String]] {
  file_system_directory_handle_resolve_ffi_js(obj, possible_descendant).unsafe_cast()
}