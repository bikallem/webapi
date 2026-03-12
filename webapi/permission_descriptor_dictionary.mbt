// Do not edit. This file is generated.
// MoonBit type: PermissionDescriptor
// Specifications: permissions.idl

/// [PermissionDescriptor](https://developer.mozilla.org/en-US/docs/Web/API/PermissionDescriptor)
#external
pub type PermissionDescriptor

pub impl TJsValue for PermissionDescriptor with to_js(self: PermissionDescriptor) -> JsValue = "%identity"

pub impl FromJsAny for PermissionDescriptor with from_js_any(value : JsAny) -> PermissionDescriptor = "%identity"

pub fn PermissionDescriptor::new(name : String) -> PermissionDescriptor {
  permission_descriptor_ffi(TJsValue::to_js(name))
}

pub fn PermissionDescriptor::empty() -> PermissionDescriptor { permission_descriptor_empty_ffi() }

pub fn PermissionDescriptor::name(self : PermissionDescriptor) -> String {
  permission_descriptor_get_name_ffi(TJsValue::to_js(self))
}