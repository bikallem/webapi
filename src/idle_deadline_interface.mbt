// Do not edit. This file is generated.
// MoonBit type: IdleDeadline
// Specifications: requestidlecallback.idl

///|
/// [IdleDeadline](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline)
#external
pub type IdleDeadline

///|
pub impl TJsValue for IdleDeadline with to_js(self : IdleDeadline) -> JsValue = "%identity"

///|
pub impl FromJsAny for IdleDeadline with from_js_any(value : JsAny) -> IdleDeadline = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIdleDeadline] IdleDeadline::into(self : IdleDeadline) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TIdleDeadline] IdleDeadline::unsafe_into(self : IdleDeadline) -> T = "%identity"

///|
pub impl HasConstructor for IdleDeadline with constructor_name() {
  "IdleDeadline"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIdleDeadline + HasConstructor] IdleDeadline::try_into(
  self : IdleDeadline,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TIdleDeadline for IdleDeadline

///|
/// [IdleDeadline](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline) interface.
pub trait TIdleDeadline: TJsValue {
  time_remaining(self : Self) -> DOMHighResTimeStamp = _
  did_timeout(self : Self) -> Bool = _
}

///|
/// [IdleDeadline.timeRemaining](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline/timeRemaining)
impl TIdleDeadline with time_remaining(self : Self) -> DOMHighResTimeStamp {
  idle_deadline_time_remaining_ffi(TJsValue::to_js(self))
}

///|
/// [IdleDeadline.didTimeout](https://developer.mozilla.org/en-US/docs/Web/API/IdleDeadline/didTimeout)
impl TIdleDeadline with did_timeout(self : Self) -> Bool {
  idle_deadline_did_timeout_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn idle_deadline_time_remaining_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.timeRemaining()"

///|
#cfg(target="js")
fn idle_deadline_time_remaining_ffi(obj : JsValue) -> DOMHighResTimeStamp {
  idle_deadline_time_remaining_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idle_deadline_did_timeout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.didTimeout"

///|
#cfg(target="js")
fn idle_deadline_did_timeout_ffi(obj : JsValue) -> Bool {
  idle_deadline_did_timeout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idle_deadline_time_remaining_ffi(obj : JsValue) -> DOMHighResTimeStamp = "webapi_IdleDeadline" "timeRemaining"

///|
#cfg(target="wasm-gc")
fn idle_deadline_did_timeout_ffi(obj : JsValue) -> Bool = "webapi_IdleDeadline" "get_didTimeout"
