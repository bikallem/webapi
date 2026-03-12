extern "js" fn permission_descriptor_ffi(name: JsValue) -> PermissionDescriptor = 
#|(name) => {
#|  const obj = {};
#|  if (name !== undefined) obj.name = name;
#|  return obj;
#|}

extern "js" fn permission_descriptor_empty_ffi() -> PermissionDescriptor = "() => {}"

extern "js" fn permission_descriptor_get_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn permission_descriptor_get_name_ffi(obj: JsValue) -> String {
  permission_descriptor_get_name_ffi_js(obj).unsafe_cast()
}