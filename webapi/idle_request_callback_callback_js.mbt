///|
extern "js" fn idle_request_callback_ffi(
  callback : (IdleDeadline) -> Unit,
) -> IdleRequestCallback = "(callback) => callback"
