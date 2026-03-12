///|
extern "js" fn file_system_read_write_options_ffi(
  at : JsValue,
) -> FileSystemReadWriteOptions =
  #|(at) => {
  #|  const obj = {};
  #|  if (at !== undefined) obj.at = at;
  #|  return obj;
  #|}

///|
extern "js" fn file_system_read_write_options_empty_ffi() -> FileSystemReadWriteOptions = "() => {}"

///|
extern "js" fn file_system_read_write_options_get_at_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.at"
