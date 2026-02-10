///|
pub fn Function::new(f : (JsValue) -> JsValue) -> Function {
  function_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn function_ffi(f : JsValue) -> JsValue = "(f) => f"
