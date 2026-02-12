///|
/// Converts a JsPromise to a @js_async.Promise for use with MoonBit async/await.
/// This is JS-only since @js_async.Promise is not implemented on wasm-gc.
pub fn[T] to_async_promise(
  promise : @webapi.JsPromise[T],
) -> @js_async.Promise[T] {
  js_promise_to_async(promise)
}

///|
fn[T] js_promise_to_async(
  promise : @webapi.JsPromise[T],
) -> @js_async.Promise[T] = "%identity"
