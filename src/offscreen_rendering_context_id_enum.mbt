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
} derive(Eq)

///|
pub impl Show for OffscreenRenderingContextId with output(
  self : OffscreenRenderingContextId,
  logger : &Logger,
) -> Unit {
  match self {
    OffscreenRenderingContextId::V2d => logger.write_string("V2d")
    OffscreenRenderingContextId::Bitmaprenderer =>
      logger.write_string("Bitmaprenderer")
    OffscreenRenderingContextId::Webgl => logger.write_string("Webgl")
    OffscreenRenderingContextId::Webgl2 => logger.write_string("Webgl2")
    OffscreenRenderingContextId::Webgpu => logger.write_string("Webgpu")
  }
}

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

///|
fn OffscreenRenderingContextId::from_unchecked(
  value : String,
) -> OffscreenRenderingContextId {
  match value {
    "2d" => OffscreenRenderingContextId::V2d
    "bitmaprenderer" => OffscreenRenderingContextId::Bitmaprenderer
    "webgl" => OffscreenRenderingContextId::Webgl
    "webgl2" => OffscreenRenderingContextId::Webgl2
    "webgpu" => OffscreenRenderingContextId::Webgpu
    _ => abort("unknown enum value")
  }
}

///|
pub fn OffscreenRenderingContextId::value(
  self : OffscreenRenderingContextId,
) -> String {
  let buf = StringBuilder::new()
  match self {
    OffscreenRenderingContextId::V2d => buf.write_string("2d")
    OffscreenRenderingContextId::Bitmaprenderer =>
      buf.write_string("bitmaprenderer")
    OffscreenRenderingContextId::Webgl => buf.write_string("webgl")
    OffscreenRenderingContextId::Webgl2 => buf.write_string("webgl2")
    OffscreenRenderingContextId::Webgpu => buf.write_string("webgpu")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for OffscreenRenderingContextId with from_js_any(
  value : JsAny,
) -> OffscreenRenderingContextId {
  OffscreenRenderingContextId::from_unchecked(value)
}
