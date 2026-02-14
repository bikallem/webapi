// Do not edit. This file is generated.
// MoonBit type: CanvasRenderingContext2DSettings
// Specifications: html.idl

///|
/// [CanvasRenderingContext2DSettings](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2DSettings)
#external
pub type CanvasRenderingContext2DSettings

///|
pub impl TJsValue for CanvasRenderingContext2DSettings with to_js(
  self : CanvasRenderingContext2DSettings,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CanvasRenderingContext2DSettings with from_js_any(
  value : JsAny,
) -> CanvasRenderingContext2DSettings = "%identity"

///|
pub fn CanvasRenderingContext2DSettings::new(
  alpha? : Bool = true,
  desynchronized? : Bool = false,
  color_space? : PredefinedColorSpace = PredefinedColorSpace::Srgb,
  color_type? : CanvasColorType = CanvasColorType::Unorm8,
  will_read_frequently? : Bool = false,
) -> CanvasRenderingContext2DSettings {
  canvas_rendering_context2d_settings_ffi(
    TJsValue::to_js(alpha),
    TJsValue::to_js(desynchronized),
    TJsValue::to_js(color_space),
    TJsValue::to_js(color_type),
    TJsValue::to_js(will_read_frequently),
  )
}

///|
pub fn CanvasRenderingContext2DSettings::empty() -> CanvasRenderingContext2DSettings {
  canvas_rendering_context2d_settings_empty_ffi()
}
