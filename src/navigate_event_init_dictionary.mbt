// Do not edit. This file is generated.
// MoonBit type: NavigateEventInit
// Specifications: html.idl, dom.idl

///|
/// [NavigateEventInit](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEventInit)
#external
pub type NavigateEventInit

///|
pub impl TJsValue for NavigateEventInit with to_js(self : NavigateEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigateEventInit with from_js_any(value : JsAny) -> NavigateEventInit = "%identity"

///|
pub fn NavigateEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  navigation_type? : NavigationType,
  destination : &TNavigationDestination,
  can_intercept? : Bool,
  user_initiated? : Bool,
  hash_change? : Bool,
  signal : &TAbortSignal,
  form_data? : &TFormData,
  download_request? : String,
  info? : JsValue,
  has_ua_visual_transition? : Bool,
  source_element? : &TElement,
) -> NavigateEventInit {
  navigate_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(navigation_type),
    TJsValue::to_js(destination),
    opt_to_js(can_intercept),
    opt_to_js(user_initiated),
    opt_to_js(hash_change),
    TJsValue::to_js(signal),
    opt_to_js(form_data),
    opt_to_js(download_request),
    opt_to_js(info),
    opt_to_js(has_ua_visual_transition),
    opt_to_js(source_element),
  )
}

///|
pub fn NavigateEventInit::empty() -> NavigateEventInit {
  navigate_event_init_empty_ffi()
}

///|
pub fn NavigateEventInit::bubbles(self : NavigateEventInit) -> Bool? {
  navigate_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigateEventInit::cancelable(self : NavigateEventInit) -> Bool? {
  navigate_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigateEventInit::composed(self : NavigateEventInit) -> Bool? {
  navigate_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigateEventInit::navigation_type(
  self : NavigateEventInit,
) -> NavigationType? {
  navigate_event_init_get_navigation_type_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn NavigateEventInit::destination(
  self : NavigateEventInit,
) -> NavigationDestination {
  navigate_event_init_get_destination_ffi(TJsValue::to_js(self))
}

///|
pub fn NavigateEventInit::can_intercept(self : NavigateEventInit) -> Bool? {
  navigate_event_init_get_can_intercept_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigateEventInit::user_initiated(self : NavigateEventInit) -> Bool? {
  navigate_event_init_get_user_initiated_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigateEventInit::hash_change(self : NavigateEventInit) -> Bool? {
  navigate_event_init_get_hash_change_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigateEventInit::signal(self : NavigateEventInit) -> AbortSignal {
  navigate_event_init_get_signal_ffi(TJsValue::to_js(self))
}

///|
pub fn NavigateEventInit::form_data(self : NavigateEventInit) -> FormData? {
  navigate_event_init_get_form_data_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn NavigateEventInit::download_request(self : NavigateEventInit) -> String? {
  navigate_event_init_get_download_request_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigateEventInit::info(self : NavigateEventInit) -> JsValue? {
  navigate_event_init_get_info_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn NavigateEventInit::has_ua_visual_transition(
  self : NavigateEventInit,
) -> Bool? {
  navigate_event_init_get_has_ua_visual_transition_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigateEventInit::source_element(self : NavigateEventInit) -> Element? {
  navigate_event_init_get_source_element_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
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
#cfg(target="js")
extern "js" fn navigate_event_init_empty_ffi() -> NavigateEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_navigation_type_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationType"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_destination_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.destination"

///|
#cfg(target="js")
fn navigate_event_init_get_destination_ffi(
  obj : JsValue,
) -> NavigationDestination {
  navigate_event_init_get_destination_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_can_intercept_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.canIntercept"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_user_initiated_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.userInitiated"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_hash_change_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hashChange"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_signal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
#cfg(target="js")
fn navigate_event_init_get_signal_ffi(obj : JsValue) -> AbortSignal {
  navigate_event_init_get_signal_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_form_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.formData"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_download_request_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.downloadRequest"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_info_ffi(obj : JsValue) -> JsValue = "(obj) => obj.info"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hasUAVisualTransition"

///|
#cfg(target="js")
extern "js" fn navigate_event_init_get_source_element_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.sourceElement"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_ffi(
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
) -> NavigateEventInit = "webapi_NavigateEventInit" "new"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_empty_ffi() -> NavigateEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_navigation_type_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_navigationType"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_destination_ffi(
  obj : JsValue,
) -> NavigationDestination = "webapi_NavigateEventInit" "get_destination"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_can_intercept_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_canIntercept"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_user_initiated_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_userInitiated"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_hash_change_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_hashChange"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_signal_ffi(obj : JsValue) -> AbortSignal = "webapi_NavigateEventInit" "get_signal"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_form_data_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_formData"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_download_request_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_downloadRequest"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_info_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_info"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> JsValue = "webapi_NavigateEventInit" "get_hasUAVisualTransition"

///|
#cfg(target="wasm-gc")
fn navigate_event_init_get_source_element_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEventInit" "get_sourceElement"
