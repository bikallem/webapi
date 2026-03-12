extern "js" fn file_system_get_file_options_ffi(create: JsValue) -> FileSystemGetFileOptions = 
#|(create) => {
#|  const obj = {};
#|  if (create !== undefined) obj.create = create;
#|  return obj;
#|}

extern "js" fn file_system_get_file_options_empty_ffi() -> FileSystemGetFileOptions = "() => {}"

extern "js" fn file_system_get_file_options_get_create_ffi(obj: JsValue) -> JsValue = "(obj) => obj.create"