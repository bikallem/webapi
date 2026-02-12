// Do not edit. This file is generated.
// MoonBit type: BlobPart
// Specifications: FileAPI.idl

///|
/// [BlobPart](https://developer.mozilla.org/en-US/docs/Web/API/BlobPart)
#external
pub type BlobPart

///|
pub impl TJsValue for BlobPart with to_js(self : BlobPart) -> JsValue = "%identity"

///|
pub(open) trait TBlobPart {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TBlobPart] BlobPart::into(self : BlobPart) -> T = "%identity"

///|
pub impl TBlobPart for BlobPart with to_js(self : BlobPart) -> JsValue = "%identity"

///|
pub impl TBlobPart for BufferSource with to_js(self : BufferSource) -> JsValue = "%identity"

///|
pub impl TBlobPart for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TBlobPart for String with to_js(self : String) -> JsValue = "%identity"
