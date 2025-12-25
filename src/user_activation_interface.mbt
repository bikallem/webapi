// Do not edit. This file is generated.
// MoonBit type: UserActivation
// Specifications: html.idl

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
pub trait TUserActivation: TJsValue {
  has_been_active(self : Self) -> Bool = _
  is_active(self : Self) -> Bool = _
}

///|
extern "js" fn user_activation_has_been_active_ffi(obj : JsValue) -> Bool = "(obj) => obj.hasBeenActive"

///|
impl TUserActivation with has_been_active(self : Self) -> Bool {
  user_activation_has_been_active_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn user_activation_is_active_ffi(obj : JsValue) -> Bool = "(obj) => obj.isActive"

///|
impl TUserActivation with is_active(self : Self) -> Bool {
  user_activation_is_active_ffi(TJsValue::to_js(self))
}
