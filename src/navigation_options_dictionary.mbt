// Auto-generated MoonBit bindings for NavigationOptions dictionary
// Do not edit manually

#external
pub type NavigationOptions

pub impl TJsValue for NavigationOptions with to_js(self: NavigationOptions) -> JsValue = "%identity"


fn navigation_options_ffi(info : JsValue) -> NavigationOptions = "webapi_NavigationOptions" "new"


pub fn NavigationOptions::new(
  info? : JsValue) -> NavigationOptions {
    navigation_options_ffi(
      opt_to_js(info)
    )
}


pub fn NavigationOptions::empty() -> NavigationOptions = "webapi_Dictionary" "empty"