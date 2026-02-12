///|
fn mutation_callback_ffi_wasm(
  callback : (JsValue, JsValue) -> Unit,
) -> MutationCallback = "webapi_MutationCallback" "new"

///|
fn mutation_callback_ffi(
  callback : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback {
  mutation_callback_ffi_wasm(fn(a0, a1) {
    callback(jsvalue_to_array(a0, JsValue::unsafe_cast), a1.unsafe_cast())
  })
}
