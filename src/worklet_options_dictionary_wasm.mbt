///|
fn worklet_options_ffi(credentials : JsValue) -> WorkletOptions = "webapi_WorkletOptions" "new"

///|
fn worklet_options_empty_ffi() -> WorkletOptions = "webapi_Dictionary" "empty"

///|
fn worklet_options_get_credentials_ffi(obj : JsValue) -> JsValue = "webapi_WorkletOptions" "get_credentials"
