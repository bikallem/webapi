// Do not edit. This file is generated.
// MoonBit type: ClipboardPermissionDescriptor
// Specifications: clipboard-apis.idl, permissions.idl

///|
/// [ClipboardPermissionDescriptor](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardPermissionDescriptor)
#external
pub type ClipboardPermissionDescriptor

///|
pub impl TJsValue for ClipboardPermissionDescriptor with to_js(
  self : ClipboardPermissionDescriptor,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ClipboardPermissionDescriptor with from_js_any(
  value : JsAny,
) -> ClipboardPermissionDescriptor = "%identity"

///|
pub fn ClipboardPermissionDescriptor::new(
  name : String,
  allow_without_gesture? : Bool = false,
) -> ClipboardPermissionDescriptor {
  clipboard_permission_descriptor_ffi(
    TJsValue::to_js(name),
    TJsValue::to_js(allow_without_gesture),
  )
}

///|
pub fn ClipboardPermissionDescriptor::empty() -> ClipboardPermissionDescriptor {
  clipboard_permission_descriptor_empty_ffi()
}

///|
pub fn ClipboardPermissionDescriptor::name(
  self : ClipboardPermissionDescriptor,
) -> String {
  clipboard_permission_descriptor_get_name_ffi(TJsValue::to_js(self))
}

///|
pub fn ClipboardPermissionDescriptor::allow_without_gesture(
  self : ClipboardPermissionDescriptor,
) -> Bool? {
  clipboard_permission_descriptor_get_allow_without_gesture_ffi(
    TJsValue::to_js(self),
  ).to_option_prim()
}
