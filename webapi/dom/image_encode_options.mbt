// Auto-generated MoonBit bindings for ImageEncodeOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary ImageEncodeOptions {
//   DOMString type = "image/png";
//   unrestricted double quality;
// };

///|
#external
pub type ImageEncodeOptions

///|
pub impl TJsValue for ImageEncodeOptions with to_js(self : ImageEncodeOptions) -> JsValue = "%identity"

///|
fn image_encode_options_ffi(type_ : JsValue, quality : JsValue) -> ImageEncodeOptions = "webapi_ImageEncodeOptions" "new"

///|
pub fn ImageEncodeOptions::new(
  type_? : String = "image/png",
  quality? : Double
) -> ImageEncodeOptions {
  let quality_js = opt_to_js(quality)
  image_encode_options_ffi(TJsValue::to_js(type_), quality_js)
}

///|
pub fn ImageEncodeOptions::empty() -> ImageEncodeOptions = "webapi_Dictionary" "empty"