// Do not edit. This file is generated.
// MoonBit type: ExtendableEventInit
// Specifications: service-workers.idl, dom.idl

///|
/// [ExtendableEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEventInit)
#external
pub type ExtendableEventInit

///|
pub impl TJsValue for ExtendableEventInit with to_js(self : ExtendableEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ExtendableEventInit with from_js_any(value : JsAny) -> ExtendableEventInit = "%identity"

///|
pub fn ExtendableEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
) -> ExtendableEventInit {
  extendable_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
  )
}

///|
pub fn ExtendableEventInit::empty() -> ExtendableEventInit {
  extendable_event_init_empty_ffi()
}

///|
pub fn ExtendableEventInit::bubbles(self : ExtendableEventInit) -> Bool? {
  extendable_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ExtendableEventInit::cancelable(self : ExtendableEventInit) -> Bool? {
  extendable_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ExtendableEventInit::composed(self : ExtendableEventInit) -> Bool? {
  extendable_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}
