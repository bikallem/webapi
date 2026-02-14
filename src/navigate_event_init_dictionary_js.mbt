///|
extern "js" fn navigate_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  navigation_type : JsValue,
  destination : JsValue,
  can_intercept : JsValue,
  user_initiated : JsValue,
  hash_change : JsValue,
  signal : JsValue,
  form_data : JsValue,
  download_request : JsValue,
  info : JsValue,
  has_ua_visual_transition : JsValue,
  source_element : JsValue,
) -> NavigateEventInit =
  #|(bubbles, cancelable, composed, navigationType, destination, canIntercept, userInitiated, hashChange, signal, formData, downloadRequest, info, hasUAVisualTransition, sourceElement) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (navigationType !== undefined) obj.navigationType = navigationType;
  #|  if (destination !== undefined) obj.destination = destination;
  #|  if (canIntercept !== undefined) obj.canIntercept = canIntercept;
  #|  if (userInitiated !== undefined) obj.userInitiated = userInitiated;
  #|  if (hashChange !== undefined) obj.hashChange = hashChange;
  #|  if (signal !== undefined) obj.signal = signal;
  #|  if (formData !== undefined) obj.formData = formData;
  #|  if (downloadRequest !== undefined) obj.downloadRequest = downloadRequest;
  #|  if (info !== undefined) obj.info = info;
  #|  if (hasUAVisualTransition !== undefined) obj.hasUAVisualTransition = hasUAVisualTransition;
  #|  if (sourceElement !== undefined) obj.sourceElement = sourceElement;
  #|  return obj;
  #|}

///|
extern "js" fn navigate_event_init_empty_ffi() -> NavigateEventInit = "() => {}"

///|
extern "js" fn navigate_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn navigate_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn navigate_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn navigate_event_init_get_navigation_type_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationType"

///|
extern "js" fn navigate_event_init_get_destination_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.destination"

///|
fn navigate_event_init_get_destination_ffi(
  obj : JsValue,
) -> NavigationDestination {
  navigate_event_init_get_destination_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigate_event_init_get_can_intercept_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.canIntercept"

///|
extern "js" fn navigate_event_init_get_user_initiated_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.userInitiated"

///|
extern "js" fn navigate_event_init_get_hash_change_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hashChange"

///|
extern "js" fn navigate_event_init_get_signal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
fn navigate_event_init_get_signal_ffi(obj : JsValue) -> AbortSignal {
  navigate_event_init_get_signal_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigate_event_init_get_form_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.formData"

///|
extern "js" fn navigate_event_init_get_download_request_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.downloadRequest"

///|
extern "js" fn navigate_event_init_get_info_ffi(obj : JsValue) -> JsValue = "(obj) => obj.info"

///|
extern "js" fn navigate_event_init_get_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hasUAVisualTransition"

///|
extern "js" fn navigate_event_init_get_source_element_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.sourceElement"
