// Do not edit. This file is generated.
// MoonBit type: NavigateEventInit
// Specifications: dom.idl, html.idl

/// [NavigateEventInit](https://developer.mozilla.org/en-US/docs/Web/API/NavigateEventInit)
#external
pub type NavigateEventInit

pub impl TJsValue for NavigateEventInit with to_js(self: NavigateEventInit) -> JsValue = "%identity"

pub fn NavigateEventInit::new(bubbles? : Bool = false, 
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
source_element? : &TElement = JsValue::null()) -> NavigateEventInit {
  navigate_event_init_ffi(TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(composed), TJsValue::to_js(navigation_type), TJsValue::to_js(destination), TJsValue::to_js(can_intercept), TJsValue::to_js(user_initiated), TJsValue::to_js(hash_change), TJsValue::to_js(signal), TJsValue::to_js(form_data), TJsValue::to_js(download_request), opt_to_js(info), TJsValue::to_js(has_ua_visual_transition), TJsValue::to_js(source_element))
}

pub fn NavigateEventInit::empty() -> NavigateEventInit { navigate_event_init_empty_ffi() }