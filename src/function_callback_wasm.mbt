pub fn Function::new(f : (JsValue) -> JsValue) -> Function {
  let w : (JsValue) -> JsValue = fn(a0 : JsValue) { TJsValue::to_js(f(a0.unsafe_cast())) }
  function_ffi(w).unsafe_cast()
}

///|
fn function_ffi(f : (JsValue) -> JsValue) -> JsValue = "webapi_Function" "new"