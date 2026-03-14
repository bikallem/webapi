// Do not edit. This file is generated.
// MoonBit type: ImageBitmapRenderingContextSettings
// Specifications: html.idl

/// [ImageBitmapRenderingContextSettings](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapRenderingContextSettings)
#external
pub type ImageBitmapRenderingContextSettings

pub impl TJsValue for ImageBitmapRenderingContextSettings with to_js(self: ImageBitmapRenderingContextSettings) -> JsValue = "%identity"

pub impl FromJsAny for ImageBitmapRenderingContextSettings with from_js_any(value : JsAny) -> ImageBitmapRenderingContextSettings = "%identity"

pub fn ImageBitmapRenderingContextSettings::new(alpha? : Bool) -> ImageBitmapRenderingContextSettings {
  image_bitmap_rendering_context_settings_ffi(opt_to_js(alpha))
}

pub fn ImageBitmapRenderingContextSettings::empty() -> ImageBitmapRenderingContextSettings { image_bitmap_rendering_context_settings_empty_ffi() }

pub fn ImageBitmapRenderingContextSettings::alpha(self : ImageBitmapRenderingContextSettings) -> Bool? {
  image_bitmap_rendering_context_settings_get_alpha_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn image_bitmap_rendering_context_settings_ffi(alpha: JsValue) -> ImageBitmapRenderingContextSettings = 
#|(alpha) => {
#|  const obj = {};
#|  if (alpha !== undefined) obj.alpha = alpha;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn image_bitmap_rendering_context_settings_empty_ffi() -> ImageBitmapRenderingContextSettings = "() => {}"

#cfg(target="js")
extern "js" fn image_bitmap_rendering_context_settings_get_alpha_ffi(obj: JsValue) -> JsValue = "(obj) => obj.alpha"

#cfg(target="wasm-gc")
fn image_bitmap_rendering_context_settings_ffi(alpha: JsValue) -> ImageBitmapRenderingContextSettings = "webapi_ImageBitmapRenderingContextSettings" "new"

#cfg(target="wasm-gc")
fn image_bitmap_rendering_context_settings_empty_ffi() -> ImageBitmapRenderingContextSettings = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn image_bitmap_rendering_context_settings_get_alpha_ffi(obj: JsValue) -> JsValue = "webapi_ImageBitmapRenderingContextSettings" "get_alpha"