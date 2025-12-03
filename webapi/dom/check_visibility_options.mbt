// Auto-generated MoonBit bindings for CheckVisibilityOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary CheckVisibilityOptions {
//     boolean checkOpacity = false;
//     boolean checkVisibilityCSS = false;
//     boolean contentVisibilityAuto = false;
//     boolean opacityProperty = false;
//     boolean visibilityProperty = false;
// };

///|
#external
pub type CheckVisibilityOptions

///|
pub impl TJsValue for CheckVisibilityOptions with to_js(self : CheckVisibilityOptions) -> JsValue = "%identity"

///|
fn check_visibility_options_ffi(check_opacity : JsValue, check_visibility_css : JsValue, content_visibility_auto : JsValue, opacity_property : JsValue, visibility_property : JsValue) -> CheckVisibilityOptions = "webapi_CheckVisibilityOptions" "new"

///|
pub fn CheckVisibilityOptions::new(
  check_opacity? : Bool = false,
  check_visibility_css? : Bool = false,
  content_visibility_auto? : Bool = false,
  opacity_property? : Bool = false,
  visibility_property? : Bool = false
) -> CheckVisibilityOptions {
  check_visibility_options_ffi(TJsValue::to_js(check_opacity), TJsValue::to_js(check_visibility_css), TJsValue::to_js(content_visibility_auto), TJsValue::to_js(opacity_property), TJsValue::to_js(visibility_property))
}

///|
pub fn CheckVisibilityOptions::empty() -> CheckVisibilityOptions = "webapi_Dictionary" "empty"