fn worklet_add_module_ffi_wasm(obj: JsValue, module_url: JsValue, options: JsValue) -> JsValue = "webapi_Worklet" "addModule"

///|
fn worklet_add_module_ffi(obj: JsValue, module_url: JsValue, options: JsValue) -> @js_async.Promise[Unit] {
  worklet_add_module_ffi_wasm(obj, module_url, options).unsafe_cast()
}