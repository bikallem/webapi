// Do not edit. This file is generated.
// MoonBit type: FileSystemHandlePermissionDescriptor
// Specifications: file-system-access.idl

/// [FileSystemHandlePermissionDescriptor](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandlePermissionDescriptor)
#external
pub type FileSystemHandlePermissionDescriptor

pub impl TJsValue for FileSystemHandlePermissionDescriptor with to_js(self: FileSystemHandlePermissionDescriptor) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemHandlePermissionDescriptor with from_js_any(value : JsAny) -> FileSystemHandlePermissionDescriptor = "%identity"

pub fn FileSystemHandlePermissionDescriptor::new(mode? : FileSystemPermissionMode) -> FileSystemHandlePermissionDescriptor {
  file_system_handle_permission_descriptor_ffi(opt_to_js(mode))
}

pub fn FileSystemHandlePermissionDescriptor::empty() -> FileSystemHandlePermissionDescriptor { file_system_handle_permission_descriptor_empty_ffi() }

pub fn FileSystemHandlePermissionDescriptor::mode(self : FileSystemHandlePermissionDescriptor) -> FileSystemPermissionMode? {
  file_system_handle_permission_descriptor_get_mode_ffi(TJsValue::to_js(self)).to_option()
}