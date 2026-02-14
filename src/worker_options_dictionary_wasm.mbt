///|
fn worker_options_ffi(
  name : JsValue,
  type_ : JsValue,
  credentials : JsValue,
) -> WorkerOptions = "webapi_WorkerOptions" "new"

///|
fn worker_options_empty_ffi() -> WorkerOptions = "webapi_Dictionary" "empty"

///|
fn worker_options_get_name_ffi(obj : JsValue) -> JsValue = "webapi_WorkerOptions" "get_name"

///|
fn worker_options_get_type_ffi(obj : JsValue) -> JsValue = "webapi_WorkerOptions" "get_type"

///|
fn worker_options_get_credentials_ffi(obj : JsValue) -> JsValue = "webapi_WorkerOptions" "get_credentials"
