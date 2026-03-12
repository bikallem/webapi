extern "js" fn check_visibility_options_ffi(check_opacity: JsValue, check_visibility_css: JsValue, content_visibility_auto: JsValue, opacity_property: JsValue, visibility_property: JsValue) -> CheckVisibilityOptions = 
#|(checkOpacity, checkVisibilityCSS, contentVisibilityAuto, opacityProperty, visibilityProperty) => {
#|  const obj = {};
#|  if (checkOpacity !== undefined) obj.checkOpacity = checkOpacity;
#|  if (checkVisibilityCSS !== undefined) obj.checkVisibilityCSS = checkVisibilityCSS;
#|  if (contentVisibilityAuto !== undefined) obj.contentVisibilityAuto = contentVisibilityAuto;
#|  if (opacityProperty !== undefined) obj.opacityProperty = opacityProperty;
#|  if (visibilityProperty !== undefined) obj.visibilityProperty = visibilityProperty;
#|  return obj;
#|}

extern "js" fn check_visibility_options_empty_ffi() -> CheckVisibilityOptions = "() => {}"

extern "js" fn check_visibility_options_get_check_opacity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.checkOpacity"

extern "js" fn check_visibility_options_get_check_visibility_css_ffi(obj: JsValue) -> JsValue = "(obj) => obj.checkVisibilityCSS"

extern "js" fn check_visibility_options_get_content_visibility_auto_ffi(obj: JsValue) -> JsValue = "(obj) => obj.contentVisibilityAuto"

extern "js" fn check_visibility_options_get_opacity_property_ffi(obj: JsValue) -> JsValue = "(obj) => obj.opacityProperty"

extern "js" fn check_visibility_options_get_visibility_property_ffi(obj: JsValue) -> JsValue = "(obj) => obj.visibilityProperty"