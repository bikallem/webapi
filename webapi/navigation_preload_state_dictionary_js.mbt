extern "js" fn navigation_preload_state_ffi(enabled: JsValue, header_value: JsValue) -> NavigationPreloadState = 
#|(enabled, headerValue) => {
#|  const obj = {};
#|  if (enabled !== undefined) obj.enabled = enabled;
#|  if (headerValue !== undefined) obj.headerValue = headerValue;
#|  return obj;
#|}

extern "js" fn navigation_preload_state_empty_ffi() -> NavigationPreloadState = "() => {}"

extern "js" fn navigation_preload_state_get_enabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.enabled"

extern "js" fn navigation_preload_state_get_header_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.headerValue"