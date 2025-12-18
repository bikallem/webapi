// Auto-generated MoonBit bindings for CanvasRenderingContext2DSettings dictionary

// Do not edit manually

///|
#external
pub type CanvasRenderingContext2DSettings

///|
pub impl TJsValue for CanvasRenderingContext2DSettings with to_js(self : CanvasRenderingContext2DSettings) -> JsValue = "%identity"

///|
fn canvas_rendering_context2_d_settings_ffi(alpha : JsValue, desynchronized : JsValue, color_space : JsValue, color_type : JsValue, will_read_frequently : JsValue) -> CanvasRenderingContext2DSettings = "webapi_CanvasRenderingContext2DSettings" "new"

///|
pub fn CanvasRenderingContext2DSettings::new(
  alpha? : Bool = true,
  desynchronized? : Bool = false,
  color_space? : PredefinedColorSpace = PredefinedColorSpace::Srgb,
  color_type? : CanvasColorType = CanvasColorType::Unorm8,
  will_read_frequently? : Bool = false
) -> CanvasRenderingContext2DSettings {
  canvas_rendering_context2_d_settings_ffi(TJsValue::to_js(alpha), TJsValue::to_js(desynchronized), TJsValue::to_js(color_space), TJsValue::to_js(color_type), TJsValue::to_js(will_read_frequently))
}

///|
pub fn CanvasRenderingContext2DSettings::empty() -> CanvasRenderingContext2DSettings = "webapi_Dictionary" "empty"