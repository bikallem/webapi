extern "js" fn file_system_get_directory_options_ffi(create: JsValue) -> FileSystemGetDirectoryOptions = 
#|(create) => {
#|  const obj = {};
#|  if (create !== undefined) obj.create = create;
#|  return obj;
#|}

extern "js" fn file_system_get_directory_options_empty_ffi() -> FileSystemGetDirectoryOptions = "() => {}"

extern "js" fn file_system_get_directory_options_get_create_ffi(obj: JsValue) -> JsValue = "(obj) => obj.create"