///|
#external
pub type UserActivation

///|
pub impl TJsValue for UserActivation with to_js(self : UserActivation) -> JsValue = "%identity"

///|
pub fn[T : TUserActivation] UserActivation::into(self : UserActivation) -> T = "%identity"

///|
pub impl TUserActivation for UserActivation

///|
pub trait TUserActivation: TJsValue {}
