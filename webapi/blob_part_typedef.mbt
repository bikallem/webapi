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
pub(open) trait TBlobPart {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TBlobPart + FromJsAny] BlobPart::into(self : BlobPart) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TBlobPart] BlobPart::from(value : T) -> BlobPart = "%identity"

///|
pub impl TBlobPart for BlobPart with to_js(self : BlobPart) -> JsValue = "%identity"

///|
pub impl TBlobPart for BufferSource with to_js(self : BufferSource) -> JsValue = "%identity"

///|
pub impl TBlobPart for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TBlobPart for String with to_js(self : String) -> JsValue = "%identity"
