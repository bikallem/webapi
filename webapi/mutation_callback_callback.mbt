// Do not edit. This file is generated.
// MoonBit type: MutationCallback
// Specifications: dom.idl

///|
/// [MutationCallback](https://developer.mozilla.org/en-US/docs/Web/API/MutationCallback)
#external
pub type MutationCallback

///|
pub impl TJsValue for MutationCallback with to_js(self : MutationCallback) -> JsValue = "%identity"

///|
pub impl FromJsAny for MutationCallback with from_js_any(value : JsAny) -> MutationCallback = "%identity"

///|
pub fn MutationCallback::new(
  callback : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback {
  mutation_callback_ffi(callback)
}

///|
#cfg(target="js")
extern "js" fn mutation_callback_ffi_fixed(
  callback : (FixedArray[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback = "(callback) => callback"

fn mutation_callback_ffi(
  callback : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback {
  mutation_callback_ffi_fixed(fn(__a1, __a2) { callback(Array::from_fixed_array(__a1), __a2) })
}

///|
#cfg(target="wasm-gc")
fn mutation_callback_ffi_raw(
  callback : (JsArray, MutationObserver) -> Unit,
) -> MutationCallback = "webapi_MutationCallback" "new"

///|
#cfg(target="wasm-gc")
fn mutation_callback_ffi(
  callback : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback {
  mutation_callback_ffi_raw(fn(
    mutations : JsArray,
    observer : MutationObserver,
  ) -> Unit {
    callback(mutations.to_array(), observer)
  })
}
