// Do not edit. This file is generated.
// MoonBit type: ResizeObserverBoxOptions
// Specifications: resize-observer.idl

pub(all) enum ResizeObserverBoxOptions {
  BorderBox
  ContentBox
  DevicePixelContentBox
} derive(Eq,Show)

pub impl TJsValue for ResizeObserverBoxOptions with to_js(self: ResizeObserverBoxOptions) -> JsValue {
  match self {
    ResizeObserverBoxOptions::BorderBox => TJsValue::to_js("border-box")
    ResizeObserverBoxOptions::ContentBox => TJsValue::to_js("content-box")
    ResizeObserverBoxOptions::DevicePixelContentBox => TJsValue::to_js("device-pixel-content-box")
  }
}

pub fn ResizeObserverBoxOptions::from(value: String) -> ResizeObserverBoxOptions? {
  match value {
    "border-box" => Some(ResizeObserverBoxOptions::BorderBox)
    "content-box" => Some(ResizeObserverBoxOptions::ContentBox)
    "device-pixel-content-box" => Some(ResizeObserverBoxOptions::DevicePixelContentBox)
    _ => None
  }
}