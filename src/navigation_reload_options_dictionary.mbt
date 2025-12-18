// Auto-generated MoonBit bindings for NavigationReloadOptions dictionary
// Do not edit manually

#external
pub type NavigationReloadOptions

pub impl TJsValue for NavigationReloadOptions with to_js(self: NavigationReloadOptions) -> JsValue = "%identity"


fn navigation_reload_options_ffi(info : JsValue, state : JsValue) -> NavigationReloadOptions = "webapi_NavigationReloadOptions" "new"


pub fn NavigationReloadOptions::new(
  info? : JsValue,
  state? : JsValue) -> NavigationReloadOptions {
    navigation_reload_options_ffi(
      opt_to_js(info)
     ,opt_to_js(state)
    )
}


pub fn NavigationReloadOptions::empty() -> NavigationReloadOptions = "webapi_Dictionary" "empty"