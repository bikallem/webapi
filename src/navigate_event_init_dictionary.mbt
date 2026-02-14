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
  let result = navigate_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigateEventInit::cancelable(self : NavigateEventInit) -> Bool? {
  let result = navigate_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigateEventInit::composed(self : NavigateEventInit) -> Bool? {
  let result = navigate_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigateEventInit::navigation_type(
  self : NavigateEventInit,
) -> NavigationType? {
  let result = navigate_event_init_get_navigation_type_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigateEventInit::destination(
  self : NavigateEventInit,
) -> NavigationDestination {
  navigate_event_init_get_destination_ffi(TJsValue::to_js(self))
}

///|
pub fn NavigateEventInit::can_intercept(self : NavigateEventInit) -> Bool? {
  let result = navigate_event_init_get_can_intercept_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigateEventInit::user_initiated(self : NavigateEventInit) -> Bool? {
  let result = navigate_event_init_get_user_initiated_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigateEventInit::hash_change(self : NavigateEventInit) -> Bool? {
  let result = navigate_event_init_get_hash_change_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigateEventInit::signal(self : NavigateEventInit) -> AbortSignal {
  navigate_event_init_get_signal_ffi(TJsValue::to_js(self))
}

///|
pub fn NavigateEventInit::form_data(self : NavigateEventInit) -> FormData? {
  let result = navigate_event_init_get_form_data_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigateEventInit::download_request(self : NavigateEventInit) -> String? {
  let result = navigate_event_init_get_download_request_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigateEventInit::info(self : NavigateEventInit) -> JsValue? {
  let result = navigate_event_init_get_info_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigateEventInit::has_ua_visual_transition(
  self : NavigateEventInit,
) -> Bool? {
  let result = navigate_event_init_get_has_ua_visual_transition_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigateEventInit::source_element(self : NavigateEventInit) -> Element? {
  let result = navigate_event_init_get_source_element_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
