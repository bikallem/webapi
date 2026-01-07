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
extern "js" fn worker_options_ffi(
  name : JsValue,
  type_ : JsValue,
  credentials : JsValue,
) -> WorkerOptions =
  #|(name, type, credentials) => {
  #|  const obj = {};
  #|  if (name !== undefined) obj.name = name;
  #|  if (type !== undefined) obj.type = type;
  #|  if (credentials !== undefined) obj.credentials = credentials;
  #|  return obj;
  #|}

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
extern "js" fn worker_options_empty_ffi() -> WorkerOptions = "() => {}"

///|
pub fn WorkerOptions::empty() -> WorkerOptions {
  worker_options_empty_ffi()
}
