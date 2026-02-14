// Do not edit. This file is generated.
// MoonBit type: StorageEventInit
// Specifications: dom.idl, html.idl

///|
/// [StorageEventInit](https://developer.mozilla.org/en-US/docs/Web/API/StorageEventInit)
#external
pub type StorageEventInit

///|
pub impl TJsValue for StorageEventInit with to_js(self : StorageEventInit) -> JsValue = "%identity"

///|
pub fn StorageEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  key? : String,
  old_value? : String,
  new_value? : String,
  url? : String = "",
  storage_area? : &TStorage = JsValue::null(),
) -> StorageEventInit {
  storage_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(key),
    opt_to_js(old_value),
    opt_to_js(new_value),
    TJsValue::to_js(url),
    TJsValue::to_js(storage_area),
  )
}

///|
pub fn StorageEventInit::empty() -> StorageEventInit {
  storage_event_init_empty_ffi()
}
