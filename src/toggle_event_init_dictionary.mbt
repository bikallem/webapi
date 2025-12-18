// Auto-generated MoonBit bindings for ToggleEventInit dictionary
// Do not edit manually

#external
pub type ToggleEventInit

pub impl TJsValue for ToggleEventInit with to_js(self: ToggleEventInit) -> JsValue = "%identity"


fn toggle_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, old_state : JsValue, new_state : JsValue, source : JsValue) -> ToggleEventInit = "webapi_ToggleEventInit" "new"


pub fn ToggleEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  old_state? : String? : String = "",
  new_state? : String? : String = "",
  source? : &TElement? : &TElement = &TElement::null()) -> ToggleEventInit {
    toggle_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(old_state)
     ,TJsValue::to_js(new_state)
     ,TJsValue::to_js(source)
    )
}


pub fn ToggleEventInit::empty() -> ToggleEventInit = "webapi_Dictionary" "empty"