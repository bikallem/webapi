// Auto-generated MoonBit bindings for OffscreenRenderingContextId

// Do not edit manually

///|
pub enum OffscreenRenderingContextId {
  V2d
  Bitmaprenderer
  Webgl
  Webgl2
  Webgpu
} derive(Eq)

///|
pub impl TJsValue for OffscreenRenderingContextId with to_js(self) {
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

///|
pub impl Show for OffscreenRenderingContextId with output(self, logger) {
  match self {
    OffscreenRenderingContextId::V2d => logger.write_string("2d")
    OffscreenRenderingContextId::Bitmaprenderer =>
      logger.write_string("bitmaprenderer")
    OffscreenRenderingContextId::Webgl => logger.write_string("webgl")
    OffscreenRenderingContextId::Webgl2 => logger.write_string("webgl2")
    OffscreenRenderingContextId::Webgpu => logger.write_string("webgpu")
  }
}
