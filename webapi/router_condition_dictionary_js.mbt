///|
extern "js" fn router_condition_ffi(
  url_pattern : JsValue,
  request_method : JsValue,
  request_mode : JsValue,
  request_destination : JsValue,
  running_status : JsValue,
  _or : JsValue,
  not : JsValue,
) -> RouterCondition =
  #|(urlPattern, requestMethod, requestMode, requestDestination, runningStatus, _or, not) => {
  #|  const obj = {};
  #|  if (urlPattern !== undefined) obj.urlPattern = urlPattern;
  #|  if (requestMethod !== undefined) obj.requestMethod = requestMethod;
  #|  if (requestMode !== undefined) obj.requestMode = requestMode;
  #|  if (requestDestination !== undefined) obj.requestDestination = requestDestination;
  #|  if (runningStatus !== undefined) obj.runningStatus = runningStatus;
  #|  if (_or !== undefined) obj._or = _or;
  #|  if (not !== undefined) obj.not = not;
  #|  return obj;
  #|}

///|
extern "js" fn router_condition_empty_ffi() -> RouterCondition = "() => {}"

///|
extern "js" fn router_condition_get_url_pattern_ffi(obj : JsValue) -> JsValue = "(obj) => obj.urlPattern"

///|
extern "js" fn router_condition_get_request_method_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.requestMethod"

///|
extern "js" fn router_condition_get_request_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.requestMode"

///|
extern "js" fn router_condition_get_request_destination_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.requestDestination"

///|
extern "js" fn router_condition_get_running_status_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.runningStatus"

///|
extern "js" fn router_condition_get__or_ffi(obj : JsValue) -> JsValue = "(obj) => obj._or"

///|
extern "js" fn router_condition_get_not_ffi(obj : JsValue) -> JsValue = "(obj) => obj.not"
