///|
extern "js" fn frame_request_callback_ffi(
  callback : (Double) -> Unit,
) -> FrameRequestCallback = "(callback) => callback"
