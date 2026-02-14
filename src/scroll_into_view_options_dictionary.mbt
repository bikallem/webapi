// Do not edit. This file is generated.
// MoonBit type: ScrollIntoViewOptions
// Specifications: cssom-view.idl

///|
/// [ScrollIntoViewOptions](https://developer.mozilla.org/en-US/docs/Web/API/ScrollIntoViewOptions)
#external
pub type ScrollIntoViewOptions

///|
pub impl TJsValue for ScrollIntoViewOptions with to_js(
  self : ScrollIntoViewOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ScrollIntoViewOptions with from_js_any(value : JsAny) -> ScrollIntoViewOptions = "%identity"

///|
pub fn ScrollIntoViewOptions::new(
  behavior? : ScrollBehavior = ScrollBehavior::Auto,
  block? : ScrollLogicalPosition = ScrollLogicalPosition::Start,
  inline? : ScrollLogicalPosition = ScrollLogicalPosition::Nearest,
  container? : ScrollIntoViewContainer = ScrollIntoViewContainer::All,
) -> ScrollIntoViewOptions {
  scroll_into_view_options_ffi(
    TJsValue::to_js(behavior),
    TJsValue::to_js(block),
    TJsValue::to_js(inline),
    TJsValue::to_js(container),
  )
}

///|
pub fn ScrollIntoViewOptions::empty() -> ScrollIntoViewOptions {
  scroll_into_view_options_empty_ffi()
}
