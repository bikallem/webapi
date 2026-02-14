///|
/// JsPromise - Type representing a JavaScript Promise

///|
/// Alias for String used as a wasm-gc FFI callback parameter type.
/// In wasm-gc with js-string-builtins, String maps to (ref extern) which
/// is a non-null external reference — a subtype of externref. This makes
/// it compatible with all #external types via %identity cast, working
/// around a MoonBit compiler limitation where JsValue (externref) in
/// closure funcref params doesn't match (ref extern) expected by call_ref.
type JsAny = String

///|
/// Trait for converting JsAny (externref) values back to concrete types.
/// Used by JsPromise::then to safely convert resolved values from JsAny to T.
/// On JS target, all types use %identity. On wasm-gc, value types (Bool, Int,
/// Double, etc.) need FFI helpers since they are i32/f64, not externref.
pub(open) trait FromJsAny {
  from_js_any(JsAny) -> Self
}

///|
pub impl FromJsAny for JsValue with from_js_any(value : JsAny) -> JsValue = "%identity"

///|
pub impl FromJsAny for String with from_js_any(value : JsAny) -> String = "%identity"

///|
pub impl[T] FromJsAny for JsPromise[T] with from_js_any(value : JsAny) -> JsPromise[
  T,
] = "%identity"

///|
/// Opaque type representing a JavaScript Promise
#external
pub type JsPromise[T]

///|
pub impl[T] TJsValue for JsPromise[T] with to_js(self) -> JsValue = "%identity"

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
pub fn[T : FromJsAny, U : TJsValue] JsPromise::then(
  self : JsPromise[T],
  on_fulfilled : (T) -> U,
) -> JsPromise[U] {
  let f : (JsAny) -> JsValue = fn(value) {
    TJsValue::to_js(on_fulfilled(FromJsAny::from_js_any(value)))
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
    TJsValue::to_js(on_rejected(FromJsAny::from_js_any(reason)))
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
