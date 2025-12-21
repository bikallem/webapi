///|
#external
pub type AbstractRange

///|
pub impl TJsValue for AbstractRange with to_js(self : AbstractRange) -> JsValue = "%identity"

///|
pub fn[T : TAbstractRange] AbstractRange::into(self : AbstractRange) -> T = "%identity"

///|
pub impl TAbstractRange for AbstractRange

///|
pub trait TAbstractRange: TJsValue {}
