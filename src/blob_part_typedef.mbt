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
pub impl FromJsAny for BlobPart with from_js_any(value : JsAny) -> BlobPart = "%identity"

///|
pub(open) trait TBlobPart: TJsValue {}

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TBlobPart + FromJsAny] BlobPart::into(self : BlobPart) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TBlobPart + FromJsAny] BlobPart::unsafe_into(self : BlobPart) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TBlobPart] BlobPart::from(value : T) -> BlobPart = "%identity"

///|
pub impl TBlobPart for BlobPart

///|
pub impl TBlobPart for BufferSource

///|
pub impl TBlobPart for Blob

///|
pub impl TBlobPart for String
