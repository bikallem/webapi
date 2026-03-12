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
pub fn[T : TNavigateEvent] NavigateEvent::into(self : NavigateEvent) -> T = "%identity"

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
