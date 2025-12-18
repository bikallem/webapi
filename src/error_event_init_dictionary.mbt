// Auto-generated MoonBit bindings for ErrorEventInit dictionary
// Do not edit manually

#external
pub type ErrorEventInit

pub impl TJsValue for ErrorEventInit with to_js(self: ErrorEventInit) -> JsValue = "%identity"


fn error_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, message : JsValue, filename : JsValue, lineno : JsValue, colno : JsValue, error : JsValue) -> ErrorEventInit = "webapi_ErrorEventInit" "new"


pub fn ErrorEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  message? : String? : String = "",
  filename? : String? : String = "",
  lineno? : UInt? : UInt = 0,
  colno? : UInt? : UInt = 0,
  error? : JsValue) -> ErrorEventInit {
    error_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(message)
     ,TJsValue::to_js(filename)
     ,TJsValue::to_js(lineno)
     ,TJsValue::to_js(colno)
     ,opt_to_js(error)
    )
}


pub fn ErrorEventInit::empty() -> ErrorEventInit = "webapi_Dictionary" "empty"