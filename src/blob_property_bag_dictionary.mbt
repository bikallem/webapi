// Do not edit. This file is generated.
// MoonBit type: BlobPropertyBag
// Specifications: FileAPI.idl

///|
/// [BlobPropertyBag](https://developer.mozilla.org/en-US/docs/Web/API/BlobPropertyBag)
#external
pub type BlobPropertyBag

///|
pub impl TJsValue for BlobPropertyBag with to_js(self : BlobPropertyBag) -> JsValue = "%identity"

///|
pub fn BlobPropertyBag::new(
  type_? : String = "",
  endings? : EndingType = EndingType::Transparent,
) -> BlobPropertyBag {
  blob_property_bag_ffi(TJsValue::to_js(type_), TJsValue::to_js(endings))
}

///|
pub fn BlobPropertyBag::empty() -> BlobPropertyBag {
  blob_property_bag_empty_ffi()
}
