// Auto-generated MoonBit bindings for OffscreenRenderingContextId enum
// Do not edit manually

///|
pub(all) enum OffscreenRenderingContextId {
  2d
  Bitmaprenderer
  Webgl
  Webgl2
  Webgpu
} derive(Eq,Show)

///|
pub fn OffscreenRenderingContextId::from(value: String) -> OffscreenRenderingContextId {
  match value {
    "2d" => 2d
    "bitmaprenderer" => Bitmaprenderer
    "webgl" => Webgl
    "webgl2" => Webgl2
    "webgpu" => Webgpu
    _ => 2d
  }
}

///|
pub fn OffscreenRenderingContextId::to_js(self : OffscreenRenderingContextId) -> String {
  match self {
    2d => "2d"
    Bitmaprenderer => "bitmaprenderer"
    Webgl => "webgl"
    Webgl2 => "webgl2"
    Webgpu => "webgpu"
  }
}
