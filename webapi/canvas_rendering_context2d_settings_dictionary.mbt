// Do not edit. This file is generated.
// MoonBit type: CanvasRenderingContext2DSettings
// Specifications: html.idl

/// [CanvasRenderingContext2DSettings](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2DSettings)
#external
pub type CanvasRenderingContext2DSettings

pub impl TJsValue for CanvasRenderingContext2DSettings with to_js(self: CanvasRenderingContext2DSettings) -> JsValue = "%identity"

pub impl FromJsAny for CanvasRenderingContext2DSettings with from_js_any(value : JsAny) -> CanvasRenderingContext2DSettings = "%identity"

pub fn CanvasRenderingContext2DSettings::new(alpha? : Bool, 
desynchronized? : Bool, 
color_space? : PredefinedColorSpace, 
color_type? : CanvasColorType, 
will_read_frequently? : Bool) -> CanvasRenderingContext2DSettings {
  canvas_rendering_context2d_settings_ffi(opt_to_js(alpha), opt_to_js(desynchronized), opt_to_js(color_space), opt_to_js(color_type), opt_to_js(will_read_frequently))
}

pub fn CanvasRenderingContext2DSettings::empty() -> CanvasRenderingContext2DSettings { canvas_rendering_context2d_settings_empty_ffi() }

pub fn CanvasRenderingContext2DSettings::alpha(self : CanvasRenderingContext2DSettings) -> Bool? {
  canvas_rendering_context2d_settings_get_alpha_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CanvasRenderingContext2DSettings::desynchronized(self : CanvasRenderingContext2DSettings) -> Bool? {
  canvas_rendering_context2d_settings_get_desynchronized_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CanvasRenderingContext2DSettings::color_space(self : CanvasRenderingContext2DSettings) -> PredefinedColorSpace? {
  canvas_rendering_context2d_settings_get_color_space_ffi(TJsValue::to_js(self)).to_option()
}

pub fn CanvasRenderingContext2DSettings::color_type(self : CanvasRenderingContext2DSettings) -> CanvasColorType? {
  canvas_rendering_context2d_settings_get_color_type_ffi(TJsValue::to_js(self)).to_option()
}

pub fn CanvasRenderingContext2DSettings::will_read_frequently(self : CanvasRenderingContext2DSettings) -> Bool? {
  canvas_rendering_context2d_settings_get_will_read_frequently_ffi(TJsValue::to_js(self)).to_option_prim()
}