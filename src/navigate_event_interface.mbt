// Do not edit. This file is generated.
// MoonBit type: NavigateEvent
// Specifications: html.idl

///|
#external
pub type NavigateEvent

///|
pub impl TJsValue for NavigateEvent with to_js(self : NavigateEvent) -> JsValue = "%identity"

///|
pub fn[T : TNavigateEvent] NavigateEvent::into(self : NavigateEvent) -> T = "%identity"

///|
pub impl TNavigateEvent for NavigateEvent

///|
pub impl TEvent for NavigateEvent

///|
extern "js" fn navigate_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NavigateEvent = "(type_, event_init_dict) => new NavigateEvent(type_, event_init_dict)"

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
extern "js" fn navigate_event_navigation_type_ffi(
  obj : JsValue,
) -> NavigationType = "(obj) => obj.navigationType"

///|
impl TNavigateEvent with navigation_type(self : Self) -> NavigationType {
  navigate_event_navigation_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_destination_ffi(
  obj : JsValue,
) -> NavigationDestination = "(obj) => obj.destination"

///|
impl TNavigateEvent with destination(self : Self) -> NavigationDestination {
  navigate_event_destination_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_can_intercept_ffi(obj : JsValue) -> Bool = "(obj) => obj.canIntercept"

///|
impl TNavigateEvent with can_intercept(self : Self) -> Bool {
  navigate_event_can_intercept_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_user_initiated_ffi(obj : JsValue) -> Bool = "(obj) => obj.userInitiated"

///|
impl TNavigateEvent with user_initiated(self : Self) -> Bool {
  navigate_event_user_initiated_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_hash_change_ffi(obj : JsValue) -> Bool = "(obj) => obj.hashChange"

///|
impl TNavigateEvent with hash_change(self : Self) -> Bool {
  navigate_event_hash_change_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_signal_ffi(obj : JsValue) -> AbortSignal = "(obj) => obj.signal"

///|
impl TNavigateEvent with signal(self : Self) -> AbortSignal {
  navigate_event_signal_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_form_data_ffi(obj : JsValue) -> FormData = "(obj) => obj.formData"

///|
impl TNavigateEvent with form_data(self : Self) -> FormData {
  navigate_event_form_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_download_request_ffi(obj : JsValue) -> String = "(obj) => obj.downloadRequest"

///|
impl TNavigateEvent with download_request(self : Self) -> String {
  navigate_event_download_request_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_info_ffi(obj : JsValue) -> JsValue = "(obj) => obj.info"

///|
impl TNavigateEvent with info(self : Self) -> JsValue {
  navigate_event_info_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.hasUAVisualTransition"

///|
impl TNavigateEvent with has_ua_visual_transition(self : Self) -> Bool {
  navigate_event_has_ua_visual_transition_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_source_element_ffi(obj : JsValue) -> Element = "(obj) => obj.sourceElement"

///|
impl TNavigateEvent with source_element(self : Self) -> Element {
  navigate_event_source_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigate_event_intercept_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.intercept(options)"

///|
impl TNavigateEvent with intercept(
  self : Self,
  options? : NavigationInterceptOptions = NavigationInterceptOptions::empty(),
) -> Unit {
  navigate_event_intercept_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn navigate_event_scroll_ffi(obj : JsValue) -> Unit = "(obj) => obj.scroll()"

///|
impl TNavigateEvent with scroll(self : Self) -> Unit {
  navigate_event_scroll_ffi(TJsValue::to_js(self))
}
