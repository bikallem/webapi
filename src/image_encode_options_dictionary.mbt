// Auto-generated MoonBit bindings for ImageEncodeOptions dictionary
// Do not edit manually

#external
pub type ImageEncodeOptions

pub impl TJsValue for ImageEncodeOptions with to_js(self: ImageEncodeOptions) -> JsValue = "%identity"


fn image_encode_options_ffi(type_ : JsValue, quality : JsValue) -> ImageEncodeOptions = "webapi_ImageEncodeOptions" "new"


pub fn ImageEncodeOptions::new(
  type_? : String? : String = "image/png",
  quality? : Double) -> ImageEncodeOptions {
    image_encode_options_ffi(
      TJsValue::to_js(type_)
     ,opt_to_js(quality)
    )
}


pub fn ImageEncodeOptions::empty() -> ImageEncodeOptions = "webapi_Dictionary" "empty"