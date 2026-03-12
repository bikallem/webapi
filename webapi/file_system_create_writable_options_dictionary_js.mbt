///|
extern "js" fn file_system_create_writable_options_ffi(
  keep_existing_data : JsValue,
) -> FileSystemCreateWritableOptions =
  #|(keepExistingData) => {
  #|  const obj = {};
  #|  if (keepExistingData !== undefined) obj.keepExistingData = keepExistingData;
  #|  return obj;
  #|}

///|
extern "js" fn file_system_create_writable_options_empty_ffi() -> FileSystemCreateWritableOptions = "() => {}"

///|
extern "js" fn file_system_create_writable_options_get_keep_existing_data_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.keepExistingData"
