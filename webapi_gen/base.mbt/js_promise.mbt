///|
/// JsPromise - Type representing a JavaScript Promise

///|
/// Opaque type representing a JavaScript Promise
#external
pub type JsPromise[T]

///|
pub impl[T] TJsValue for JsPromise[T] with to_js(self) -> JsValue = "%identity"

///|
/// Creates a resolved Promise with the given value.
pub fn JsPromise::resolve[T : TJsValue](value : T) -> JsPromise[T] {
  js_promise_resolve_ffi(TJsValue::to_js(value)).unsafe_cast()
}

///|
/// Creates a rejected Promise with the given reason.
pub fn JsPromise::reject[T](reason : JsValue) -> JsPromise[T] {
  js_promise_reject_ffi(reason).unsafe_cast()
}

///|
/// Chains a callback to be called when the Promise resolves.
/// Returns a new Promise for the callback's return value.
pub fn JsPromise::then[T, U](
  self : JsPromise[T],
  on_fulfilled : (T) -> U,
) -> JsPromise[U] {
  js_promise_then_ffi(TJsValue::to_js(self), TJsValue::to_js(on_fulfilled))
    .unsafe_cast()
}

///|
/// Chains a callback to be called when the Promise is rejected.
/// Returns a new Promise.
pub fn JsPromise::catch[T](
  self : JsPromise[T],
  on_rejected : (JsValue) -> T,
) -> JsPromise[T] {
  js_promise_catch_ffi(TJsValue::to_js(self), TJsValue::to_js(on_rejected))
    .unsafe_cast()
}

///|
/// Registers a callback to be called when the Promise is settled
/// (either fulfilled or rejected). Returns a new Promise.
pub fn JsPromise::finally[T](
  self : JsPromise[T],
  on_finally : () -> Unit,
) -> JsPromise[T] {
  js_promise_finally_ffi(TJsValue::to_js(self), TJsValue::to_js(on_finally))
    .unsafe_cast()
}
