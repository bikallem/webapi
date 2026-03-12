fn file_system_get_directory_options_ffi(create: JsValue) -> FileSystemGetDirectoryOptions = "webapi_FileSystemGetDirectoryOptions" "new"

fn file_system_get_directory_options_empty_ffi() -> FileSystemGetDirectoryOptions = "webapi_Dictionary" "empty"

fn file_system_get_directory_options_get_create_ffi(obj: JsValue) -> JsValue = "webapi_FileSystemGetDirectoryOptions" "get_create"