// Do not edit. This file is generated.
// MoonBit type: ClipboardPermissionDescriptor
// Specifications: clipboard-apis.idl, permissions.idl

/// [ClipboardPermissionDescriptor](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardPermissionDescriptor)
#external
pub type ClipboardPermissionDescriptor

pub impl TJsValue for ClipboardPermissionDescriptor with to_js(self: ClipboardPermissionDescriptor) -> JsValue = "%identity"

pub impl FromJsAny for ClipboardPermissionDescriptor with from_js_any(value : JsAny) -> ClipboardPermissionDescriptor = "%identity"

pub fn ClipboardPermissionDescriptor::new(name : String, 
allow_without_gesture? : Bool) -> ClipboardPermissionDescriptor {
  clipboard_permission_descriptor_ffi(TJsValue::to_js(name), opt_to_js(allow_without_gesture))
}

pub fn ClipboardPermissionDescriptor::empty() -> ClipboardPermissionDescriptor { clipboard_permission_descriptor_empty_ffi() }

pub fn ClipboardPermissionDescriptor::name(self : ClipboardPermissionDescriptor) -> String {
  clipboard_permission_descriptor_get_name_ffi(TJsValue::to_js(self))
}

pub fn ClipboardPermissionDescriptor::allow_without_gesture(self : ClipboardPermissionDescriptor) -> Bool? {
  clipboard_permission_descriptor_get_allow_without_gesture_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn clipboard_permission_descriptor_ffi(name: JsValue, allow_without_gesture: JsValue) -> ClipboardPermissionDescriptor = 
#|(name, allowWithoutGesture) => {
#|  const obj = {};
#|  if (name !== undefined) obj.name = name;
#|  if (allowWithoutGesture !== undefined) obj.allowWithoutGesture = allowWithoutGesture;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn clipboard_permission_descriptor_empty_ffi() -> ClipboardPermissionDescriptor = "() => {}"

#cfg(target="js")
extern "js" fn clipboard_permission_descriptor_get_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn clipboard_permission_descriptor_get_name_ffi(obj: JsValue) -> String {
  clipboard_permission_descriptor_get_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn clipboard_permission_descriptor_get_allow_without_gesture_ffi(obj: JsValue) -> JsValue = "(obj) => obj.allowWithoutGesture"

#cfg(target="wasm-gc")
fn clipboard_permission_descriptor_ffi(name: JsValue, allow_without_gesture: JsValue) -> ClipboardPermissionDescriptor = "webapi_ClipboardPermissionDescriptor" "new"

#cfg(target="wasm-gc")
fn clipboard_permission_descriptor_empty_ffi() -> ClipboardPermissionDescriptor = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn clipboard_permission_descriptor_get_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ClipboardPermissionDescriptor" "get_name"

///|
#cfg(target="wasm-gc")
fn clipboard_permission_descriptor_get_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(clipboard_permission_descriptor_get_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn clipboard_permission_descriptor_get_allow_without_gesture_ffi(obj: JsValue) -> JsValue = "webapi_ClipboardPermissionDescriptor" "get_allowWithoutGesture"