// Do not edit. This file is generated.
// MoonBit type: ScrollToOptions
// Specifications: cssom-view.idl

///|
/// [ScrollToOptions](https://developer.mozilla.org/en-US/docs/Web/API/ScrollToOptions)
#external
pub type ScrollToOptions

///|
pub impl TJsValue for ScrollToOptions with to_js(self : ScrollToOptions) -> JsValue = "%identity"

///|
extern "js" fn scroll_to_options_ffi(
  behavior : JsValue,
  left : JsValue,
  top : JsValue,
) -> ScrollToOptions =
  #|(behavior, left, top) => {
  #|  const obj = {};
  #|  if (behavior !== undefined) obj.behavior = behavior;
  #|  if (left !== undefined) obj.left = left;
  #|  if (top !== undefined) obj.top = top;
  #|  return obj;
  #|}

///|
pub fn ScrollToOptions::new(
  behavior? : ScrollBehavior = ScrollBehavior::Auto,
  left? : Double,
  top? : Double,
) -> ScrollToOptions {
  scroll_to_options_ffi(
    TJsValue::to_js(behavior),
    opt_to_js(left),
    opt_to_js(top),
  )
}

///|
extern "js" fn scroll_to_options_empty_ffi() -> ScrollToOptions = "() => {}"

///|
pub fn ScrollToOptions::empty() -> ScrollToOptions {
  scroll_to_options_empty_ffi()
}
