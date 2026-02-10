// Do not edit. This file is generated.
// MoonBit type: WorkerOptions
// Specifications: html.idl

/// [WorkerOptions](https://developer.mozilla.org/en-US/docs/Web/API/WorkerOptions)
#external
pub type WorkerOptions

pub impl TJsValue for WorkerOptions with to_js(self: WorkerOptions) -> JsValue = "%identity"

pub fn WorkerOptions::new(name? : String = "", 
type_? : WorkerType = WorkerType::Classic, 
credentials? : RequestCredentials = RequestCredentials::SameOrigin) -> WorkerOptions {
  worker_options_ffi(TJsValue::to_js(name), TJsValue::to_js(type_), TJsValue::to_js(credentials))
}

pub fn WorkerOptions::empty() -> WorkerOptions { worker_options_empty_ffi() }