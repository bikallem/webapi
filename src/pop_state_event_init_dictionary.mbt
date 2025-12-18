// Auto-generated MoonBit bindings for PopStateEventInit dictionary
// Do not edit manually

#external
pub type PopStateEventInit

pub impl TJsValue for PopStateEventInit with to_js(self: PopStateEventInit) -> JsValue = "%identity"


fn pop_state_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, state : JsValue, has_ua_visual_transition : JsValue) -> PopStateEventInit = "webapi_PopStateEventInit" "new"


pub fn PopStateEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  state? : JsValue? : JsValue = JsValue::null(),
  has_ua_visual_transition? : Bool? : Bool = false) -> PopStateEventInit {
    pop_state_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(state)
     ,TJsValue::to_js(has_ua_visual_transition)
    )
}


pub fn PopStateEventInit::empty() -> PopStateEventInit = "webapi_Dictionary" "empty"