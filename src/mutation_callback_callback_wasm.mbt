///|
fn mutation_callback_ffi_raw(
  callback : (JsArray, MutationObserver) -> Unit,
) -> MutationCallback = "webapi_MutationCallback" "new"

///|
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
