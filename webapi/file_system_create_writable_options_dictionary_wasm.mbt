///|
fn file_system_create_writable_options_ffi(
  keep_existing_data : JsValue,
) -> FileSystemCreateWritableOptions = "webapi_FileSystemCreateWritableOptions" "new"

///|
fn file_system_create_writable_options_empty_ffi() -> FileSystemCreateWritableOptions = "webapi_Dictionary" "empty"

///|
fn file_system_create_writable_options_get_keep_existing_data_ffi(
  obj : JsValue,
) -> JsValue = "webapi_FileSystemCreateWritableOptions" "get_keepExistingData"
