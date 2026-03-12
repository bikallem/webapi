///|
extern "js" fn directory_picker_options_ffi(
  id : JsValue,
  start_in : JsValue,
  mode : JsValue,
) -> DirectoryPickerOptions =
  #|(id, startIn, mode) => {
  #|  const obj = {};
  #|  if (id !== undefined) obj.id = id;
  #|  if (startIn !== undefined) obj.startIn = startIn;
  #|  if (mode !== undefined) obj.mode = mode;
  #|  return obj;
  #|}

///|
extern "js" fn directory_picker_options_empty_ffi() -> DirectoryPickerOptions = "() => {}"

///|
extern "js" fn directory_picker_options_get_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn directory_picker_options_get_start_in_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.startIn"

///|
extern "js" fn directory_picker_options_get_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.mode"
