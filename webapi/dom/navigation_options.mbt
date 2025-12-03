// Auto-generated MoonBit bindings for NavigationOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary NavigationOptions {
//   any info;
// };

///|
#external
pub type NavigationOptions

///|
pub impl TJsValue for NavigationOptions with to_js(self : NavigationOptions) -> JsValue = "%identity"

///|
fn navigation_options_ffi(info : JsValue) -> NavigationOptions = "webapi_NavigationOptions" "new"

///|
pub fn NavigationOptions::new(info? : JsValue) -> NavigationOptions {
  let info_js = opt_to_js(info)
  navigation_options_ffi(info_js)
}

///|
pub fn NavigationOptions::empty() -> NavigationOptions = "webapi_Dictionary" "empty"
