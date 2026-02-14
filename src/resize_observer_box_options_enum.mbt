// Do not edit. This file is generated.
// MoonBit type: ResizeObserverBoxOptions
// Specifications: resize-observer.idl

///|
pub(all) enum ResizeObserverBoxOptions {
  BorderBox
  ContentBox
  DevicePixelContentBox
} derive(Eq)

///|
pub impl Show for ResizeObserverBoxOptions with output(
  self : ResizeObserverBoxOptions,
  logger : &Logger,
) -> Unit {
  match self {
    ResizeObserverBoxOptions::BorderBox => logger.write_string("BorderBox")
    ResizeObserverBoxOptions::ContentBox => logger.write_string("ContentBox")
    ResizeObserverBoxOptions::DevicePixelContentBox =>
      logger.write_string("DevicePixelContentBox")
  }
}

///|
pub impl TJsValue for ResizeObserverBoxOptions with to_js(
  self : ResizeObserverBoxOptions,
) -> JsValue {
  match self {
    ResizeObserverBoxOptions::BorderBox => TJsValue::to_js("border-box")
    ResizeObserverBoxOptions::ContentBox => TJsValue::to_js("content-box")
    ResizeObserverBoxOptions::DevicePixelContentBox =>
      TJsValue::to_js("device-pixel-content-box")
  }
}

///|
pub fn ResizeObserverBoxOptions::from(
  value : String,
) -> ResizeObserverBoxOptions? {
  match value {
    "border-box" => Some(ResizeObserverBoxOptions::BorderBox)
    "content-box" => Some(ResizeObserverBoxOptions::ContentBox)
    "device-pixel-content-box" =>
      Some(ResizeObserverBoxOptions::DevicePixelContentBox)
    _ => None
  }
}

///|
fn ResizeObserverBoxOptions::from_unchecked(
  value : String,
) -> ResizeObserverBoxOptions {
  match value {
    "border-box" => ResizeObserverBoxOptions::BorderBox
    "content-box" => ResizeObserverBoxOptions::ContentBox
    "device-pixel-content-box" =>
      ResizeObserverBoxOptions::DevicePixelContentBox
    _ => abort("unknown ResizeObserverBoxOptions enum value")
  }
}

///|
pub fn ResizeObserverBoxOptions::value(
  self : ResizeObserverBoxOptions,
) -> String {
  match self {
    ResizeObserverBoxOptions::BorderBox => "border-box"
    ResizeObserverBoxOptions::ContentBox => "content-box"
    ResizeObserverBoxOptions::DevicePixelContentBox =>
      "device-pixel-content-box"
  }
}

///|
pub impl FromJsAny for ResizeObserverBoxOptions with from_js_any(value : JsAny) -> ResizeObserverBoxOptions {
  ResizeObserverBoxOptions::from_unchecked(value)
}
