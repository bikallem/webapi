fn resize_observer_new_ffi(callback: JsValue) -> ResizeObserver = "webapi_ResizeObserver" "new"

fn resize_observer_observe_ffi(obj: JsValue, target: JsValue, options: JsValue) -> Unit = "webapi_ResizeObserver" "observe"

fn resize_observer_unobserve_ffi(obj: JsValue, target: JsValue) -> Unit = "webapi_ResizeObserver" "unobserve"

fn resize_observer_disconnect_ffi(obj: JsValue) -> Unit = "webapi_ResizeObserver" "disconnect"