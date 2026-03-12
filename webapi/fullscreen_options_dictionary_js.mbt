extern "js" fn fullscreen_options_ffi(navigation_ui: JsValue) -> FullscreenOptions = 
#|(navigationUI) => {
#|  const obj = {};
#|  if (navigationUI !== undefined) obj.navigationUI = navigationUI;
#|  return obj;
#|}

extern "js" fn fullscreen_options_empty_ffi() -> FullscreenOptions = "() => {}"

extern "js" fn fullscreen_options_get_navigation_ui_ffi(obj: JsValue) -> JsValue = "(obj) => obj.navigationUI"