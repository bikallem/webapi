fn check_visibility_options_ffi(check_opacity: JsValue, check_visibility_css: JsValue, content_visibility_auto: JsValue, opacity_property: JsValue, visibility_property: JsValue) -> CheckVisibilityOptions = "webapi_CheckVisibilityOptions" "new"

fn check_visibility_options_empty_ffi() -> CheckVisibilityOptions = "webapi_Dictionary" "empty"