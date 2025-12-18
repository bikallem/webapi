// Auto-generated MoonBit bindings for ScrollIntoViewOptions dictionary

// Do not edit manually

///|
#external
pub type ScrollIntoViewOptions

///|
pub impl TJsValue for ScrollIntoViewOptions with to_js(self : ScrollIntoViewOptions) -> JsValue = "%identity"

///|
fn scroll_into_view_options_ffi(block : JsValue, inline : JsValue, container : JsValue) -> ScrollIntoViewOptions = "webapi_ScrollIntoViewOptions" "new"

///|
pub fn ScrollIntoViewOptions::new(
  block? : ScrollLogicalPosition = ScrollLogicalPosition::Start,
  inline? : ScrollLogicalPosition = ScrollLogicalPosition::Nearest,
  container? : ScrollIntoViewContainer = ScrollIntoViewContainer::All
) -> ScrollIntoViewOptions {
  scroll_into_view_options_ffi(TJsValue::to_js(block), TJsValue::to_js(inline), TJsValue::to_js(container))
}

///|
pub fn ScrollIntoViewOptions::empty() -> ScrollIntoViewOptions = "webapi_Dictionary" "empty"