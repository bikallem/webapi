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