fn underlying_sink_ffi(start: JsValue, write: JsValue, close: JsValue, abort: JsValue, type_: JsValue) -> UnderlyingSink = "webapi_UnderlyingSink" "new"

fn underlying_sink_empty_ffi() -> UnderlyingSink = "webapi_Dictionary" "empty"

fn underlying_sink_get_start_ffi(obj: JsValue) -> JsValue = "webapi_UnderlyingSink" "get_start"

fn underlying_sink_get_write_ffi(obj: JsValue) -> JsValue = "webapi_UnderlyingSink" "get_write"

fn underlying_sink_get_close_ffi(obj: JsValue) -> JsValue = "webapi_UnderlyingSink" "get_close"

fn underlying_sink_get_abort_ffi(obj: JsValue) -> JsValue = "webapi_UnderlyingSink" "get_abort"

fn underlying_sink_get_type_ffi(obj: JsValue) -> JsValue = "webapi_UnderlyingSink" "get_type"