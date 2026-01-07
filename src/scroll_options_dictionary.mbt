// Do not edit. This file is generated.
// MoonBit type: ScrollOptions
// Specifications: cssom-view.idl

///|
/// [ScrollOptions](https://developer.mozilla.org/en-US/docs/Web/API/ScrollOptions)
#external
pub type ScrollOptions

///|
pub impl TJsValue for ScrollOptions with to_js(self : ScrollOptions) -> JsValue = "%identity"

///|
extern "js" fn scroll_options_ffi(behavior : JsValue) -> ScrollOptions =
  #|(behavior) => {
  #|  const obj = {};
  #|  if (behavior !== undefined) obj.behavior = behavior;
  #|  return obj;
  #|}

///|
pub fn ScrollOptions::new(
  behavior? : ScrollBehavior = ScrollBehavior::Auto,
) -> ScrollOptions {
  scroll_options_ffi(TJsValue::to_js(behavior))
}

///|
extern "js" fn scroll_options_empty_ffi() -> ScrollOptions = "() => {}"

///|
pub fn ScrollOptions::empty() -> ScrollOptions {
  scroll_options_empty_ffi()
}
