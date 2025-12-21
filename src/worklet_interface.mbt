///|
#external
pub type Worklet

///|
pub impl TJsValue for Worklet with to_js(self : Worklet) -> JsValue = "%identity"

///|
pub fn[T : TWorklet] Worklet::into(self : Worklet) -> T = "%identity"

///|
pub impl TWorklet for Worklet

///|
pub trait TWorklet: TJsValue {
  add_module(self : Self, module_url : String, options? : WorkletOptions) -> JsValue = _
}

///|
extern "js" fn worklet_add_module_ffi(
  obj : JsValue,
  module_url : JsValue,
  options : JsValue,
) -> JsValue = "(obj, module_url, options) => obj.addModule(obj, module_url, options)"

///|
impl TWorklet with add_module(
  self : Self,
  module_url : String,
  options? : WorkletOptions = WorkletOptions::empty(),
) -> JsValue {
  worklet_add_module_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(module_url),
    TJsValue::to_js(options),
  )
}
