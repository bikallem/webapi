///|
pub fn IntersectionObserverCallback::new(
  f : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit,
) -> IntersectionObserverCallback {
  intersection_observer_callback_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn intersection_observer_callback_ffi(f : JsValue) -> JsValue = "(f) => f"
