extern "js" fn registration_options_ffi(scope: JsValue, type_: JsValue, update_via_cache: JsValue) -> RegistrationOptions = 
#|(scope, type, updateViaCache) => {
#|  const obj = {};
#|  if (scope !== undefined) obj.scope = scope;
#|  if (type !== undefined) obj.type = type;
#|  if (updateViaCache !== undefined) obj.updateViaCache = updateViaCache;
#|  return obj;
#|}

extern "js" fn registration_options_empty_ffi() -> RegistrationOptions = "() => {}"

extern "js" fn registration_options_get_scope_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scope"

extern "js" fn registration_options_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn registration_options_get_update_via_cache_ffi(obj: JsValue) -> JsValue = "(obj) => obj.updateViaCache"