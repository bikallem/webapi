// Auto-generated MoonBit bindings for ScrollOptions dictionary

// Do not edit manually

///|
#external
pub type ScrollOptions

///|
pub impl TJsValue for ScrollOptions with to_js(self : ScrollOptions) -> JsValue = "%identity"

///|
fn scroll_options_ffi(behavior : JsValue) -> ScrollOptions = "webapi_ScrollOptions" "new"

///|
pub fn ScrollOptions::new(behavior? : ScrollBehavior) -> ScrollOptions {
  let behavior_js = opt_to_js(behavior)
  scroll_options_ffi(behavior_js)
}

///|
pub fn ScrollOptions::empty() -> ScrollOptions = "webapi_Dictionary" "empty"
