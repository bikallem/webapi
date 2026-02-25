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
