// Do not edit. This file is generated.
// MoonBit type: WorkerOptions
// Specifications: html.idl

///|
/// [WorkerOptions](https://developer.mozilla.org/en-US/docs/Web/API/WorkerOptions)
#external
pub type WorkerOptions

///|
pub impl TJsValue for WorkerOptions with to_js(self : WorkerOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for WorkerOptions with from_js_any(value : JsAny) -> WorkerOptions = "%identity"

///|
pub fn WorkerOptions::new(
  name? : String = "",
  type_? : WorkerType = WorkerType::Classic,
  credentials? : RequestCredentials = RequestCredentials::SameOrigin,
) -> WorkerOptions {
  worker_options_ffi(
    TJsValue::to_js(name),
    TJsValue::to_js(type_),
    TJsValue::to_js(credentials),
  )
}

///|
pub fn WorkerOptions::empty() -> WorkerOptions {
  worker_options_empty_ffi()
}

///|
pub fn WorkerOptions::name(self : WorkerOptions) -> String? {
  worker_options_get_name_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn WorkerOptions::type_(self : WorkerOptions) -> WorkerType? {
  worker_options_get_type_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn WorkerOptions::credentials(self : WorkerOptions) -> RequestCredentials? {
  worker_options_get_credentials_ffi(TJsValue::to_js(self)).to_option()
}
