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
pub impl FromJsAny for ScreenOrientation with from_js_any(value : JsAny) -> ScreenOrientation = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TScreenOrientation] ScreenOrientation::into(
  self : ScreenOrientation,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TScreenOrientation] ScreenOrientation::unsafe_into(
  self : ScreenOrientation,
) -> T = "%identity"

///|
pub impl HasConstructor for ScreenOrientation with constructor_name() {
  "ScreenOrientation"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TScreenOrientation + HasConstructor] ScreenOrientation::try_into(
  self : ScreenOrientation,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TScreenOrientation for ScreenOrientation

///|
pub impl TEventTarget for ScreenOrientation

///|
/// [ScreenOrientation](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation) interface.
pub trait TScreenOrientation: TEventTarget {
  lock(self : Self, orientation : OrientationLockType) -> JsPromise[JsValue] = _
  unlock(self : Self) -> Unit = _
  type_(self : Self) -> OrientationType = _
  angle(self : Self) -> UInt = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
}

///|
/// [ScreenOrientation.lock](https://developer.mozilla.org/en-US/docs/Web/API/ScreenOrientation/lock)
impl TScreenOrientation with lock(
  self : Self,
  orientation : OrientationLockType,
) -> JsPromise[JsValue] {
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
impl TScreenOrientation with set_onchange(
  self : Self,
  onchange : (Event) -> JsValue,
) -> Unit {
  screen_orientation_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onchange)),
  )
}

///|
#cfg(target="js")
extern "js" fn screen_orientation_lock_ffi_js(
  obj : JsValue,
  orientation : JsValue,
) -> JsValue = "(obj, orientation) => obj.lock(orientation)"

///|
#cfg(target="js")
fn screen_orientation_lock_ffi(
  obj : JsValue,
  orientation : JsValue,
) -> JsPromise[JsValue] {
  screen_orientation_lock_ffi_js(obj, orientation).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_orientation_unlock_ffi(obj : JsValue) -> Unit = "(obj) => obj.unlock()"

///|
#cfg(target="js")
extern "js" fn screen_orientation_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn screen_orientation_type_ffi(obj : JsValue) -> OrientationType {
  OrientationType::from_unchecked(
    screen_orientation_type_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn screen_orientation_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.angle"

///|
#cfg(target="js")
fn screen_orientation_angle_ffi(obj : JsValue) -> UInt {
  screen_orientation_angle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_orientation_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn screen_orientation_onchange_ffi(obj : JsValue) -> EventHandler {
  screen_orientation_onchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn screen_orientation_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
#cfg(target="wasm-gc")
fn screen_orientation_lock_ffi_wasm(
  obj : JsValue,
  orientation : JsValue,
) -> JsValue = "webapi_ScreenOrientation" "lock"

///|
#cfg(target="wasm-gc")
fn screen_orientation_lock_ffi(
  obj : JsValue,
  orientation : JsValue,
) -> JsPromise[JsValue] {
  screen_orientation_lock_ffi_wasm(obj, orientation).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn screen_orientation_unlock_ffi(obj : JsValue) -> Unit = "webapi_ScreenOrientation" "unlock"

///|
#cfg(target="wasm-gc")
fn screen_orientation_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ScreenOrientation" "get_type"

///|
#cfg(target="wasm-gc")
fn screen_orientation_type_ffi(obj : JsValue) -> OrientationType {
  OrientationType::from_unchecked(
    jsvalue_to_string(screen_orientation_type_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn screen_orientation_angle_ffi(obj : JsValue) -> UInt = "webapi_ScreenOrientation" "get_angle"

///|
#cfg(target="wasm-gc")
fn screen_orientation_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ScreenOrientation" "get_onchange"

///|
#cfg(target="wasm-gc")
fn screen_orientation_onchange_ffi(obj : JsValue) -> EventHandler {
  screen_orientation_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn screen_orientation_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "webapi_ScreenOrientation" "set_onchange"
