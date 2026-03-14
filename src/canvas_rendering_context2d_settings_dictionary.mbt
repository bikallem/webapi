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

#cfg(target="js")
extern "js" fn canvas_rendering_context2d_settings_ffi(alpha: JsValue, desynchronized: JsValue, color_space: JsValue, color_type: JsValue, will_read_frequently: JsValue) -> CanvasRenderingContext2DSettings = 
#|(alpha, desynchronized, colorSpace, colorType, willReadFrequently) => {
#|  const obj = {};
#|  if (alpha !== undefined) obj.alpha = alpha;
#|  if (desynchronized !== undefined) obj.desynchronized = desynchronized;
#|  if (colorSpace !== undefined) obj.colorSpace = colorSpace;
#|  if (colorType !== undefined) obj.colorType = colorType;
#|  if (willReadFrequently !== undefined) obj.willReadFrequently = willReadFrequently;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "() => {}"

#cfg(target="js")
extern "js" fn canvas_rendering_context2d_settings_get_alpha_ffi(obj: JsValue) -> JsValue = "(obj) => obj.alpha"

#cfg(target="js")
extern "js" fn canvas_rendering_context2d_settings_get_desynchronized_ffi(obj: JsValue) -> JsValue = "(obj) => obj.desynchronized"

#cfg(target="js")
extern "js" fn canvas_rendering_context2d_settings_get_color_space_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colorSpace"

#cfg(target="js")
extern "js" fn canvas_rendering_context2d_settings_get_color_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colorType"

#cfg(target="js")
extern "js" fn canvas_rendering_context2d_settings_get_will_read_frequently_ffi(obj: JsValue) -> JsValue = "(obj) => obj.willReadFrequently"

#cfg(target="wasm-gc")
fn canvas_rendering_context2d_settings_ffi(alpha: JsValue, desynchronized: JsValue, color_space: JsValue, color_type: JsValue, will_read_frequently: JsValue) -> CanvasRenderingContext2DSettings = "webapi_CanvasRenderingContext2DSettings" "new"

#cfg(target="wasm-gc")
fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn canvas_rendering_context2d_settings_get_alpha_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_alpha"

#cfg(target="wasm-gc")
fn canvas_rendering_context2d_settings_get_desynchronized_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_desynchronized"

#cfg(target="wasm-gc")
fn canvas_rendering_context2d_settings_get_color_space_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_colorSpace"

#cfg(target="wasm-gc")
fn canvas_rendering_context2d_settings_get_color_type_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_colorType"

#cfg(target="wasm-gc")
fn canvas_rendering_context2d_settings_get_will_read_frequently_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_willReadFrequently"