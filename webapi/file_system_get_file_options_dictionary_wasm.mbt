///|
fn file_system_get_file_options_ffi(
  create : JsValue,
) -> FileSystemGetFileOptions = "webapi_FileSystemGetFileOptions" "new"

///|
fn file_system_get_file_options_empty_ffi() -> FileSystemGetFileOptions = "webapi_Dictionary" "empty"

///|
fn file_system_get_file_options_get_create_ffi(obj : JsValue) -> JsValue = "webapi_FileSystemGetFileOptions" "get_create"
