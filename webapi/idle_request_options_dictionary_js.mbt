///|
extern "js" fn idle_request_options_ffi(
  timeout : JsValue,
) -> IdleRequestOptions =
  #|(timeout) => {
  #|  const obj = {};
  #|  if (timeout !== undefined) obj.timeout = timeout;
  #|  return obj;
  #|}

///|
extern "js" fn idle_request_options_empty_ffi() -> IdleRequestOptions = "() => {}"

///|
extern "js" fn idle_request_options_get_timeout_ffi(obj : JsValue) -> JsValue = "(obj) => obj.timeout"
