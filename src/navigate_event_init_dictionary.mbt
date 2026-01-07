// Do not edit. This file is generated.
// MoonBit type: NavigateEventInit
// Specifications: dom.idl, html.idl

///|
/// [NavigateEventInit](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEventInit)
#external
pub type NavigateEventInit

///|
pub impl TJsValue for NavigateEventInit with to_js(self : NavigateEventInit) -> JsValue = "%identity"

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
pub fn NavigateEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  navigation_type? : NavigationType = NavigationType::Push,
  destination : &TNavigationDestination,
  can_intercept? : Bool = false,
  user_initiated? : Bool = false,
  hash_change? : Bool = false,
  signal : &TAbortSignal,
  form_data? : &TFormData = JsValue::null(),
  download_request? : String = JsValue::null(),
  info? : JsValue,
  has_ua_visual_transition? : Bool = false,
  source_element? : &TElement = JsValue::null(),
) -> NavigateEventInit {
  navigate_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(navigation_type),
    TJsValue::to_js(destination),
    TJsValue::to_js(can_intercept),
    TJsValue::to_js(user_initiated),
    TJsValue::to_js(hash_change),
    TJsValue::to_js(signal),
    TJsValue::to_js(form_data),
    TJsValue::to_js(download_request),
    opt_to_js(info),
    TJsValue::to_js(has_ua_visual_transition),
    TJsValue::to_js(source_element),
  )
}

///|
extern "js" fn navigate_event_init_empty_ffi() -> NavigateEventInit = "() => {}"

///|
pub fn NavigateEventInit::empty() -> NavigateEventInit {
  navigate_event_init_empty_ffi()
}
