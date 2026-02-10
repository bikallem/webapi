///|
fn intersection_observer_entry_new_ffi(
  intersection_observer_entry_init : JsValue,
) -> IntersectionObserverEntry = "webapi_IntersectionObserverEntry" "new"

///|
fn intersection_observer_entry_time_ffi(obj : JsValue) -> DOMHighResTimeStamp = "webapi_IntersectionObserverEntry" "get_time"

///|
fn intersection_observer_entry_root_bounds_ffi(
  obj : JsValue,
) -> DOMRectReadOnly = "webapi_IntersectionObserverEntry" "get_rootBounds"

///|
fn intersection_observer_entry_bounding_client_rect_ffi(
  obj : JsValue,
) -> DOMRectReadOnly = "webapi_IntersectionObserverEntry" "get_boundingClientRect"

///|
fn intersection_observer_entry_intersection_rect_ffi(
  obj : JsValue,
) -> DOMRectReadOnly = "webapi_IntersectionObserverEntry" "get_intersectionRect"

///|
fn intersection_observer_entry_is_intersecting_ffi(obj : JsValue) -> Bool = "webapi_IntersectionObserverEntry" "get_isIntersecting"

///|
fn intersection_observer_entry_is_visible_ffi(obj : JsValue) -> Bool = "webapi_IntersectionObserverEntry" "get_isVisible"

///|
fn intersection_observer_entry_intersection_ratio_ffi(obj : JsValue) -> Double = "webapi_IntersectionObserverEntry" "get_intersectionRatio"

///|
fn intersection_observer_entry_target_ffi(obj : JsValue) -> Element = "webapi_IntersectionObserverEntry" "get_target"
