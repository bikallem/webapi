// Do not edit. This file is generated.
// MoonBit type: FileSystemSyncAccessHandle
// Specifications: fs.idl

/// [FileSystemSyncAccessHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemSyncAccessHandle)
#external
pub type FileSystemSyncAccessHandle

pub impl TJsValue for FileSystemSyncAccessHandle with to_js(self: FileSystemSyncAccessHandle) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemSyncAccessHandle with from_js_any(value : JsAny) -> FileSystemSyncAccessHandle = "%identity"

pub fn[T: TFileSystemSyncAccessHandle] FileSystemSyncAccessHandle::into(self : FileSystemSyncAccessHandle) -> T = "%identity"

pub impl TFileSystemSyncAccessHandle for FileSystemSyncAccessHandle

/// [FileSystemSyncAccessHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemSyncAccessHandle) interface.
pub trait TFileSystemSyncAccessHandle: TJsValue {
  read(self : Self, buffer : &TAllowSharedBufferSource, options? : FileSystemReadWriteOptions) -> UInt64 = _
  write(self : Self, buffer : &TAllowSharedBufferSource, options? : FileSystemReadWriteOptions) -> UInt64 = _
  truncate(self : Self, new_size : UInt64) -> Unit = _
  get_size(self : Self) -> UInt64 = _
  flush(self : Self) -> Unit = _
  close(self : Self) -> Unit = _
}

/// [FileSystemSyncAccessHandle.read](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemSyncAccessHandle/read)
impl TFileSystemSyncAccessHandle with read(self : Self, 
buffer : &TAllowSharedBufferSource, 
options? : FileSystemReadWriteOptions) -> UInt64 {
  file_system_sync_access_handle_read_ffi(TJsValue::to_js(self), buffer.to_js(), opt_to_js(options))
}

/// [FileSystemSyncAccessHandle.write](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemSyncAccessHandle/write)
impl TFileSystemSyncAccessHandle with write(self : Self, 
buffer : &TAllowSharedBufferSource, 
options? : FileSystemReadWriteOptions) -> UInt64 {
  file_system_sync_access_handle_write_ffi(TJsValue::to_js(self), buffer.to_js(), opt_to_js(options))
}

/// [FileSystemSyncAccessHandle.truncate](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemSyncAccessHandle/truncate)
impl TFileSystemSyncAccessHandle with truncate(self : Self, 
new_size : UInt64) -> Unit {
  file_system_sync_access_handle_truncate_ffi(TJsValue::to_js(self), TJsValue::to_js(new_size))
}

/// [FileSystemSyncAccessHandle.getSize](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemSyncAccessHandle/getSize)
impl TFileSystemSyncAccessHandle with get_size(self : Self) -> UInt64 {
  file_system_sync_access_handle_get_size_ffi(TJsValue::to_js(self))
}

/// [FileSystemSyncAccessHandle.flush](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemSyncAccessHandle/flush)
impl TFileSystemSyncAccessHandle with flush(self : Self) -> Unit {
  file_system_sync_access_handle_flush_ffi(TJsValue::to_js(self))
}

/// [FileSystemSyncAccessHandle.close](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemSyncAccessHandle/close)
impl TFileSystemSyncAccessHandle with close(self : Self) -> Unit {
  file_system_sync_access_handle_close_ffi(TJsValue::to_js(self))
}