// Do not edit. This file is generated.
// MoonBit type: MutationCallback
// Specifications: dom.idl

/// [MutationCallback](https://developer.mozilla.org/en-US/docs/Web/API/MutationCallback)
#external
pub type MutationCallback

pub impl TJsValue for MutationCallback with to_js(self: MutationCallback) -> JsValue = "%identity"

pub fn MutationCallback::new(f : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback { mutation_callback_ffi(js_of(f)).unsafe_cast() }