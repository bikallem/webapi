// Do not edit. This file is generated.
// MoonBit type: RegistrationOptions
// Specifications: service-workers.idl

///|
/// [RegistrationOptions](https://developer.mozilla.org/en-US/docs/Web/API/RegistrationOptions)
#external
pub type RegistrationOptions

///|
pub impl TJsValue for RegistrationOptions with to_js(self : RegistrationOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for RegistrationOptions with from_js_any(value : JsAny) -> RegistrationOptions = "%identity"

///|
pub fn RegistrationOptions::new(
  scope? : String,
  type_? : WorkerType,
  update_via_cache? : ServiceWorkerUpdateViaCache,
) -> RegistrationOptions {
  registration_options_ffi(
    opt_to_js(scope),
    opt_to_js(type_),
    opt_to_js(update_via_cache),
  )
}

///|
pub fn RegistrationOptions::empty() -> RegistrationOptions {
  registration_options_empty_ffi()
}

///|
pub fn RegistrationOptions::scope(self : RegistrationOptions) -> String? {
  registration_options_get_scope_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn RegistrationOptions::type_(self : RegistrationOptions) -> WorkerType? {
  registration_options_get_type_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn RegistrationOptions::update_via_cache(
  self : RegistrationOptions,
) -> ServiceWorkerUpdateViaCache? {
  registration_options_get_update_via_cache_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn registration_options_ffi(
  scope : JsValue,
  type_ : JsValue,
  update_via_cache : JsValue,
) -> RegistrationOptions =
  #|(scope, type, updateViaCache) => {
  #|  const obj = {};
  #|  if (scope !== undefined) obj.scope = scope;
  #|  if (type !== undefined) obj.type = type;
  #|  if (updateViaCache !== undefined) obj.updateViaCache = updateViaCache;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn registration_options_empty_ffi() -> RegistrationOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn registration_options_get_scope_ffi(obj : JsValue) -> JsValue = "(obj) => obj.scope"

///|
#cfg(target="js")
extern "js" fn registration_options_get_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
extern "js" fn registration_options_get_update_via_cache_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.updateViaCache"

///|
#cfg(target="wasm-gc")
fn registration_options_ffi(
  scope : JsValue,
  type_ : JsValue,
  update_via_cache : JsValue,
) -> RegistrationOptions = "webapi_RegistrationOptions" "new"

///|
#cfg(target="wasm-gc")
fn registration_options_empty_ffi() -> RegistrationOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn registration_options_get_scope_ffi(obj : JsValue) -> JsValue = "webapi_RegistrationOptions" "get_scope"

///|
#cfg(target="wasm-gc")
fn registration_options_get_type_ffi(obj : JsValue) -> JsValue = "webapi_RegistrationOptions" "get_type"

///|
#cfg(target="wasm-gc")
fn registration_options_get_update_via_cache_ffi(obj : JsValue) -> JsValue = "webapi_RegistrationOptions" "get_updateViaCache"
