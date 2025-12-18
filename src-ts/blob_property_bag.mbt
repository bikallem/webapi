// Auto-generated MoonBit bindings for BlobPropertyBag dictionary

// Do not edit manually

///|
#external
pub type BlobPropertyBag

///|
pub impl TJsValue for BlobPropertyBag with to_js(self : BlobPropertyBag) -> JsValue = "%identity"

///|
fn blob_property_bag_ffi(type_ : JsValue, endings : JsValue) -> BlobPropertyBag = "webapi_BlobPropertyBag" "new"

///|
pub fn BlobPropertyBag::new(
  type_? : String = "",
  endings? : EndingType = EndingType::Transparent
) -> BlobPropertyBag {
  blob_property_bag_ffi(TJsValue::to_js(type_), TJsValue::to_js(endings))
}

///|
pub fn BlobPropertyBag::empty() -> BlobPropertyBag = "webapi_Dictionary" "empty"