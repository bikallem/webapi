// Auto-generated MoonBit bindings for PageRevealEventInit dictionary
// Do not edit manually

#external
pub type PageRevealEventInit

pub impl TJsValue for PageRevealEventInit with to_js(self: PageRevealEventInit) -> JsValue = "%identity"


fn page_reveal_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, view_transition : JsValue) -> PageRevealEventInit = "webapi_PageRevealEventInit" "new"


pub fn PageRevealEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  view_transition? : ViewTransition? : ViewTransition = ViewTransition::null()) -> PageRevealEventInit {
    page_reveal_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(view_transition)
    )
}


pub fn PageRevealEventInit::empty() -> PageRevealEventInit = "webapi_Dictionary" "empty"