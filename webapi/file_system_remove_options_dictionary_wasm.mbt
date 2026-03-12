///|
fn file_system_remove_options_ffi(
  recursive : JsValue,
) -> FileSystemRemoveOptions = "webapi_FileSystemRemoveOptions" "new"

///|
fn file_system_remove_options_empty_ffi() -> FileSystemRemoveOptions = "webapi_Dictionary" "empty"

///|
fn file_system_remove_options_get_recursive_ffi(obj : JsValue) -> JsValue = "webapi_FileSystemRemoveOptions" "get_recursive"
