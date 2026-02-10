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
