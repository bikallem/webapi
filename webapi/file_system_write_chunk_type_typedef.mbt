// Do not edit. This file is generated.
// MoonBit type: FileSystemWriteChunkType
// Specifications: fs.idl

/// [FileSystemWriteChunkType](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemWriteChunkType)
#external
pub type FileSystemWriteChunkType

pub impl TJsValue for FileSystemWriteChunkType with to_js(self: FileSystemWriteChunkType) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemWriteChunkType with from_js_any(value : JsAny) -> FileSystemWriteChunkType = "%identity"

pub(open) trait TFileSystemWriteChunkType : TJsValue {}

pub fn[T : TFileSystemWriteChunkType + FromJsAny] FileSystemWriteChunkType::into(self : FileSystemWriteChunkType) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TFileSystemWriteChunkType] FileSystemWriteChunkType::from(value : T) -> FileSystemWriteChunkType = "%identity"

pub impl TFileSystemWriteChunkType for FileSystemWriteChunkType

pub impl TFileSystemWriteChunkType for BufferSource

pub impl TFileSystemWriteChunkType for Blob

pub impl TFileSystemWriteChunkType for String

pub impl TFileSystemWriteChunkType for WriteParams