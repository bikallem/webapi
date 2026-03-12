extern "js" fn intersection_observer_entry_init_ffi(time: JsValue, root_bounds: JsValue, bounding_client_rect: JsValue, intersection_rect: JsValue, is_intersecting: JsValue, is_visible: JsValue, intersection_ratio: JsValue, target: JsValue) -> IntersectionObserverEntryInit = 
#|(time, rootBounds, boundingClientRect, intersectionRect, isIntersecting, isVisible, intersectionRatio, target) => {
#|  const obj = {};
#|  if (time !== undefined) obj.time = time;
#|  if (rootBounds !== undefined) obj.rootBounds = rootBounds;
#|  if (boundingClientRect !== undefined) obj.boundingClientRect = boundingClientRect;
#|  if (intersectionRect !== undefined) obj.intersectionRect = intersectionRect;
#|  if (isIntersecting !== undefined) obj.isIntersecting = isIntersecting;
#|  if (isVisible !== undefined) obj.isVisible = isVisible;
#|  if (intersectionRatio !== undefined) obj.intersectionRatio = intersectionRatio;
#|  if (target !== undefined) obj.target = target;
#|  return obj;
#|}

extern "js" fn intersection_observer_entry_init_empty_ffi() -> IntersectionObserverEntryInit = "() => {}"

extern "js" fn intersection_observer_entry_init_get_time_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.time"

///|
fn intersection_observer_entry_init_get_time_ffi(obj: JsValue) -> DOMHighResTimeStamp {
  intersection_observer_entry_init_get_time_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_init_get_root_bounds_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rootBounds"

///|
fn intersection_observer_entry_init_get_root_bounds_ffi(obj: JsValue) -> DOMRectInit {
  intersection_observer_entry_init_get_root_bounds_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_init_get_bounding_client_rect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.boundingClientRect"

///|
fn intersection_observer_entry_init_get_bounding_client_rect_ffi(obj: JsValue) -> DOMRectInit {
  intersection_observer_entry_init_get_bounding_client_rect_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_init_get_intersection_rect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.intersectionRect"

///|
fn intersection_observer_entry_init_get_intersection_rect_ffi(obj: JsValue) -> DOMRectInit {
  intersection_observer_entry_init_get_intersection_rect_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_init_get_is_intersecting_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isIntersecting"

///|
fn intersection_observer_entry_init_get_is_intersecting_ffi(obj: JsValue) -> Bool {
  intersection_observer_entry_init_get_is_intersecting_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_init_get_is_visible_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isVisible"

///|
fn intersection_observer_entry_init_get_is_visible_ffi(obj: JsValue) -> Bool {
  intersection_observer_entry_init_get_is_visible_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_init_get_intersection_ratio_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.intersectionRatio"

///|
fn intersection_observer_entry_init_get_intersection_ratio_ffi(obj: JsValue) -> Double {
  intersection_observer_entry_init_get_intersection_ratio_ffi_js(obj).unsafe_cast()
}

extern "js" fn intersection_observer_entry_init_get_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
fn intersection_observer_entry_init_get_target_ffi(obj: JsValue) -> Element {
  intersection_observer_entry_init_get_target_ffi_js(obj).unsafe_cast()
}