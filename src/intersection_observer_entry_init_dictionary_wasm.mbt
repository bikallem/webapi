///|
fn intersection_observer_entry_init_ffi(
  time : JsValue,
  root_bounds : JsValue,
  bounding_client_rect : JsValue,
  intersection_rect : JsValue,
  is_intersecting : JsValue,
  is_visible : JsValue,
  intersection_ratio : JsValue,
  target : JsValue,
) -> IntersectionObserverEntryInit = "webapi_IntersectionObserverEntryInit" "new"

///|
fn intersection_observer_entry_init_empty_ffi() -> IntersectionObserverEntryInit = "webapi_Dictionary" "empty"

///|
fn intersection_observer_entry_init_get_time_ffi(
  obj : JsValue,
) -> DOMHighResTimeStamp = "webapi_IntersectionObserverEntryInit" "get_time"

///|
fn intersection_observer_entry_init_get_root_bounds_ffi(
  obj : JsValue,
) -> DOMRectInit = "webapi_IntersectionObserverEntryInit" "get_rootBounds"

///|
fn intersection_observer_entry_init_get_bounding_client_rect_ffi(
  obj : JsValue,
) -> DOMRectInit = "webapi_IntersectionObserverEntryInit" "get_boundingClientRect"

///|
fn intersection_observer_entry_init_get_intersection_rect_ffi(
  obj : JsValue,
) -> DOMRectInit = "webapi_IntersectionObserverEntryInit" "get_intersectionRect"

///|
fn intersection_observer_entry_init_get_is_intersecting_ffi(
  obj : JsValue,
) -> Bool = "webapi_IntersectionObserverEntryInit" "get_isIntersecting"

///|
fn intersection_observer_entry_init_get_is_visible_ffi(obj : JsValue) -> Bool = "webapi_IntersectionObserverEntryInit" "get_isVisible"

///|
fn intersection_observer_entry_init_get_intersection_ratio_ffi(
  obj : JsValue,
) -> Double = "webapi_IntersectionObserverEntryInit" "get_intersectionRatio"

///|
fn intersection_observer_entry_init_get_target_ffi(obj : JsValue) -> Element = "webapi_IntersectionObserverEntryInit" "get_target"
