///|
/// JsPromise - Type representing a JavaScript Promise

///|
/// Alias for String used as a wasm-gc FFI callback parameter type.
/// In wasm-gc with js-string-builtins, String maps to (ref extern) which
/// is a non-null external reference — a subtype of externref. This makes
/// it compatible with all #external types via %identity cast, working
/// around a MoonBit compiler limitation where JsValue (externref) in
/// closure funcref params doesn't match (ref extern) expected by call_ref.
priv type JsAny = String

///|
/// Opaque type representing a JavaScript Promise
#external
pub type JsPromise[T]

///|
pub impl[T] TJsValue for JsPromise[T] with to_js(self) -> JsValue = "%identity"

///|
/// Zero-cost cast from JsAny to any type.
fn[T] js_any_cast(value : JsAny) -> T = "%identity"

///|
/// Creates a resolved Promise with the given value.
pub fn[T : TJsValue] JsPromise::resolve(value : T) -> JsPromise[T] {
  js_promise_resolve_ffi(TJsValue::to_js(value)).unsafe_cast()
}

///|
/// Creates a rejected Promise with the given reason.
pub fn[T] JsPromise::reject(reason : JsValue) -> JsPromise[T] {
  js_promise_reject_ffi(reason).unsafe_cast()
}

///|
/// Chains a callback to be called when the Promise resolves.
/// Returns a new Promise for the callback's return value.
pub fn[T, U : TJsValue] JsPromise::then(
  self : JsPromise[T],
  on_fulfilled : (T) -> U,
) -> JsPromise[U] {
  let f : (JsAny) -> JsValue = fn(value) {
    TJsValue::to_js(on_fulfilled(js_any_cast(value)))
  }
  js_promise_then_ffi(TJsValue::to_js(self), f).unsafe_cast()
}

///|
/// Chains a callback to be called when the Promise is rejected.
/// Returns a new Promise.
pub fn[T : TJsValue] JsPromise::catch_(
  self : JsPromise[T],
  on_rejected : (JsValue) -> T,
) -> JsPromise[T] {
  let f : (JsAny) -> JsValue = fn(reason) {
    TJsValue::to_js(on_rejected(js_any_cast(reason)))
  }
  js_promise_catch_ffi(TJsValue::to_js(self), f).unsafe_cast()
}

///|
/// Registers a callback to be called when the Promise is settled
/// (either fulfilled or rejected). Returns a new Promise.
pub fn[T] JsPromise::finally_(
  self : JsPromise[T],
  on_finally : () -> Unit,
) -> JsPromise[T] {
  js_promise_finally_ffi(TJsValue::to_js(self), on_finally).unsafe_cast()
}
