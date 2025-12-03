// Auto-generated MoonBit bindings for NavigationReloadOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary NavigationReloadOptions : NavigationOptions {
//   any state;
// };

///|
#external
pub type NavigationReloadOptions

///|
pub impl TJsValue for NavigationReloadOptions with to_js(self : NavigationReloadOptions) -> JsValue = "%identity"

///|
fn navigation_reload_options_ffi(state : JsValue) -> NavigationReloadOptions = "webapi_NavigationReloadOptions" "new"

///|
pub fn NavigationReloadOptions::new(
  state? : JsValue
) -> NavigationReloadOptions {
  let state_js = opt_to_js(state)
  navigation_reload_options_ffi(state_js)
}

///|
pub fn NavigationReloadOptions::empty() -> NavigationReloadOptions = "webapi_Dictionary" "empty"