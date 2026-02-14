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

///|
pub fn CanvasRenderingContext2DSettings::alpha(
  self : CanvasRenderingContext2DSettings,
) -> Bool? {
  let result = canvas_rendering_context2d_settings_get_alpha_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CanvasRenderingContext2DSettings::desynchronized(
  self : CanvasRenderingContext2DSettings,
) -> Bool? {
  let result = canvas_rendering_context2d_settings_get_desynchronized_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CanvasRenderingContext2DSettings::color_space(
  self : CanvasRenderingContext2DSettings,
) -> PredefinedColorSpace? {
  let result = canvas_rendering_context2d_settings_get_color_space_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn CanvasRenderingContext2DSettings::color_type(
  self : CanvasRenderingContext2DSettings,
) -> CanvasColorType? {
  let result = canvas_rendering_context2d_settings_get_color_type_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn CanvasRenderingContext2DSettings::will_read_frequently(
  self : CanvasRenderingContext2DSettings,
) -> Bool? {
  let result = canvas_rendering_context2d_settings_get_will_read_frequently_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
