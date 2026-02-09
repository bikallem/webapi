// Do not edit. This file is generated.
// MoonBit type: OffscreenRenderingContextId
// Specifications: html.idl

///|
pub(all) enum OffscreenRenderingContextId {
  V2d
  Bitmaprenderer
  Webgl
  Webgl2
  Webgpu
} derive(Eq, Show)

///|
pub impl TJsValue for OffscreenRenderingContextId with to_js(
  self : OffscreenRenderingContextId,
) -> JsValue {
  match self {
    OffscreenRenderingContextId::V2d => TJsValue::to_js("2d")
    OffscreenRenderingContextId::Bitmaprenderer =>
      TJsValue::to_js("bitmaprenderer")
    OffscreenRenderingContextId::Webgl => TJsValue::to_js("webgl")
    OffscreenRenderingContextId::Webgl2 => TJsValue::to_js("webgl2")
    OffscreenRenderingContextId::Webgpu => TJsValue::to_js("webgpu")
  }
}

///|
pub fn OffscreenRenderingContextId::from(
  value : String,
) -> OffscreenRenderingContextId? {
  match value {
    "2d" => Some(OffscreenRenderingContextId::V2d)
    "bitmaprenderer" => Some(OffscreenRenderingContextId::Bitmaprenderer)
    "webgl" => Some(OffscreenRenderingContextId::Webgl)
    "webgl2" => Some(OffscreenRenderingContextId::Webgl2)
    "webgpu" => Some(OffscreenRenderingContextId::Webgpu)
    _ => None
  }
}
