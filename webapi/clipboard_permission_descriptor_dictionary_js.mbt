extern "js" fn clipboard_permission_descriptor_ffi(name: JsValue, allow_without_gesture: JsValue) -> ClipboardPermissionDescriptor = 
#|(name, allowWithoutGesture) => {
#|  const obj = {};
#|  if (name !== undefined) obj.name = name;
#|  if (allowWithoutGesture !== undefined) obj.allowWithoutGesture = allowWithoutGesture;
#|  return obj;
#|}

extern "js" fn clipboard_permission_descriptor_empty_ffi() -> ClipboardPermissionDescriptor = "() => {}"

extern "js" fn clipboard_permission_descriptor_get_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn clipboard_permission_descriptor_get_name_ffi(obj: JsValue) -> String {
  clipboard_permission_descriptor_get_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn clipboard_permission_descriptor_get_allow_without_gesture_ffi(obj: JsValue) -> JsValue = "(obj) => obj.allowWithoutGesture"