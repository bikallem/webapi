///|
extern "js" fn worklet_add_module_ffi_js(
  obj : JsValue,
  module_url : JsValue,
  options : JsValue,
) -> JsValue = "(obj, module_url, options) => obj.addModule(module_url, options)"

///|
fn worklet_add_module_ffi(
  obj : JsValue,
  module_url : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  worklet_add_module_ffi_js(obj, module_url, options).unsafe_cast()
}
