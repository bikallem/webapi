fn intersection_observer_new_ffi(callback: JsValue, options: JsValue) -> IntersectionObserver = "webapi_IntersectionObserver" "new"

fn intersection_observer_root_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IntersectionObserver" "get_root"

///|
fn intersection_observer_root_ffi(obj: JsValue) -> IntersectionObserverRoot {
  intersection_observer_root_ffi_wasm(obj).unsafe_cast()
}

fn intersection_observer_root_margin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IntersectionObserver" "get_rootMargin"

///|
fn intersection_observer_root_margin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(intersection_observer_root_margin_ffi_wasm(obj))
}

fn intersection_observer_scroll_margin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IntersectionObserver" "get_scrollMargin"

///|
fn intersection_observer_scroll_margin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(intersection_observer_scroll_margin_ffi_wasm(obj))
}

fn intersection_observer_thresholds_ffi_wasm(obj: JsValue) -> JsArray = "webapi_IntersectionObserver" "get_thresholds"

///|
fn intersection_observer_thresholds_ffi(obj: JsValue) -> Array[Double] {
  intersection_observer_thresholds_ffi_wasm(obj).to_value_array()
}

fn intersection_observer_delay_ffi(obj: JsValue) -> Int = "webapi_IntersectionObserver" "get_delay"

fn intersection_observer_track_visibility_ffi(obj: JsValue) -> Bool = "webapi_IntersectionObserver" "get_trackVisibility"

fn intersection_observer_observe_ffi(obj: JsValue, target: JsValue) -> Unit = "webapi_IntersectionObserver" "observe"

fn intersection_observer_unobserve_ffi(obj: JsValue, target: JsValue) -> Unit = "webapi_IntersectionObserver" "unobserve"

fn intersection_observer_disconnect_ffi(obj: JsValue) -> Unit = "webapi_IntersectionObserver" "disconnect"

fn intersection_observer_take_records_ffi_wasm(obj: JsValue) -> JsArray = "webapi_IntersectionObserver" "takeRecords"

///|
fn intersection_observer_take_records_ffi(obj: JsValue) -> Array[IntersectionObserverEntry] {
  intersection_observer_take_records_ffi_wasm(obj).to_array()
}