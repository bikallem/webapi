///|
fn frame_request_callback_ffi(
  callback : (Double) -> Unit,
) -> FrameRequestCallback = "webapi_FrameRequestCallback" "new"
