pub fn VoidFunction::new(f : () -> Unit) -> VoidFunction {
  let w : () -> Unit = fn() { f() }
  void_function_ffi(w).unsafe_cast()
}

///|
fn void_function_ffi(f : () -> Unit) -> JsValue = "webapi_VoidFunction" "new"