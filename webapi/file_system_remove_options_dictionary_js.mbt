extern "js" fn file_system_remove_options_ffi(recursive: JsValue) -> FileSystemRemoveOptions = 
#|(recursive) => {
#|  const obj = {};
#|  if (recursive !== undefined) obj.recursive = recursive;
#|  return obj;
#|}

extern "js" fn file_system_remove_options_empty_ffi() -> FileSystemRemoveOptions = "() => {}"

extern "js" fn file_system_remove_options_get_recursive_ffi(obj: JsValue) -> JsValue = "(obj) => obj.recursive"