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
  type_? : WorkerType = WorkerType::Classic,
  update_via_cache? : ServiceWorkerUpdateViaCache = ServiceWorkerUpdateViaCache::Imports,
) -> RegistrationOptions {
  registration_options_ffi(
    opt_to_js(scope),
    TJsValue::to_js(type_),
    TJsValue::to_js(update_via_cache),
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
