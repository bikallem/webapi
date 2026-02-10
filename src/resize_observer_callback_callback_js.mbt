pub fn ResizeObserverCallback::new(f : (Array[ResizeObserverEntry], ResizeObserver) -> Unit) -> ResizeObserverCallback { resize_observer_callback_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn resize_observer_callback_ffi(f : JsValue) -> JsValue = "(f) => f"