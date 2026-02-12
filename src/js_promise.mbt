///|
/// JsPromise - Type representing a JavaScript Promise

///|
/// Opaque type representing a JavaScript Promise
#external
pub type JsPromise[T]

///|
pub impl[T] TJsValue for JsPromise[T] with to_js(self : JsPromise[T]) -> JsValue = "%identity"

///|
fn js_promise_await_ffi(promise : JsValue) -> JsValue = "JsPromise" "await"

///|
/// Await a JavaScript Promise.
/// Note: This should only be called in an async context.
pub async fn[T] JsPromise::wait(self : JsPromise[T]) -> T {
  let promise : @js_async.Promise[T] = js_promise_await_ffi(self.to_js()).unsafe_cast()
  promise.wait()
}
