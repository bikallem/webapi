// Auto-generated MoonBit bindings for GetHTMLOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary GetHTMLOptions {
//   boolean serializableShadowRoots = false;
//   sequence<ShadowRoot> shadowRoots = [];
// };

///|
#external
pub type GetHTMLOptions

///|
pub impl TJsValue for GetHTMLOptions with to_js(self : GetHTMLOptions) -> JsValue = "%identity"

///|
fn get_html_options_ffi(
  serializable_shadow_roots : JsValue,
  shadow_roots : JsValue,
) -> GetHTMLOptions = "webapi_GetHTMLOptions" "new"

///|
pub fn GetHTMLOptions::new(
  serializable_shadow_roots? : Bool = false,
  shadow_roots? : Array[JsValue] = [],
) -> GetHTMLOptions {
  get_html_options_ffi(
    TJsValue::to_js(serializable_shadow_roots),
    TJsValue::to_js(shadow_roots),
  )
}

///|
pub fn GetHTMLOptions::empty() -> GetHTMLOptions = "webapi_Dictionary" "empty"
