///|
#external
pub type BarProp

///|
pub impl TJsValue for BarProp with to_js(self : BarProp) -> JsValue = "%identity"

///|
pub fn[T : TBarProp] BarProp::into(self : BarProp) -> T = "%identity"

///|
pub impl TBarProp for BarProp

///|
pub trait TBarProp: TJsValue {}
