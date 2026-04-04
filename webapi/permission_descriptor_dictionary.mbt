// Do not edit. This file is generated.
// MoonBit type: PermissionDescriptor
// Specifications: permissions.idl

///|
/// [PermissionDescriptor](https://developer.mozilla.org/en-US/docs/Web/API/PermissionDescriptor)
#external
pub type PermissionDescriptor

///|
pub impl TJsValue for PermissionDescriptor with to_js(
  self : PermissionDescriptor,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PermissionDescriptor with from_js_any(value : JsAny) -> PermissionDescriptor = "%identity"

///|
pub fn PermissionDescriptor::new(name : String) -> PermissionDescriptor {
  permission_descriptor_ffi(TJsValue::to_js(name))
}

///|
pub fn PermissionDescriptor::empty() -> PermissionDescriptor {
  permission_descriptor_empty_ffi()
}

///|
pub fn PermissionDescriptor::name(self : PermissionDescriptor) -> String {
  permission_descriptor_get_name_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn permission_descriptor_ffi(
  name : JsValue,
) -> PermissionDescriptor =
  #|(name) => {
  #|  const obj = {};
  #|  if (name !== undefined) obj.name = name;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn permission_descriptor_empty_ffi() -> PermissionDescriptor = "() => {}"

///|
#cfg(target="js")
extern "js" fn permission_descriptor_get_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn permission_descriptor_get_name_ffi(obj : JsValue) -> String {
  permission_descriptor_get_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn permission_descriptor_ffi(name : JsValue) -> PermissionDescriptor = "webapi_PermissionDescriptor" "new"

///|
#cfg(target="wasm-gc")
fn permission_descriptor_empty_ffi() -> PermissionDescriptor = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn permission_descriptor_get_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionDescriptor" "get_name"

///|
#cfg(target="wasm-gc")
fn permission_descriptor_get_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(permission_descriptor_get_name_ffi_wasm(obj))
}
