///|
fn console_assert_ffi(condition : JsValue, data : JsValue) -> Unit = "webapi_Console" "assert"

///|
fn console_clear_ffi() -> Unit = "webapi_Console" "clear"

///|
fn console_debug_ffi(data : JsValue) -> Unit = "webapi_Console" "debug"

///|
fn console_error_ffi(data : JsValue) -> Unit = "webapi_Console" "error"

///|
fn console_info_ffi(data : JsValue) -> Unit = "webapi_Console" "info"

///|
fn console_log_ffi(data : JsValue) -> Unit = "webapi_Console" "log"

///|
fn console_table_ffi(tabular_data : JsValue, properties : JsValue) -> Unit = "webapi_Console" "table"

///|
fn console_trace_ffi(data : JsValue) -> Unit = "webapi_Console" "trace"

///|
fn console_warn_ffi(data : JsValue) -> Unit = "webapi_Console" "warn"

///|
fn console_dir_ffi(item : JsValue, options : JsValue) -> Unit = "webapi_Console" "dir"

///|
fn console_dirxml_ffi(data : JsValue) -> Unit = "webapi_Console" "dirxml"

///|
fn console_count_ffi(label : JsValue) -> Unit = "webapi_Console" "count"

///|
fn console_count_reset_ffi(label : JsValue) -> Unit = "webapi_Console" "countReset"

///|
fn console_group_ffi(data : JsValue) -> Unit = "webapi_Console" "group"

///|
fn console_group_collapsed_ffi(data : JsValue) -> Unit = "webapi_Console" "groupCollapsed"

///|
fn console_group_end_ffi() -> Unit = "webapi_Console" "groupEnd"

///|
fn console_time_ffi(label : JsValue) -> Unit = "webapi_Console" "time"

///|
fn console_time_log_ffi(label : JsValue, data : JsValue) -> Unit = "webapi_Console" "timeLog"

///|
fn console_time_end_ffi(label : JsValue) -> Unit = "webapi_Console" "timeEnd"
