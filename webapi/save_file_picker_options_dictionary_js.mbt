///|
extern "js" fn save_file_picker_options_ffi(
  types : JsValue,
  exclude_accept_all_option : JsValue,
  id : JsValue,
  start_in : JsValue,
  suggested_name : JsValue,
) -> SaveFilePickerOptions =
  #|(types, excludeAcceptAllOption, id, startIn, suggestedName) => {
  #|  const obj = {};
  #|  if (types !== undefined) obj.types = types;
  #|  if (excludeAcceptAllOption !== undefined) obj.excludeAcceptAllOption = excludeAcceptAllOption;
  #|  if (id !== undefined) obj.id = id;
  #|  if (startIn !== undefined) obj.startIn = startIn;
  #|  if (suggestedName !== undefined) obj.suggestedName = suggestedName;
  #|  return obj;
  #|}

///|
extern "js" fn save_file_picker_options_empty_ffi() -> SaveFilePickerOptions = "() => {}"

///|
extern "js" fn save_file_picker_options_get_types_ffi(obj : JsValue) -> JsValue = "(obj) => obj.types"

///|
extern "js" fn save_file_picker_options_get_exclude_accept_all_option_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.excludeAcceptAllOption"

///|
extern "js" fn save_file_picker_options_get_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn save_file_picker_options_get_start_in_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.startIn"

///|
extern "js" fn save_file_picker_options_get_suggested_name_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.suggestedName"
