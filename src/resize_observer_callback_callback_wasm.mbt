///|
pub fn ResizeObserverCallback::new(
  f : (Array[ResizeObserverEntry], ResizeObserver) -> Unit,
) -> ResizeObserverCallback {
  let w : (JsValue, JsValue) -> Unit = fn(a0 : JsValue, a1 : JsValue) {
    f(a0.unsafe_cast(), a1.unsafe_cast())
  }
  resize_observer_callback_ffi(w).unsafe_cast()
}

///|
fn resize_observer_callback_ffi(f : (JsValue, JsValue) -> Unit) -> JsValue = "webapi_ResizeObserverCallback" "new"
