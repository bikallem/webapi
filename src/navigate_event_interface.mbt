// Do not edit. This file is generated.
// MoonBit type: NavigateEvent
// Specifications: html.idl

///|
/// [NavigateEvent](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent)
#external
pub type NavigateEvent

///|
pub impl TJsValue for NavigateEvent with to_js(self : NavigateEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigateEvent with from_js_any(value : JsAny) -> NavigateEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TNavigateEvent] NavigateEvent::into(self : NavigateEvent) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TNavigateEvent] NavigateEvent::unsafe_into(
  self : NavigateEvent,
) -> T = "%identity"

///|
pub impl HasConstructor for NavigateEvent with constructor_name() {
  "NavigateEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNavigateEvent + HasConstructor] NavigateEvent::try_into(
  self : NavigateEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TNavigateEvent for NavigateEvent

///|
pub impl TEvent for NavigateEvent

///|
pub fn NavigateEvent::new(
  type_ : String,
  event_init_dict : NavigateEventInit,
) -> NavigateEvent {
  navigate_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [NavigateEvent](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent) interface.
pub trait TNavigateEvent: TEvent {
  navigation_type(self : Self) -> NavigationType = _
  destination(self : Self) -> NavigationDestination = _
  can_intercept(self : Self) -> Bool = _
  user_initiated(self : Self) -> Bool = _
  hash_change(self : Self) -> Bool = _
  signal(self : Self) -> AbortSignal = _
  form_data(self : Self) -> FormData = _
  download_request(self : Self) -> String = _
  info(self : Self) -> JsValue = _
  has_ua_visual_transition(self : Self) -> Bool = _
  source_element(self : Self) -> Element = _
  intercept(self : Self, options? : NavigationInterceptOptions) -> Unit = _
  scroll(self : Self) -> Unit = _
}

///|
/// [NavigateEvent.navigationType](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/navigationType)
impl TNavigateEvent with navigation_type(self : Self) -> NavigationType {
  navigate_event_navigation_type_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.destination](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/destination)
impl TNavigateEvent with destination(self : Self) -> NavigationDestination {
  navigate_event_destination_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.canIntercept](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/canIntercept)
impl TNavigateEvent with can_intercept(self : Self) -> Bool {
  navigate_event_can_intercept_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.userInitiated](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/userInitiated)
impl TNavigateEvent with user_initiated(self : Self) -> Bool {
  navigate_event_user_initiated_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.hashChange](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/hashChange)
impl TNavigateEvent with hash_change(self : Self) -> Bool {
  navigate_event_hash_change_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.signal](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/signal)
impl TNavigateEvent with signal(self : Self) -> AbortSignal {
  navigate_event_signal_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.formData](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/formData)
impl TNavigateEvent with form_data(self : Self) -> FormData {
  navigate_event_form_data_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.downloadRequest](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/downloadRequest)
impl TNavigateEvent with download_request(self : Self) -> String {
  navigate_event_download_request_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.info](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/info)
impl TNavigateEvent with info(self : Self) -> JsValue {
  navigate_event_info_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.hasUAVisualTransition](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/hasUAVisualTransition)
impl TNavigateEvent with has_ua_visual_transition(self : Self) -> Bool {
  navigate_event_has_ua_visual_transition_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.sourceElement](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/sourceElement)
impl TNavigateEvent with source_element(self : Self) -> Element {
  navigate_event_source_element_ffi(TJsValue::to_js(self))
}

///|
/// [NavigateEvent.intercept](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/intercept)
impl TNavigateEvent with intercept(
  self : Self,
  options? : NavigationInterceptOptions,
) -> Unit {
  navigate_event_intercept_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [NavigateEvent.scroll](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEvent/scroll)
impl TNavigateEvent with scroll(self : Self) -> Unit {
  navigate_event_scroll_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn navigate_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NavigateEvent = "(type_, event_init_dict) => new NavigateEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn navigate_event_navigation_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.navigationType"

///|
#cfg(target="js")
fn navigate_event_navigation_type_ffi(obj : JsValue) -> NavigationType {
  NavigationType::from_unchecked(
    navigate_event_navigation_type_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn navigate_event_destination_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.destination"

///|
#cfg(target="js")
fn navigate_event_destination_ffi(obj : JsValue) -> NavigationDestination {
  navigate_event_destination_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_can_intercept_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.canIntercept"

///|
#cfg(target="js")
fn navigate_event_can_intercept_ffi(obj : JsValue) -> Bool {
  navigate_event_can_intercept_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_user_initiated_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.userInitiated"

///|
#cfg(target="js")
fn navigate_event_user_initiated_ffi(obj : JsValue) -> Bool {
  navigate_event_user_initiated_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_hash_change_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hashChange"

///|
#cfg(target="js")
fn navigate_event_hash_change_ffi(obj : JsValue) -> Bool {
  navigate_event_hash_change_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_signal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
#cfg(target="js")
fn navigate_event_signal_ffi(obj : JsValue) -> AbortSignal {
  navigate_event_signal_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_form_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.formData"

///|
#cfg(target="js")
fn navigate_event_form_data_ffi(obj : JsValue) -> FormData {
  navigate_event_form_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_download_request_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.downloadRequest"

///|
#cfg(target="js")
fn navigate_event_download_request_ffi(obj : JsValue) -> String {
  navigate_event_download_request_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_info_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.info"

///|
#cfg(target="js")
fn navigate_event_info_ffi(obj : JsValue) -> JsValue {
  navigate_event_info_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_has_ua_visual_transition_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hasUAVisualTransition"

///|
#cfg(target="js")
fn navigate_event_has_ua_visual_transition_ffi(obj : JsValue) -> Bool {
  navigate_event_has_ua_visual_transition_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_source_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sourceElement"

///|
#cfg(target="js")
fn navigate_event_source_element_ffi(obj : JsValue) -> Element {
  navigate_event_source_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigate_event_intercept_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.intercept(options)"

///|
#cfg(target="js")
extern "js" fn navigate_event_scroll_ffi(obj : JsValue) -> Unit = "(obj) => obj.scroll()"

///|
#cfg(target="wasm-gc")
fn navigate_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NavigateEvent = "webapi_NavigateEvent" "new"

///|
#cfg(target="wasm-gc")
fn navigate_event_navigation_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigateEvent" "get_navigationType"

///|
#cfg(target="wasm-gc")
fn navigate_event_navigation_type_ffi(obj : JsValue) -> NavigationType {
  NavigationType::from_unchecked(
    jsvalue_to_string(navigate_event_navigation_type_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn navigate_event_destination_ffi(obj : JsValue) -> NavigationDestination = "webapi_NavigateEvent" "get_destination"

///|
#cfg(target="wasm-gc")
fn navigate_event_can_intercept_ffi(obj : JsValue) -> Bool = "webapi_NavigateEvent" "get_canIntercept"

///|
#cfg(target="wasm-gc")
fn navigate_event_user_initiated_ffi(obj : JsValue) -> Bool = "webapi_NavigateEvent" "get_userInitiated"

///|
#cfg(target="wasm-gc")
fn navigate_event_hash_change_ffi(obj : JsValue) -> Bool = "webapi_NavigateEvent" "get_hashChange"

///|
#cfg(target="wasm-gc")
fn navigate_event_signal_ffi(obj : JsValue) -> AbortSignal = "webapi_NavigateEvent" "get_signal"

///|
#cfg(target="wasm-gc")
fn navigate_event_form_data_ffi(obj : JsValue) -> FormData = "webapi_NavigateEvent" "get_formData"

///|
#cfg(target="wasm-gc")
fn navigate_event_download_request_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigateEvent" "get_downloadRequest"

///|
#cfg(target="wasm-gc")
fn navigate_event_download_request_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigate_event_download_request_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigate_event_info_ffi(obj : JsValue) -> JsValue = "webapi_NavigateEvent" "get_info"

///|
#cfg(target="wasm-gc")
fn navigate_event_has_ua_visual_transition_ffi(obj : JsValue) -> Bool = "webapi_NavigateEvent" "get_hasUAVisualTransition"

///|
#cfg(target="wasm-gc")
fn navigate_event_source_element_ffi(obj : JsValue) -> Element = "webapi_NavigateEvent" "get_sourceElement"

///|
#cfg(target="wasm-gc")
fn navigate_event_intercept_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_NavigateEvent" "intercept"

///|
#cfg(target="wasm-gc")
fn navigate_event_scroll_ffi(obj : JsValue) -> Unit = "webapi_NavigateEvent" "scroll"
