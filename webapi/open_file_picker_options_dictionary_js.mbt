///|
extern "js" fn open_file_picker_options_ffi(
  types : JsValue,
  exclude_accept_all_option : JsValue,
  id : JsValue,
  start_in : JsValue,
  multiple : JsValue,
) -> OpenFilePickerOptions =
  #|(types, excludeAcceptAllOption, id, startIn, multiple) => {
  #|  const obj = {};
  #|  if (types !== undefined) obj.types = types;
  #|  if (excludeAcceptAllOption !== undefined) obj.excludeAcceptAllOption = excludeAcceptAllOption;
  #|  if (id !== undefined) obj.id = id;
  #|  if (startIn !== undefined) obj.startIn = startIn;
  #|  if (multiple !== undefined) obj.multiple = multiple;
  #|  return obj;
  #|}

///|
extern "js" fn open_file_picker_options_empty_ffi() -> OpenFilePickerOptions = "() => {}"

///|
extern "js" fn open_file_picker_options_get_types_ffi(obj : JsValue) -> JsValue = "(obj) => obj.types"

///|
extern "js" fn open_file_picker_options_get_exclude_accept_all_option_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.excludeAcceptAllOption"

///|
extern "js" fn open_file_picker_options_get_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn open_file_picker_options_get_start_in_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.startIn"

///|
extern "js" fn open_file_picker_options_get_multiple_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.multiple"
