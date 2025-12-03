// Auto-generated MoonBit bindings for MutationCallback callback

// Do not edit manually

//
// WebIDL Callback:
// callback MutationCallback = undefined (sequence<MutationRecord> mutations, MutationObserver observer);

///|
#external
pub type MutationCallback

///|
pub impl TJsValue for MutationCallback with to_js(self : MutationCallback) -> JsValue = "%identity"

///|
fn mutation_callback_new_ffi(
  f : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback = "webapi_MutationCallback" "new"

///|
pub fn MutationCallback::new(
  f : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback {
  mutation_callback_new_ffi(f)
}
