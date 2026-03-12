extern "js" fn intersection_observer_entry_new_ffi(intersection_observer_entry_init: JsValue) -> IntersectionObserverEntry = "(intersection_observer_entry_init) => new IntersectionObserverEntry(intersection_observer_entry_init)"

extern "js" fn intersection_observer_entry_time_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.time"

///|
fn intersection_observer_entry_time_ffi(obj: JsValue) -> DOMHighResTimeStamp {
  intersection_observer_entry_time_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_root_bounds_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rootBounds"

///|
fn intersection_observer_entry_root_bounds_ffi(obj: JsValue) -> DOMRectReadOnly {
  intersection_observer_entry_root_bounds_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_bounding_client_rect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.boundingClientRect"

///|
fn intersection_observer_entry_bounding_client_rect_ffi(obj: JsValue) -> DOMRectReadOnly {
  intersection_observer_entry_bounding_client_rect_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_intersection_rect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.intersectionRect"

///|
fn intersection_observer_entry_intersection_rect_ffi(obj: JsValue) -> DOMRectReadOnly {
  intersection_observer_entry_intersection_rect_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_is_intersecting_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isIntersecting"

///|
fn intersection_observer_entry_is_intersecting_ffi(obj: JsValue) -> Bool {
  intersection_observer_entry_is_intersecting_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_is_visible_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isVisible"

///|
fn intersection_observer_entry_is_visible_ffi(obj: JsValue) -> Bool {
  intersection_observer_entry_is_visible_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_intersection_ratio_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.intersectionRatio"

///|
fn intersection_observer_entry_intersection_ratio_ffi(obj: JsValue) -> Double {
  intersection_observer_entry_intersection_ratio_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
fn intersection_observer_entry_target_ffi(obj: JsValue) -> Element {
  intersection_observer_entry_target_ffi_js(obj).unsafe_cast()
}