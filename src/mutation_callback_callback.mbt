// Do not edit. This file is generated.
// MoonBit type: MutationCallback
// Specifications: dom.idl

///|
#external
pub type MutationCallback

///|
pub impl TJsValue for MutationCallback with to_js(self : MutationCallback) -> JsValue = "%identity"

///|
extern "js" fn mutation_callback_ffi(
  f : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback = "(f) => f"

///|
pub fn MutationCallback::new(
  f : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback {
  mutation_callback_ffi(f)
}
