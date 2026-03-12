// Do not edit. This file is generated.
// MoonBit type: Worklet
// Specifications: html.idl

///|
/// [Worklet](https://developer.mozilla.org/en-US/docs/Web/API/Worklet)
#external
pub type Worklet

///|
pub impl TJsValue for Worklet with to_js(self : Worklet) -> JsValue = "%identity"

///|
pub impl FromJsAny for Worklet with from_js_any(value : JsAny) -> Worklet = "%identity"

///|
pub fn[T : TWorklet] Worklet::into(self : Worklet) -> T = "%identity"

///|
pub impl TWorklet for Worklet

///|
/// [Worklet](https://developer.mozilla.org/en-US/docs/Web/API/Worklet) interface.
pub trait TWorklet: TJsValue {
  add_module(self : Self, module_url : String, options? : WorkletOptions) -> JsPromise[
    JsValue,
  ] = _
}

///|
/// [Worklet.addModule](https://developer.mozilla.org/en-US/docs/Web/API/Worklet/addModule)
impl TWorklet with add_module(
  self : Self,
  module_url : String,
  options? : WorkletOptions,
) -> JsPromise[JsValue] {
  worklet_add_module_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(module_url),
    opt_to_js(options),
  )
}

///|
#cfg(target="js")
extern "js" fn worklet_add_module_ffi_js(
  obj : JsValue,
  module_url : JsValue,
  options : JsValue,
) -> JsValue = "(obj, module_url, options) => obj.addModule(module_url, options)"

///|
#cfg(target="js")
fn worklet_add_module_ffi(
  obj : JsValue,
  module_url : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  worklet_add_module_ffi_js(obj, module_url, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn worklet_add_module_ffi_wasm(
  obj : JsValue,
  module_url : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Worklet" "addModule"

///|
#cfg(target="wasm-gc")
fn worklet_add_module_ffi(
  obj : JsValue,
  module_url : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  worklet_add_module_ffi_wasm(obj, module_url, options).unsafe_cast()
}
