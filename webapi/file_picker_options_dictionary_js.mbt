///|
extern "js" fn file_picker_options_ffi(
  types : JsValue,
  exclude_accept_all_option : JsValue,
  id : JsValue,
  start_in : JsValue,
) -> FilePickerOptions =
  #|(types, excludeAcceptAllOption, id, startIn) => {
  #|  const obj = {};
  #|  if (types !== undefined) obj.types = types;
  #|  if (excludeAcceptAllOption !== undefined) obj.excludeAcceptAllOption = excludeAcceptAllOption;
  #|  if (id !== undefined) obj.id = id;
  #|  if (startIn !== undefined) obj.startIn = startIn;
  #|  return obj;
  #|}

///|
extern "js" fn file_picker_options_empty_ffi() -> FilePickerOptions = "() => {}"

///|
extern "js" fn file_picker_options_get_types_ffi(obj : JsValue) -> JsValue = "(obj) => obj.types"

///|
extern "js" fn file_picker_options_get_exclude_accept_all_option_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.excludeAcceptAllOption"

///|
extern "js" fn file_picker_options_get_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn file_picker_options_get_start_in_ffi(obj : JsValue) -> JsValue = "(obj) => obj.startIn"
