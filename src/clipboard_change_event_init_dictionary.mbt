// Do not edit. This file is generated.
// MoonBit type: ClipboardChangeEventInit
// Specifications: clipboard-apis.idl, dom.idl

///|
/// [ClipboardChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEventInit)
#external
pub type ClipboardChangeEventInit

///|
pub impl TJsValue for ClipboardChangeEventInit with to_js(
  self : ClipboardChangeEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ClipboardChangeEventInit with from_js_any(value : JsAny) -> ClipboardChangeEventInit = "%identity"

///|
pub fn ClipboardChangeEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  types? : Array[String] = [],
  change_id? : Int64 = (0 : Int64),
) -> ClipboardChangeEventInit {
  clipboard_change_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(types),
    TJsValue::to_js(change_id),
  )
}

///|
pub fn ClipboardChangeEventInit::empty() -> ClipboardChangeEventInit {
  clipboard_change_event_init_empty_ffi()
}

///|
pub fn ClipboardChangeEventInit::bubbles(
  self : ClipboardChangeEventInit,
) -> Bool? {
  clipboard_change_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ClipboardChangeEventInit::cancelable(
  self : ClipboardChangeEventInit,
) -> Bool? {
  clipboard_change_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ClipboardChangeEventInit::composed(
  self : ClipboardChangeEventInit,
) -> Bool? {
  clipboard_change_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ClipboardChangeEventInit::types(
  self : ClipboardChangeEventInit,
) -> Array[String]? {
  clipboard_change_event_init_get_types_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn ClipboardChangeEventInit::change_id(
  self : ClipboardChangeEventInit,
) -> Int64? {
  clipboard_change_event_init_get_change_id_ffi(TJsValue::to_js(self)).to_option_prim()
}
