// Do not edit. This file is generated.
// MoonBit type: ImageBitmapOptions
// Specifications: html.idl

///|
/// [ImageBitmapOptions](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapOptions)
#external
pub type ImageBitmapOptions

///|
pub impl TJsValue for ImageBitmapOptions with to_js(self : ImageBitmapOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageBitmapOptions with from_js_any(value : JsAny) -> ImageBitmapOptions = "%identity"

///|
pub fn ImageBitmapOptions::new(
  image_orientation? : ImageOrientation,
  premultiply_alpha? : PremultiplyAlpha,
  color_space_conversion? : ColorSpaceConversion,
  resize_width? : UInt,
  resize_height? : UInt,
  resize_quality? : ResizeQuality,
) -> ImageBitmapOptions {
  image_bitmap_options_ffi(
    opt_to_js(image_orientation),
    opt_to_js(premultiply_alpha),
    opt_to_js(color_space_conversion),
    opt_to_js(resize_width),
    opt_to_js(resize_height),
    opt_to_js(resize_quality),
  )
}

///|
pub fn ImageBitmapOptions::empty() -> ImageBitmapOptions {
  image_bitmap_options_empty_ffi()
}

///|
pub fn ImageBitmapOptions::image_orientation(
  self : ImageBitmapOptions,
) -> ImageOrientation? {
  let result = image_bitmap_options_get_image_orientation_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ImageBitmapOptions::premultiply_alpha(
  self : ImageBitmapOptions,
) -> PremultiplyAlpha? {
  let result = image_bitmap_options_get_premultiply_alpha_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ImageBitmapOptions::color_space_conversion(
  self : ImageBitmapOptions,
) -> ColorSpaceConversion? {
  let result = image_bitmap_options_get_color_space_conversion_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ImageBitmapOptions::resize_width(self : ImageBitmapOptions) -> UInt? {
  let result = image_bitmap_options_get_resize_width_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ImageBitmapOptions::resize_height(self : ImageBitmapOptions) -> UInt? {
  let result = image_bitmap_options_get_resize_height_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ImageBitmapOptions::resize_quality(
  self : ImageBitmapOptions,
) -> ResizeQuality? {
  let result = image_bitmap_options_get_resize_quality_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
