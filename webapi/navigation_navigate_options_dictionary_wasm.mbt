fn navigation_navigate_options_ffi(info: JsValue, state: JsValue, history: JsValue) -> NavigationNavigateOptions = "webapi_NavigationNavigateOptions" "new"

fn navigation_navigate_options_empty_ffi() -> NavigationNavigateOptions = "webapi_Dictionary" "empty"

fn navigation_navigate_options_get_info_ffi(obj: JsValue) -> JsValue = "webapi_NavigationNavigateOptions" "get_info"

fn navigation_navigate_options_get_state_ffi(obj: JsValue) -> JsValue = "webapi_NavigationNavigateOptions" "get_state"

fn navigation_navigate_options_get_history_ffi(obj: JsValue) -> JsValue = "webapi_NavigationNavigateOptions" "get_history"