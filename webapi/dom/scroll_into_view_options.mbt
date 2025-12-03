// Auto-generated MoonBit bindings for ScrollIntoViewOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary ScrollIntoViewOptions : ScrollOptions {
//   ScrollLogicalPosition block = "start";
//   ScrollLogicalPosition inline = "nearest";
//   ScrollIntoViewContainer container = "all";
// };

///|
#external
pub type ScrollIntoViewOptions

///|
pub impl TJsValue for ScrollIntoViewOptions with to_js(self : ScrollIntoViewOptions) -> JsValue = "%identity"

///|
fn scroll_into_view_options_ffi(block : JsValue, inline : JsValue, container : JsValue) -> ScrollIntoViewOptions = "webapi_ScrollIntoViewOptions" "new"

///|
pub fn ScrollIntoViewOptions::new(
  block? : JsValue,
  inline? : JsValue,
  container? : JsValue
) -> ScrollIntoViewOptions {
  let block_js = opt_to_js(block)
  let inline_js = opt_to_js(inline)
  let container_js = opt_to_js(container)
  scroll_into_view_options_ffi(block_js, inline_js, container_js)
}

///|
pub fn ScrollIntoViewOptions::empty() -> ScrollIntoViewOptions = "webapi_Dictionary" "empty"