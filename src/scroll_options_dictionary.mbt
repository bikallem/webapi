// Auto-generated MoonBit bindings for ScrollOptions dictionary
// Do not edit manually

#external
pub type ScrollOptions

pub impl TJsValue for ScrollOptions with to_js(self: ScrollOptions) -> JsValue = "%identity"


fn scroll_options_ffi(behavior : JsValue) -> ScrollOptions = "webapi_ScrollOptions" "new"


pub fn ScrollOptions::new(
  behavior? : ScrollBehavior? : ScrollBehavior = "auto") -> ScrollOptions {
    scroll_options_ffi(
      TJsValue::to_js(behavior)
    )
}


pub fn ScrollOptions::empty() -> ScrollOptions = "webapi_Dictionary" "empty"