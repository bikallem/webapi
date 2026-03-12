// Do not edit. This file is generated.
// MoonBit type: ScrollIntoViewOptions
// Specifications: cssom-view.idl

/// [ScrollIntoViewOptions](https://developer.mozilla.org/en-US/docs/Web/API/ScrollIntoViewOptions)
#external
pub type ScrollIntoViewOptions

pub impl TJsValue for ScrollIntoViewOptions with to_js(self: ScrollIntoViewOptions) -> JsValue = "%identity"

pub impl FromJsAny for ScrollIntoViewOptions with from_js_any(value : JsAny) -> ScrollIntoViewOptions = "%identity"

pub fn ScrollIntoViewOptions::new(behavior? : ScrollBehavior, 
block? : ScrollLogicalPosition, 
inline? : ScrollLogicalPosition, 
container? : ScrollIntoViewContainer) -> ScrollIntoViewOptions {
  scroll_into_view_options_ffi(opt_to_js(behavior), opt_to_js(block), opt_to_js(inline), opt_to_js(container))
}

pub fn ScrollIntoViewOptions::empty() -> ScrollIntoViewOptions { scroll_into_view_options_empty_ffi() }

pub fn ScrollIntoViewOptions::behavior(self : ScrollIntoViewOptions) -> ScrollBehavior? {
  scroll_into_view_options_get_behavior_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ScrollIntoViewOptions::block(self : ScrollIntoViewOptions) -> ScrollLogicalPosition? {
  scroll_into_view_options_get_block_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ScrollIntoViewOptions::inline(self : ScrollIntoViewOptions) -> ScrollLogicalPosition? {
  scroll_into_view_options_get_inline_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ScrollIntoViewOptions::container(self : ScrollIntoViewOptions) -> ScrollIntoViewContainer? {
  scroll_into_view_options_get_container_ffi(TJsValue::to_js(self)).to_option()
}