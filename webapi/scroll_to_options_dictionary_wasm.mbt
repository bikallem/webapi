fn scroll_to_options_ffi(behavior: JsValue, left: JsValue, top: JsValue) -> ScrollToOptions = "webapi_ScrollToOptions" "new"

fn scroll_to_options_empty_ffi() -> ScrollToOptions = "webapi_Dictionary" "empty"

fn scroll_to_options_get_behavior_ffi(obj: JsValue) -> JsValue = "webapi_ScrollToOptions" "get_behavior"

fn scroll_to_options_get_left_ffi(obj: JsValue) -> JsValue = "webapi_ScrollToOptions" "get_left"

fn scroll_to_options_get_top_ffi(obj: JsValue) -> JsValue = "webapi_ScrollToOptions" "get_top"