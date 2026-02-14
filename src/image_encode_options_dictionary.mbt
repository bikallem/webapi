// Do not edit. This file is generated.
// MoonBit type: ImageEncodeOptions
// Specifications: html.idl

///|
/// [ImageEncodeOptions](https://developer.mozilla.org/en-US/docs/Web/API/ImageEncodeOptions)
#external
pub type ImageEncodeOptions

///|
pub impl TJsValue for ImageEncodeOptions with to_js(self : ImageEncodeOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageEncodeOptions with from_js_any(value : JsAny) -> ImageEncodeOptions = "%identity"

///|
pub fn ImageEncodeOptions::new(
  type_? : String = "image/png",
  quality? : Double,
) -> ImageEncodeOptions {
  image_encode_options_ffi(TJsValue::to_js(type_), opt_to_js(quality))
}

///|
pub fn ImageEncodeOptions::empty() -> ImageEncodeOptions {
  image_encode_options_empty_ffi()
}

///|
pub fn ImageEncodeOptions::type_(self : ImageEncodeOptions) -> String? {
  let result = image_encode_options_get_type_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ImageEncodeOptions::quality(self : ImageEncodeOptions) -> Double? {
  let result = image_encode_options_get_quality_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
