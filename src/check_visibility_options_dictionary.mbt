// Do not edit. This file is generated.
// MoonBit type: CheckVisibilityOptions
// Specifications: cssom-view.idl

/// [CheckVisibilityOptions](https://developer.mozilla.org/en-US/docs/Web/API/CheckVisibilityOptions)
#external
pub type CheckVisibilityOptions

pub impl TJsValue for CheckVisibilityOptions with to_js(self: CheckVisibilityOptions) -> JsValue = "%identity"

pub impl FromJsAny for CheckVisibilityOptions with from_js_any(value : JsAny) -> CheckVisibilityOptions = "%identity"

pub fn CheckVisibilityOptions::new(check_opacity? : Bool, 
check_visibility_css? : Bool, 
content_visibility_auto? : Bool, 
opacity_property? : Bool, 
visibility_property? : Bool) -> CheckVisibilityOptions {
  check_visibility_options_ffi(opt_to_js(check_opacity), opt_to_js(check_visibility_css), opt_to_js(content_visibility_auto), opt_to_js(opacity_property), opt_to_js(visibility_property))
}

pub fn CheckVisibilityOptions::empty() -> CheckVisibilityOptions { check_visibility_options_empty_ffi() }

pub fn CheckVisibilityOptions::check_opacity(self : CheckVisibilityOptions) -> Bool? {
  check_visibility_options_get_check_opacity_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CheckVisibilityOptions::check_visibility_css(self : CheckVisibilityOptions) -> Bool? {
  check_visibility_options_get_check_visibility_css_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CheckVisibilityOptions::content_visibility_auto(self : CheckVisibilityOptions) -> Bool? {
  check_visibility_options_get_content_visibility_auto_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CheckVisibilityOptions::opacity_property(self : CheckVisibilityOptions) -> Bool? {
  check_visibility_options_get_opacity_property_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CheckVisibilityOptions::visibility_property(self : CheckVisibilityOptions) -> Bool? {
  check_visibility_options_get_visibility_property_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
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

#cfg(target="js")
extern "js" fn check_visibility_options_empty_ffi() -> CheckVisibilityOptions = "() => {}"

#cfg(target="js")
extern "js" fn check_visibility_options_get_check_opacity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.checkOpacity"

#cfg(target="js")
extern "js" fn check_visibility_options_get_check_visibility_css_ffi(obj: JsValue) -> JsValue = "(obj) => obj.checkVisibilityCSS"

#cfg(target="js")
extern "js" fn check_visibility_options_get_content_visibility_auto_ffi(obj: JsValue) -> JsValue = "(obj) => obj.contentVisibilityAuto"

#cfg(target="js")
extern "js" fn check_visibility_options_get_opacity_property_ffi(obj: JsValue) -> JsValue = "(obj) => obj.opacityProperty"

#cfg(target="js")
extern "js" fn check_visibility_options_get_visibility_property_ffi(obj: JsValue) -> JsValue = "(obj) => obj.visibilityProperty"

#cfg(target="wasm-gc")
fn check_visibility_options_ffi(check_opacity: JsValue, check_visibility_css: JsValue, content_visibility_auto: JsValue, opacity_property: JsValue, visibility_property: JsValue) -> CheckVisibilityOptions = "webapi_CheckVisibilityOptions" "new"

#cfg(target="wasm-gc")
fn check_visibility_options_empty_ffi() -> CheckVisibilityOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn check_visibility_options_get_check_opacity_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_checkOpacity"

#cfg(target="wasm-gc")
fn check_visibility_options_get_check_visibility_css_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_checkVisibilityCSS"

#cfg(target="wasm-gc")
fn check_visibility_options_get_content_visibility_auto_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_contentVisibilityAuto"

#cfg(target="wasm-gc")
fn check_visibility_options_get_opacity_property_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_opacityProperty"

#cfg(target="wasm-gc")
fn check_visibility_options_get_visibility_property_ffi(obj: JsValue) -> JsValue = "webapi_CheckVisibilityOptions" "get_visibilityProperty"