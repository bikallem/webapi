///|
#external
pub type ValidityState

///|
pub impl TJsValue for ValidityState with to_js(self : ValidityState) -> JsValue = "%identity"

///|
pub fn[T : TValidityState] ValidityState::into(self : ValidityState) -> T = "%identity"

///|
pub impl TValidityState for ValidityState

///|
pub trait TValidityState: TJsValue {}
