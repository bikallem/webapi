// Do not edit. This file is generated.
// MoonBit type: ProgressEventInit
// Specifications: dom.idl, xhr.idl

///|
/// [ProgressEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEventInit)
#external
pub type ProgressEventInit

///|
pub impl TJsValue for ProgressEventInit with to_js(self : ProgressEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ProgressEventInit with from_js_any(value : JsAny) -> ProgressEventInit = "%identity"

///|
pub fn ProgressEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  length_computable? : Bool,
  loaded? : Double,
  total? : Double,
) -> ProgressEventInit {
  progress_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(length_computable),
    opt_to_js(loaded),
    opt_to_js(total),
  )
}

///|
pub fn ProgressEventInit::empty() -> ProgressEventInit {
  progress_event_init_empty_ffi()
}

///|
pub fn ProgressEventInit::bubbles(self : ProgressEventInit) -> Bool? {
  progress_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::cancelable(self : ProgressEventInit) -> Bool? {
  progress_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::composed(self : ProgressEventInit) -> Bool? {
  progress_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::length_computable(self : ProgressEventInit) -> Bool? {
  progress_event_init_get_length_computable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::loaded(self : ProgressEventInit) -> Double? {
  progress_event_init_get_loaded_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::total(self : ProgressEventInit) -> Double? {
  progress_event_init_get_total_ffi(TJsValue::to_js(self)).to_option_prim()
}
