// Auto-generated MoonBit bindings for ErrorEventInit dictionary

// Do not edit manually

///|
#external
pub type ErrorEventInit

///|
pub impl TJsValue for ErrorEventInit with to_js(self : ErrorEventInit) -> JsValue = "%identity"

///|
fn error_event_init_ffi(
  message : JsValue,
  filename : JsValue,
  lineno : JsValue,
  colno : JsValue,
  error : JsValue,
) -> ErrorEventInit = "webapi_ErrorEventInit" "new"

///|
pub fn ErrorEventInit::new(
  message? : String = "",
  filename? : String = "",
  lineno? : UInt = 0,
  colno? : UInt = 0,
  error? : JsValue,
) -> ErrorEventInit {
  let error_js = opt_to_js(error)
  error_event_init_ffi(
    TJsValue::to_js(message),
    TJsValue::to_js(filename),
    TJsValue::to_js(lineno),
    TJsValue::to_js(colno),
    error_js,
  )
}

///|
pub fn ErrorEventInit::empty() -> ErrorEventInit = "webapi_Dictionary" "empty"
