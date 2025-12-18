// Auto-generated MoonBit bindings for ImageBitmapRenderingContextSettings dictionary
// Do not edit manually

#external
pub type ImageBitmapRenderingContextSettings

pub impl TJsValue for ImageBitmapRenderingContextSettings with to_js(self: ImageBitmapRenderingContextSettings) -> JsValue = "%identity"


fn image_bitmap_rendering_context_settings_ffi(alpha : JsValue) -> ImageBitmapRenderingContextSettings = "webapi_ImageBitmapRenderingContextSettings" "new"


pub fn ImageBitmapRenderingContextSettings::new(
  alpha? : Bool? : Bool = true) -> ImageBitmapRenderingContextSettings {
    image_bitmap_rendering_context_settings_ffi(
      TJsValue::to_js(alpha)
    )
}


pub fn ImageBitmapRenderingContextSettings::empty() -> ImageBitmapRenderingContextSettings = "webapi_Dictionary" "empty"