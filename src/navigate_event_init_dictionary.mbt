// Auto-generated MoonBit bindings for NavigateEventInit dictionary
// Do not edit manually

#external
pub type NavigateEventInit

pub impl TJsValue for NavigateEventInit with to_js(self: NavigateEventInit) -> JsValue = "%identity"


fn navigate_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, navigation_type : JsValue, destination : JsValue, can_intercept : JsValue, user_initiated : JsValue, hash_change : JsValue, signal : JsValue, form_data : JsValue, download_request : JsValue, info : JsValue, has_u_a_visual_transition : JsValue, source_element : JsValue) -> NavigateEventInit = "webapi_NavigateEventInit" "new"


pub fn NavigateEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  navigation_type? : NavigationType? : NavigationType = "push",
  destination : NavigationDestination,
  can_intercept? : Bool? : Bool = false,
  user_initiated? : Bool? : Bool = false,
  hash_change? : Bool? : Bool = false,
  signal : &TAbortSignal,
  form_data? : FormData? : FormData = FormData::null(),
  download_request? : String? : String = String::null(),
  info? : JsValue,
  has_u_a_visual_transition? : Bool? : Bool = false,
  source_element? : &TElement? : &TElement = &TElement::null()) -> NavigateEventInit {
    navigate_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(navigation_type)
     ,TJsValue::to_js(destination)
     ,TJsValue::to_js(can_intercept)
     ,TJsValue::to_js(user_initiated)
     ,TJsValue::to_js(hash_change)
     ,TJsValue::to_js(signal)
     ,TJsValue::to_js(form_data)
     ,TJsValue::to_js(download_request)
     ,opt_to_js(info)
     ,TJsValue::to_js(has_u_a_visual_transition)
     ,TJsValue::to_js(source_element)
    )
}


pub fn NavigateEventInit::empty() -> NavigateEventInit = "webapi_Dictionary" "empty"