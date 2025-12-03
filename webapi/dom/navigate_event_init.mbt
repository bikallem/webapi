// Auto-generated MoonBit bindings for NavigateEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary NavigateEventInit : EventInit {
//   NavigationType navigationType = "push";
//   required NavigationDestination destination;
//   boolean canIntercept = false;
//   boolean userInitiated = false;
//   boolean hashChange = false;
//   required AbortSignal signal;
//   FormData? formData = null;
//   DOMString? downloadRequest = null;
//   any info;
//   boolean hasUAVisualTransition = false;
//   Element? sourceElement = null;
// };

///|
#external
pub type NavigateEventInit

///|
pub impl TJsValue for NavigateEventInit with to_js(self : NavigateEventInit) -> JsValue = "%identity"

///|
fn navigate_event_init_ffi(navigation_type : JsValue, destination : JsValue, can_intercept : JsValue, user_initiated : JsValue, hash_change : JsValue, signal : JsValue, form_data : JsValue, download_request : JsValue, info : JsValue, has_ua_visual_transition : JsValue, source_element : JsValue) -> NavigateEventInit = "webapi_NavigateEventInit" "new"

///|
pub fn NavigateEventInit::new(
  navigation_type? : JsValue,
  destination : JsValue,
  can_intercept? : Bool = false,
  user_initiated? : Bool = false,
  hash_change? : Bool = false,
  signal : AbortSignal,
  form_data? : JsValue,
  download_request? : String = JsValue::null(),
  info? : JsValue,
  has_ua_visual_transition? : Bool = false,
  source_element? : Element = JsValue::null()
) -> NavigateEventInit {
  let navigation_type_js = opt_to_js(navigation_type)
  let form_data_js = opt_to_js(form_data)
  let info_js = opt_to_js(info)
  navigate_event_init_ffi(navigation_type_js, destination, TJsValue::to_js(can_intercept), TJsValue::to_js(user_initiated), TJsValue::to_js(hash_change), TJsValue::to_js(signal), form_data_js, TJsValue::to_js(download_request), info_js, TJsValue::to_js(has_ua_visual_transition), TJsValue::to_js(source_element))
}

///|
pub fn NavigateEventInit::empty() -> NavigateEventInit = "webapi_Dictionary" "empty"