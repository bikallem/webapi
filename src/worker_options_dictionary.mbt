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
  name? : String,
  type_? : WorkerType,
  credentials? : RequestCredentials,
) -> WorkerOptions {
  worker_options_ffi(opt_to_js(name), opt_to_js(type_), opt_to_js(credentials))
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

///|
#cfg(target="js")
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
#cfg(target="js")
extern "js" fn worker_options_empty_ffi() -> WorkerOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn worker_options_get_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
extern "js" fn worker_options_get_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
extern "js" fn worker_options_get_credentials_ffi(obj : JsValue) -> JsValue = "(obj) => obj.credentials"

///|
#cfg(target="wasm-gc")
fn worker_options_ffi(
  name : JsValue,
  type_ : JsValue,
  credentials : JsValue,
) -> WorkerOptions = "webapi_WorkerOptions" "new"

///|
#cfg(target="wasm-gc")
fn worker_options_empty_ffi() -> WorkerOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn worker_options_get_name_ffi(obj : JsValue) -> JsValue = "webapi_WorkerOptions" "get_name"

///|
#cfg(target="wasm-gc")
fn worker_options_get_type_ffi(obj : JsValue) -> JsValue = "webapi_WorkerOptions" "get_type"

///|
#cfg(target="wasm-gc")
fn worker_options_get_credentials_ffi(obj : JsValue) -> JsValue = "webapi_WorkerOptions" "get_credentials"
