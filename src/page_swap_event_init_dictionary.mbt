// Auto-generated MoonBit bindings for PageSwapEventInit dictionary
// Do not edit manually

#external
pub type PageSwapEventInit

pub impl TJsValue for PageSwapEventInit with to_js(self: PageSwapEventInit) -> JsValue = "%identity"


fn page_swap_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, activation : JsValue, view_transition : JsValue) -> PageSwapEventInit = "webapi_PageSwapEventInit" "new"


pub fn PageSwapEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  activation? : NavigationActivation? : NavigationActivation = NavigationActivation::null(),
  view_transition? : ViewTransition? : ViewTransition = ViewTransition::null()) -> PageSwapEventInit {
    page_swap_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(activation)
     ,TJsValue::to_js(view_transition)
    )
}


pub fn PageSwapEventInit::empty() -> PageSwapEventInit = "webapi_Dictionary" "empty"