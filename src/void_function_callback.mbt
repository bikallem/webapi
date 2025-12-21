///|
#external
pub type VoidFunction

///|
pub impl TJsValue for VoidFunction with to_js(self : VoidFunction) -> JsValue = "%identity"

///|
extern "js" fn void_function_ffi(f : () -> Unit) -> VoidFunction = "(f) => f"

///|
pub fn VoidFunction::new(f : () -> Unit) -> VoidFunction {
  void_function_ffi(f)
}
