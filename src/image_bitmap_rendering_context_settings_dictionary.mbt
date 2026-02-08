// Do not edit. This file is generated.
// MoonBit type: ImageBitmapRenderingContextSettings
// Specifications: html.idl

/// [ImageBitmapRenderingContextSettings](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapRenderingContextSettings)
#external
pub type ImageBitmapRenderingContextSettings

pub impl TJsValue for ImageBitmapRenderingContextSettings with to_js(self: ImageBitmapRenderingContextSettings) -> JsValue = "%identity"

pub fn ImageBitmapRenderingContextSettings::new(alpha? : Bool = true) -> ImageBitmapRenderingContextSettings {
  image_bitmap_rendering_context_settings_ffi(TJsValue::to_js(alpha))
}

pub fn ImageBitmapRenderingContextSettings::empty() -> ImageBitmapRenderingContextSettings { image_bitmap_rendering_context_settings_empty_ffi() }