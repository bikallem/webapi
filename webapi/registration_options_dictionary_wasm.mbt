fn registration_options_ffi(scope: JsValue, type_: JsValue, update_via_cache: JsValue) -> RegistrationOptions = "webapi_RegistrationOptions" "new"

fn registration_options_empty_ffi() -> RegistrationOptions = "webapi_Dictionary" "empty"

fn registration_options_get_scope_ffi(obj: JsValue) -> JsValue = "webapi_RegistrationOptions" "get_scope"

fn registration_options_get_type_ffi(obj: JsValue) -> JsValue = "webapi_RegistrationOptions" "get_type"

fn registration_options_get_update_via_cache_ffi(obj: JsValue) -> JsValue = "webapi_RegistrationOptions" "get_updateViaCache"