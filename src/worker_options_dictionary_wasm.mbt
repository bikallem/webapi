fn worker_options_ffi(name: JsValue, type_: JsValue, credentials: JsValue) -> WorkerOptions = "webapi_WorkerOptions" "new"

fn worker_options_empty_ffi() -> WorkerOptions = "webapi_Dictionary" "empty"