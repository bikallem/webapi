///|
pub fn IntersectionObserverCallback::new(
  f : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit,
) -> IntersectionObserverCallback {
  let w : (JsValue, JsValue) -> Unit = fn(a0 : JsValue, a1 : JsValue) {
    f(a0.unsafe_cast(), a1.unsafe_cast())
  }
  intersection_observer_callback_ffi(w).unsafe_cast()
}

///|
fn intersection_observer_callback_ffi(
  f : (JsValue, JsValue) -> Unit,
) -> JsValue = "webapi_IntersectionObserverCallback" "new"
