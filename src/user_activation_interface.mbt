// Do not edit. This file is generated.
// MoonBit type: UserActivation
// Specifications: html.idl

/// [UserActivation](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation)
#external
pub type UserActivation

pub impl TJsValue for UserActivation with to_js(self: UserActivation) -> JsValue = "%identity"

pub fn[T: TUserActivation] UserActivation::into(self : UserActivation) -> T = "%identity"

pub impl TUserActivation for UserActivation

/// [UserActivation](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation) interface.
pub trait TUserActivation: TJsValue {
  has_been_active(self : Self) -> Bool = _
  is_active(self : Self) -> Bool = _
}

/// [UserActivation.hasBeenActive](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation/hasBeenActive)
impl TUserActivation with has_been_active(self : Self) -> Bool {
  user_activation_has_been_active_ffi(TJsValue::to_js(self))
}

/// [UserActivation.isActive](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation/isActive)
impl TUserActivation with is_active(self : Self) -> Bool {
  user_activation_is_active_ffi(TJsValue::to_js(self))
}