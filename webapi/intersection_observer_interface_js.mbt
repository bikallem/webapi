extern "js" fn intersection_observer_new_ffi(callback: JsValue, options: JsValue) -> IntersectionObserver = "(callback, options) => new IntersectionObserver(callback, options)"

extern "js" fn intersection_observer_root_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.root"

///|
fn intersection_observer_root_ffi(obj: JsValue) -> IntersectionObserverRoot {
  intersection_observer_root_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_root_margin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rootMargin"

///|
fn intersection_observer_root_margin_ffi(obj: JsValue) -> String {
  intersection_observer_root_margin_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_scroll_margin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scrollMargin"

///|
fn intersection_observer_scroll_margin_ffi(obj: JsValue) -> String {
  intersection_observer_scroll_margin_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_thresholds_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.thresholds"

///|
fn intersection_observer_thresholds_ffi(obj: JsValue) -> Array[Double] {
  intersection_observer_thresholds_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_delay_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.delay"

///|
fn intersection_observer_delay_ffi(obj: JsValue) -> Int {
  intersection_observer_delay_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_track_visibility_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.trackVisibility"

///|
fn intersection_observer_track_visibility_ffi(obj: JsValue) -> Bool {
  intersection_observer_track_visibility_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_observe_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => obj.observe(target)"

extern "js" fn intersection_observer_unobserve_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => obj.unobserve(target)"

extern "js" fn intersection_observer_disconnect_ffi(obj: JsValue) -> Unit = "(obj) => obj.disconnect()"

extern "js" fn intersection_observer_take_records_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.takeRecords()"

///|
fn intersection_observer_take_records_ffi(obj: JsValue) -> Array[IntersectionObserverEntry] {
  intersection_observer_take_records_ffi_js(obj).unsafe_cast()
}