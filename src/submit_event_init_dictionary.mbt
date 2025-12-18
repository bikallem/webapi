// Auto-generated MoonBit bindings for SubmitEventInit dictionary
// Do not edit manually

#external
pub type SubmitEventInit

pub impl TJsValue for SubmitEventInit with to_js(self: SubmitEventInit) -> JsValue = "%identity"


fn submit_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, submitter : JsValue) -> SubmitEventInit = "webapi_SubmitEventInit" "new"


pub fn SubmitEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  submitter? : &THTMLElement? : &THTMLElement = &THTMLElement::null()) -> SubmitEventInit {
    submit_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(submitter)
    )
}


pub fn SubmitEventInit::empty() -> SubmitEventInit = "webapi_Dictionary" "empty"