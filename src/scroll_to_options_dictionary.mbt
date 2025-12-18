// Auto-generated MoonBit bindings for ScrollToOptions dictionary
// Do not edit manually

#external
pub type ScrollToOptions

pub impl TJsValue for ScrollToOptions with to_js(self: ScrollToOptions) -> JsValue = "%identity"


fn scroll_to_options_ffi(behavior : JsValue, left : JsValue, top : JsValue) -> ScrollToOptions = "webapi_ScrollToOptions" "new"


pub fn ScrollToOptions::new(
  behavior? : ScrollBehavior? : ScrollBehavior = "auto",
  left? : Double,
  top? : Double) -> ScrollToOptions {
    scroll_to_options_ffi(
      TJsValue::to_js(behavior)
     ,opt_to_js(left)
     ,opt_to_js(top)
    )
}


pub fn ScrollToOptions::empty() -> ScrollToOptions = "webapi_Dictionary" "empty"