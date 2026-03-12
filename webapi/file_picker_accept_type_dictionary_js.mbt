extern "js" fn file_picker_accept_type_ffi(description: JsValue, accept: JsValue) -> FilePickerAcceptType = 
#|(description, accept) => {
#|  const obj = {};
#|  if (description !== undefined) obj.description = description;
#|  if (accept !== undefined) obj.accept = accept;
#|  return obj;
#|}

extern "js" fn file_picker_accept_type_empty_ffi() -> FilePickerAcceptType = "() => {}"

extern "js" fn file_picker_accept_type_get_description_ffi(obj: JsValue) -> JsValue = "(obj) => obj.description"

extern "js" fn file_picker_accept_type_get_accept_ffi(obj: JsValue) -> JsValue = "(obj) => obj.accept"