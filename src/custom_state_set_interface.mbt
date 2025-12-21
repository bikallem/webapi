///|
#external
pub type CustomStateSet

///|
pub impl TJsValue for CustomStateSet with to_js(self : CustomStateSet) -> JsValue = "%identity"

///|
pub fn[T : TCustomStateSet] CustomStateSet::into(self : CustomStateSet) -> T = "%identity"

///|
pub impl TCustomStateSet for CustomStateSet

///|
pub trait TCustomStateSet: TJsValue {}
