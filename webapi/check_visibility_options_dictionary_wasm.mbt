fn check_visibility_options_ffi(check_opacity: JsValue, check_visibility_css: JsValue, content_visibility_auto: JsValue, opacity_property: JsValue, visibility_property: JsValue) -> CheckVisibilityOptions = "webapi_CheckVisibilityOptions" "new"

fn check_visibility_options_empty_ffi() -> CheckVisibilityOptions = "webapi_Dictionary" "empty"

fn check_visibility_options_get_check_opacity_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_checkOpacity"

fn check_visibility_options_get_check_visibility_css_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_checkVisibilityCSS"

fn check_visibility_options_get_content_visibility_auto_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_contentVisibilityAuto"

fn check_visibility_options_get_opacity_property_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_opacityProperty"

fn check_visibility_options_get_visibility_property_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_visibilityProperty"