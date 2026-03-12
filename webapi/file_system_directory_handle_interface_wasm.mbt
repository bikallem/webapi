fn file_system_directory_handle_get_file_handle_ffi_wasm(obj: JsValue, name: JsValue, options: JsValue) -> JsValue = "webapi_FileSystemDirectoryHandle" "getFileHandle"

///|
fn file_system_directory_handle_get_file_handle_ffi(obj: JsValue, name: JsValue, options: JsValue) -> JsPromise[FileSystemFileHandle] {
  file_system_directory_handle_get_file_handle_ffi_wasm(obj, name, options).unsafe_cast()
}

fn file_system_directory_handle_get_directory_handle_ffi_wasm(obj: JsValue, name: JsValue, options: JsValue) -> JsValue = "webapi_FileSystemDirectoryHandle" "getDirectoryHandle"

///|
fn file_system_directory_handle_get_directory_handle_ffi(obj: JsValue, name: JsValue, options: JsValue) -> JsPromise[FileSystemDirectoryHandle] {
  file_system_directory_handle_get_directory_handle_ffi_wasm(obj, name, options).unsafe_cast()
}

fn file_system_directory_handle_remove_entry_ffi_wasm(obj: JsValue, name: JsValue, options: JsValue) -> JsValue = "webapi_FileSystemDirectoryHandle" "removeEntry"

///|
fn file_system_directory_handle_remove_entry_ffi(obj: JsValue, name: JsValue, options: JsValue) -> JsPromise[JsValue] {
  file_system_directory_handle_remove_entry_ffi_wasm(obj, name, options).unsafe_cast()
}

fn file_system_directory_handle_resolve_ffi_wasm(obj: JsValue, possible_descendant: JsValue) -> JsValue = "webapi_FileSystemDirectoryHandle" "resolve"

///|
fn file_system_directory_handle_resolve_ffi(obj: JsValue, possible_descendant: JsValue) -> JsPromise[Array[String]] {
  file_system_directory_handle_resolve_ffi_wasm(obj, possible_descendant).unsafe_cast()
}