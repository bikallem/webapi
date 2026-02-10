///|
extern "js" fn resize_observer_new_ffi(callback : JsValue) -> ResizeObserver = "(callback) => new ResizeObserver(callback)"

///|
extern "js" fn resize_observer_observe_ffi(
  obj : JsValue,
  target : JsValue,
  options : JsValue,
) -> Unit = "(obj, target, options) => obj.observe(target, options)"

///|
extern "js" fn resize_observer_unobserve_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => obj.unobserve(target)"

///|
extern "js" fn resize_observer_disconnect_ffi(obj : JsValue) -> Unit = "(obj) => obj.disconnect()"
