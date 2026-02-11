///|
extern "js" fn mutation_callback_ffi(
  callback : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback = "(callback) => callback"
