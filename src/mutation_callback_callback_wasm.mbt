///|
fn mutation_callback_ffi(
  callback : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback = "webapi_MutationCallback" "new"
