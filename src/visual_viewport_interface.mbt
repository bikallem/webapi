///|
#external
pub type VisualViewport

///|
pub impl TJsValue for VisualViewport with to_js(self : VisualViewport) -> JsValue = "%identity"

///|
pub fn[T : TVisualViewport] VisualViewport::into(self : VisualViewport) -> T = "%identity"

///|
pub impl TVisualViewport for VisualViewport

///|
pub impl TEventTarget for VisualViewport

///|
pub trait TVisualViewport: TEventTarget {}
