// Do not edit. This file is generated.
// MoonBit type: CloseEventInit
// Specifications: websockets.idl, dom.idl

///|
/// [CloseEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CloseEventInit)
#external
pub type CloseEventInit

///|
pub impl TJsValue for CloseEventInit with to_js(self : CloseEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for CloseEventInit with from_js_any(value : JsAny) -> CloseEventInit = "%identity"

///|
pub fn CloseEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  was_clean? : Bool,
  code? : UInt,
  reason? : String,
) -> CloseEventInit {
  close_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(was_clean),
    opt_to_js(code),
    opt_to_js(reason),
  )
}

///|
pub fn CloseEventInit::empty() -> CloseEventInit {
  close_event_init_empty_ffi()
}

///|
pub fn CloseEventInit::bubbles(self : CloseEventInit) -> Bool? {
  close_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::cancelable(self : CloseEventInit) -> Bool? {
  close_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::composed(self : CloseEventInit) -> Bool? {
  close_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::was_clean(self : CloseEventInit) -> Bool? {
  close_event_init_get_was_clean_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::code(self : CloseEventInit) -> UInt? {
  close_event_init_get_code_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::reason(self : CloseEventInit) -> String? {
  close_event_init_get_reason_ffi(TJsValue::to_js(self)).to_option_prim()
}
