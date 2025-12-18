// Auto-generated MoonBit bindings for PopStateEventInit dictionary

// Do not edit manually

///|
#external
pub type PopStateEventInit

///|
pub impl TJsValue for PopStateEventInit with to_js(self : PopStateEventInit) -> JsValue = "%identity"

///|
fn pop_state_event_init_ffi(state : JsValue, has_ua_visual_transition : JsValue) -> PopStateEventInit = "webapi_PopStateEventInit" "new"

///|
pub fn PopStateEventInit::new(
  state? : JsValue,
  has_ua_visual_transition? : Bool = false
) -> PopStateEventInit {
  let state_js = opt_to_js(state)
  pop_state_event_init_ffi(state_js, TJsValue::to_js(has_ua_visual_transition))
}

///|
pub fn PopStateEventInit::empty() -> PopStateEventInit = "webapi_Dictionary" "empty"