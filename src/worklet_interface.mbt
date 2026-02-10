// Do not edit. This file is generated.
// MoonBit type: Worklet
// Specifications: html.idl

/// [Worklet](https://developer.mozilla.org/en-US/docs/Web/API/Worklet)
#external
pub type Worklet

pub impl TJsValue for Worklet with to_js(self: Worklet) -> JsValue = "%identity"

pub fn[T: TWorklet] Worklet::into(self : Worklet) -> T = "%identity"

pub impl TWorklet for Worklet

/// [Worklet](https://developer.mozilla.org/en-US/docs/Web/API/Worklet) interface.
pub trait TWorklet: TJsValue {
  add_module(self : Self, module_url : String, options? : WorkletOptions) -> @js_async.Promise[Unit] = _
}

/// [Worklet.addModule](https://developer.mozilla.org/en-US/docs/Web/API/Worklet/addModule)
impl TWorklet with add_module(self : Self, 
module_url : String, 
options? : WorkletOptions = WorkletOptions::empty()) -> @js_async.Promise[Unit] {
  worklet_add_module_ffi(TJsValue::to_js(self), TJsValue::to_js(module_url), TJsValue::to_js(options))
}