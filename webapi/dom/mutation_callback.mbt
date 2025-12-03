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
pub fn cb_mutation_callback(
  f : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback = "webapi_MutationCallback" "new"
