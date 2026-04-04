// Do not edit. This file is generated.
// MoonBit type: UserActivation
// Specifications: html.idl

///|
/// [UserActivation](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation)
#external
pub type UserActivation

///|
pub impl TJsValue for UserActivation with to_js(self : UserActivation) -> JsValue = "%identity"

///|
pub impl FromJsAny for UserActivation with from_js_any(value : JsAny) -> UserActivation = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TUserActivation] UserActivation::into(self : UserActivation) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TUserActivation] UserActivation::unsafe_into(
  self : UserActivation,
) -> T = "%identity"

///|
pub impl HasConstructor for UserActivation with constructor_name() {
  "UserActivation"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TUserActivation + HasConstructor] UserActivation::try_into(
  self : UserActivation,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TUserActivation for UserActivation

///|
/// [UserActivation](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation) interface.
pub trait TUserActivation: TJsValue {
  has_been_active(self : Self) -> Bool = _
  is_active(self : Self) -> Bool = _
}

///|
/// [UserActivation.hasBeenActive](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation/hasBeenActive)
impl TUserActivation with has_been_active(self : Self) -> Bool {
  user_activation_has_been_active_ffi(TJsValue::to_js(self))
}

///|
/// [UserActivation.isActive](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation/isActive)
impl TUserActivation with is_active(self : Self) -> Bool {
  user_activation_is_active_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn user_activation_has_been_active_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hasBeenActive"

///|
#cfg(target="js")
fn user_activation_has_been_active_ffi(obj : JsValue) -> Bool {
  user_activation_has_been_active_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn user_activation_is_active_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isActive"

///|
#cfg(target="js")
fn user_activation_is_active_ffi(obj : JsValue) -> Bool {
  user_activation_is_active_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn user_activation_has_been_active_ffi(obj : JsValue) -> Bool = "webapi_UserActivation" "get_hasBeenActive"

///|
#cfg(target="wasm-gc")
fn user_activation_is_active_ffi(obj : JsValue) -> Bool = "webapi_UserActivation" "get_isActive"
