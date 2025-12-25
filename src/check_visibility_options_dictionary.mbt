// Do not edit. This file is generated.
// MoonBit type: CheckVisibilityOptions
// Specifications: cssom-view.idl

///|
#external
pub type CheckVisibilityOptions

///|
pub impl TJsValue for CheckVisibilityOptions with to_js(
  self : CheckVisibilityOptions,
) -> JsValue = "%identity"

///|
extern "js" fn check_visibility_options_ffi(
  check_opacity : JsValue,
  check_visibility_css : JsValue,
  content_visibility_auto : JsValue,
  opacity_property : JsValue,
  visibility_property : JsValue,
) -> CheckVisibilityOptions =
  #|(checkOpacity, checkVisibilityCSS, contentVisibilityAuto, opacityProperty, visibilityProperty) => {
  #|  const obj = {};
  #|  if (checkOpacity !== undefined) obj.checkOpacity = checkOpacity;
  #|  if (checkVisibilityCSS !== undefined) obj.checkVisibilityCSS = checkVisibilityCSS;
  #|  if (contentVisibilityAuto !== undefined) obj.contentVisibilityAuto = contentVisibilityAuto;
  #|  if (opacityProperty !== undefined) obj.opacityProperty = opacityProperty;
  #|  if (visibilityProperty !== undefined) obj.visibilityProperty = visibilityProperty;
  #|  return obj;
  #|}

///|
pub fn CheckVisibilityOptions::new(
  check_opacity? : Bool = false,
  check_visibility_css? : Bool = false,
  content_visibility_auto? : Bool = false,
  opacity_property? : Bool = false,
  visibility_property? : Bool = false,
) -> CheckVisibilityOptions {
  check_visibility_options_ffi(
    TJsValue::to_js(check_opacity),
    TJsValue::to_js(check_visibility_css),
    TJsValue::to_js(content_visibility_auto),
    TJsValue::to_js(opacity_property),
    TJsValue::to_js(visibility_property),
  )
}

///|
extern "js" fn check_visibility_options_empty_ffi() -> CheckVisibilityOptions = "() => {}"

///|
pub fn CheckVisibilityOptions::empty() -> CheckVisibilityOptions {
  check_visibility_options_empty_ffi()
}
