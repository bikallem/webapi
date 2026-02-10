///|
pub fn VoidFunction::new(f : () -> Unit) -> VoidFunction {
  void_function_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn void_function_ffi(f : JsValue) -> JsValue = "(f) => f"
