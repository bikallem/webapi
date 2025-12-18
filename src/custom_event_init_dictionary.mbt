// Auto-generated MoonBit bindings for CustomEventInit dictionary
// Do not edit manually

#external
pub type CustomEventInit

pub impl TJsValue for CustomEventInit with to_js(self: CustomEventInit) -> JsValue = "%identity"


fn custom_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, detail : JsValue) -> CustomEventInit = "webapi_CustomEventInit" "new"


pub fn CustomEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  detail? : JsValue? : JsValue = JsValue::null()) -> CustomEventInit {
    custom_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(detail)
    )
}


pub fn CustomEventInit::empty() -> CustomEventInit = "webapi_Dictionary" "empty"