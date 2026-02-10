// Do not edit. This file is generated.
// MoonBit type: ScreenOrientation
// Specifications: screen-orientation.idl

///|
/// [ScreenOrientation](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation)
#external
pub type ScreenOrientation

///|
pub impl TJsValue for ScreenOrientation with to_js(self : ScreenOrientation) -> JsValue = "%identity"

///|
pub fn[T : TScreenOrientation] ScreenOrientation::into(
  self : ScreenOrientation,
) -> T = "%identity"

///|
pub impl TScreenOrientation for ScreenOrientation

///|
pub impl TEventTarget for ScreenOrientation

///|
/// [ScreenOrientation](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation) interface.
pub trait TScreenOrientation: TEventTarget {
  lock(self : Self, orientation : OrientationLockType) -> @js_async.Promise[
    Unit,
  ] = _
  unlock(self : Self) -> Unit = _
  type_(self : Self) -> OrientationType = _
  angle(self : Self) -> UInt = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
}

///|
/// [ScreenOrientation.lock](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation/lock)
impl TScreenOrientation with lock(
  self : Self,
  orientation : OrientationLockType,
) -> @js_async.Promise[Unit] {
  screen_orientation_lock_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(orientation),
  )
}

///|
/// [ScreenOrientation.unlock](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation/unlock)
impl TScreenOrientation with unlock(self : Self) -> Unit {
  screen_orientation_unlock_ffi(TJsValue::to_js(self))
}

///|
/// [ScreenOrientation.type](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation/type)
impl TScreenOrientation with type_(self : Self) -> OrientationType {
  screen_orientation_type_ffi(TJsValue::to_js(self))
}

///|
/// [ScreenOrientation.angle](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation/angle)
impl TScreenOrientation with angle(self : Self) -> UInt {
  screen_orientation_angle_ffi(TJsValue::to_js(self))
}

///|
/// [ScreenOrientation.onchange](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation/onchange)
impl TScreenOrientation with onchange(self : Self) -> EventHandler {
  screen_orientation_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [ScreenOrientation.onchange](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation/onchange)
impl TScreenOrientation with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  screen_orientation_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onchange),
  )
}
