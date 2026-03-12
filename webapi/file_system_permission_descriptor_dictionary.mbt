// Do not edit. This file is generated.
// MoonBit type: FileSystemPermissionDescriptor
// Specifications: file-system-access.idl, permissions.idl

/// [FileSystemPermissionDescriptor](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemPermissionDescriptor)
#external
pub type FileSystemPermissionDescriptor

pub impl TJsValue for FileSystemPermissionDescriptor with to_js(self: FileSystemPermissionDescriptor) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemPermissionDescriptor with from_js_any(value : JsAny) -> FileSystemPermissionDescriptor = "%identity"

pub fn FileSystemPermissionDescriptor::new(name : String, 
handle : &TFileSystemHandle, 
mode? : FileSystemPermissionMode) -> FileSystemPermissionDescriptor {
  file_system_permission_descriptor_ffi(TJsValue::to_js(name), TJsValue::to_js(handle), opt_to_js(mode))
}

pub fn FileSystemPermissionDescriptor::empty() -> FileSystemPermissionDescriptor { file_system_permission_descriptor_empty_ffi() }

pub fn FileSystemPermissionDescriptor::name(self : FileSystemPermissionDescriptor) -> String {
  file_system_permission_descriptor_get_name_ffi(TJsValue::to_js(self))
}

pub fn FileSystemPermissionDescriptor::handle(self : FileSystemPermissionDescriptor) -> FileSystemHandle {
  file_system_permission_descriptor_get_handle_ffi(TJsValue::to_js(self))
}

pub fn FileSystemPermissionDescriptor::mode(self : FileSystemPermissionDescriptor) -> FileSystemPermissionMode? {
  file_system_permission_descriptor_get_mode_ffi(TJsValue::to_js(self)).to_option()
}