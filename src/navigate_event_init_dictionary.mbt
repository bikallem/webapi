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
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  navigation_type? : NavigationType = NavigationType::Push,
  destination : &TNavigationDestination,
  can_intercept? : Bool = false,
  user_initiated? : Bool = false,
  hash_change? : Bool = false,
  signal : &TAbortSignal,
  form_data? : &TFormData,
  download_request? : String,
  info? : JsValue,
  has_ua_visual_transition? : Bool = false,
  source_element? : &TElement,
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
    opt_to_js(form_data),
    opt_to_js(download_request),
    opt_to_js(info),
    TJsValue::to_js(has_ua_visual_transition),
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
