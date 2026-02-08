// Do not edit. This file is generated.
// MoonBit type: HashChangeEventInit
// Specifications: dom.idl, html.idl

///|
/// [HashChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEventInit)
#external
pub type HashChangeEventInit

///|
pub impl TJsValue for HashChangeEventInit with to_js(self : HashChangeEventInit) -> JsValue = "%identity"

///|
pub fn HashChangeEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  old_url? : String = "",
  new_url? : String = "",
) -> HashChangeEventInit {
  hash_change_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(old_url),
    TJsValue::to_js(new_url),
  )
}

///|
pub fn HashChangeEventInit::empty() -> HashChangeEventInit {
  hash_change_event_init_empty_ffi()
}
