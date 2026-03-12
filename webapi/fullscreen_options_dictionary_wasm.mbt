fn fullscreen_options_ffi(navigation_ui: JsValue) -> FullscreenOptions = "webapi_FullscreenOptions" "new"

fn fullscreen_options_empty_ffi() -> FullscreenOptions = "webapi_Dictionary" "empty"

fn fullscreen_options_get_navigation_ui_ffi(obj: JsValue) -> JsValue = "webapi_FullscreenOptions" "get_navigationUI"