// Auto-generated MoonBit bindings for Canvas union type

// Do not edit manually

///|
#external
pub type Canvas

///|
pub(open) trait TCanvas {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TCanvas] Canvas::into(self : Canvas) -> T = "%identity"

///|
pub fn Canvas::null() -> Canvas = "JsValue" "null"

///|
pub fn Canvas::is_null(self : Canvas) -> Bool = "JsValue" "isNull"

///|
pub impl TCanvas for HTMLCanvasElement with to_js(self : HTMLCanvasElement) -> JsValue = "%identity"

///|
pub impl TCanvas for OffscreenCanvas with to_js(self : OffscreenCanvas) -> JsValue = "%identity"
