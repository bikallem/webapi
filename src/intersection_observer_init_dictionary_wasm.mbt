///|
fn intersection_observer_init_ffi(
  root : JsValue,
  root_margin : JsValue,
  scroll_margin : JsValue,
  threshold : JsValue,
  delay : JsValue,
  track_visibility : JsValue,
) -> IntersectionObserverInit = "webapi_IntersectionObserverInit" "new"

///|
fn intersection_observer_init_empty_ffi() -> IntersectionObserverInit = "webapi_Dictionary" "empty"
