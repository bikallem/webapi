// Do not edit. This file is generated.
// MoonBit type: FileSystemWriteChunkType
// Specifications: fs.idl

///|
/// [FileSystemWriteChunkType](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemWriteChunkType)
#external
pub type FileSystemWriteChunkType

///|
pub impl TJsValue for FileSystemWriteChunkType with to_js(
  self : FileSystemWriteChunkType,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for FileSystemWriteChunkType with from_js_any(value : JsAny) -> FileSystemWriteChunkType = "%identity"

///|
pub(open) trait TFileSystemWriteChunkType {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TFileSystemWriteChunkType + FromJsAny] FileSystemWriteChunkType::into(
  self : FileSystemWriteChunkType,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TFileSystemWriteChunkType] FileSystemWriteChunkType::from(
  value : T,
) -> FileSystemWriteChunkType = "%identity"

///|
pub impl TFileSystemWriteChunkType for FileSystemWriteChunkType with to_js(
  self : FileSystemWriteChunkType,
) -> JsValue = "%identity"

///|
pub impl TFileSystemWriteChunkType for BufferSource with to_js(
  self : BufferSource,
) -> JsValue = "%identity"

///|
pub impl TFileSystemWriteChunkType for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TFileSystemWriteChunkType for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TFileSystemWriteChunkType for WriteParams with to_js(
  self : WriteParams,
) -> JsValue = "%identity"
