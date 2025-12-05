// Auto-generated MoonBit bindings for ScrollToOptions dictionary

// Do not edit manually

///|
#external
pub type ScrollToOptions

///|
pub impl TJsValue for ScrollToOptions with to_js(self : ScrollToOptions) -> JsValue = "%identity"

///|
fn scroll_to_options_ffi(left : JsValue, top : JsValue) -> ScrollToOptions = "webapi_ScrollToOptions" "new"

///|
pub fn ScrollToOptions::new(left? : Double, top? : Double) -> ScrollToOptions {
  let left_js = opt_to_js(left)
  let top_js = opt_to_js(top)
  scroll_to_options_ffi(left_js, top_js)
}

///|
pub fn ScrollToOptions::empty() -> ScrollToOptions = "webapi_Dictionary" "empty"
