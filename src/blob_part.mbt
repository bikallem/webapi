// Auto-generated MoonBit bindings for BlobPart typedef
///|
pub(open) trait TBlobPart {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TBlobPart] &TBlobPart::into(self : &TBlobPart) -> T = "%identity"

///|
pub impl TBlobPart for BufferSource with to_js(self : BufferSource) -> JsValue = "%identity"

///|
pub impl TBlobPart for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TBlobPart for String with to_js(self : String) -> JsValue = "%identity"
