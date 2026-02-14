///|
fn get_composed_ranges_options_ffi(
  shadow_roots : JsValue,
) -> GetComposedRangesOptions = "webapi_GetComposedRangesOptions" "new"

///|
fn get_composed_ranges_options_empty_ffi() -> GetComposedRangesOptions = "webapi_Dictionary" "empty"

///|
fn get_composed_ranges_options_get_shadow_roots_ffi(obj : JsValue) -> JsValue = "webapi_GetComposedRangesOptions" "get_shadowRoots"
