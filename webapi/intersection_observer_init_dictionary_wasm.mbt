fn intersection_observer_init_ffi(root: JsValue, root_margin: JsValue, scroll_margin: JsValue, threshold: JsValue, delay: JsValue, track_visibility: JsValue) -> IntersectionObserverInit = "webapi_IntersectionObserverInit" "new"

fn intersection_observer_init_empty_ffi() -> IntersectionObserverInit = "webapi_Dictionary" "empty"

fn intersection_observer_init_get_root_ffi(obj: JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_root"

fn intersection_observer_init_get_root_margin_ffi(obj: JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_rootMargin"

fn intersection_observer_init_get_scroll_margin_ffi(obj: JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_scrollMargin"

fn intersection_observer_init_get_threshold_ffi(obj: JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_threshold"

fn intersection_observer_init_get_delay_ffi(obj: JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_delay"

fn intersection_observer_init_get_track_visibility_ffi(obj: JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_trackVisibility"