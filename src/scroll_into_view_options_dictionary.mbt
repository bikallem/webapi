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

///|
pub fn ScrollIntoViewOptions::behavior(
  self : ScrollIntoViewOptions,
) -> ScrollBehavior? {
  let result = scroll_into_view_options_get_behavior_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ScrollIntoViewOptions::block(
  self : ScrollIntoViewOptions,
) -> ScrollLogicalPosition? {
  let result = scroll_into_view_options_get_block_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ScrollIntoViewOptions::inline(
  self : ScrollIntoViewOptions,
) -> ScrollLogicalPosition? {
  let result = scroll_into_view_options_get_inline_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ScrollIntoViewOptions::container(
  self : ScrollIntoViewOptions,
) -> ScrollIntoViewContainer? {
  let result = scroll_into_view_options_get_container_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
