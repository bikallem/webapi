///|
fn get_html_options_ffi(
  serializable_shadow_roots : JsValue,
  shadow_roots : JsValue,
) -> GetHTMLOptions = "webapi_GetHTMLOptions" "new"

///|
fn get_html_options_empty_ffi() -> GetHTMLOptions = "webapi_Dictionary" "empty"

///|
fn get_html_options_get_serializable_shadow_roots_ffi(obj : JsValue) -> JsValue = "webapi_GetHTMLOptions" "get_serializableShadowRoots"

///|
fn get_html_options_get_shadow_roots_ffi(obj : JsValue) -> JsValue = "webapi_GetHTMLOptions" "get_shadowRoots"
