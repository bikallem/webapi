// Do not edit. This file is generated.
// MoonBit type: ScrollOptions
// Specifications: cssom-view.idl

/// [ScrollOptions](https://developer.mozilla.org/en-US/docs/Web/API/ScrollOptions)
#external
pub type ScrollOptions

pub impl TJsValue for ScrollOptions with to_js(self: ScrollOptions) -> JsValue = "%identity"

pub impl FromJsAny for ScrollOptions with from_js_any(value : JsAny) -> ScrollOptions = "%identity"

pub fn ScrollOptions::new(behavior? : ScrollBehavior) -> ScrollOptions {
  scroll_options_ffi(opt_to_js(behavior))
}

pub fn ScrollOptions::empty() -> ScrollOptions { scroll_options_empty_ffi() }

pub fn ScrollOptions::behavior(self : ScrollOptions) -> ScrollBehavior? {
  scroll_options_get_behavior_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn scroll_options_ffi(behavior: JsValue) -> ScrollOptions = 
#|(behavior) => {
#|  const obj = {};
#|  if (behavior !== undefined) obj.behavior = behavior;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn scroll_options_empty_ffi() -> ScrollOptions = "() => {}"

#cfg(target="js")
extern "js" fn scroll_options_get_behavior_ffi(obj: JsValue) -> JsValue = "(obj) => obj.behavior"

#cfg(target="wasm-gc")
fn scroll_options_ffi(behavior: JsValue) -> ScrollOptions = "webapi_ScrollOptions" "new"

#cfg(target="wasm-gc")
fn scroll_options_empty_ffi() -> ScrollOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn scroll_options_get_behavior_ffi(obj: JsValue) -> JsValue = "webapi_ScrollOptions" "get_behavior"