extern "js" fn console_assert_ffi(condition: JsValue, data: JsValue) -> Unit = "(condition, data) => console.assert(condition, ...data)"

extern "js" fn console_clear_ffi() -> Unit = "() => console.clear()"

extern "js" fn console_debug_ffi(data: JsValue) -> Unit = "(data) => console.debug(...data)"

extern "js" fn console_error_ffi(data: JsValue) -> Unit = "(data) => console.error(...data)"

extern "js" fn console_info_ffi(data: JsValue) -> Unit = "(data) => console.info(...data)"

extern "js" fn console_log_ffi(data: JsValue) -> Unit = "(data) => console.log(...data)"

extern "js" fn console_table_ffi(tabular_data: JsValue, properties: JsValue) -> Unit = "(tabular_data, properties) => console.table(tabular_data, properties)"

extern "js" fn console_trace_ffi(data: JsValue) -> Unit = "(data) => console.trace(...data)"

extern "js" fn console_warn_ffi(data: JsValue) -> Unit = "(data) => console.warn(...data)"

extern "js" fn console_dir_ffi(item: JsValue, options: JsValue) -> Unit = "(item, options) => console.dir(item, options)"

extern "js" fn console_dirxml_ffi(data: JsValue) -> Unit = "(data) => console.dirxml(...data)"

extern "js" fn console_count_ffi(label: JsValue) -> Unit = "(label) => console.count(label)"

extern "js" fn console_count_reset_ffi(label: JsValue) -> Unit = "(label) => console.countReset(label)"

extern "js" fn console_group_ffi(data: JsValue) -> Unit = "(data) => console.group(...data)"

extern "js" fn console_group_collapsed_ffi(data: JsValue) -> Unit = "(data) => console.groupCollapsed(...data)"

extern "js" fn console_group_end_ffi() -> Unit = "() => console.groupEnd()"

extern "js" fn console_time_ffi(label: JsValue) -> Unit = "(label) => console.time(label)"

extern "js" fn console_time_log_ffi(label: JsValue, data: JsValue) -> Unit = "(label, data) => console.timeLog(label, ...data)"

extern "js" fn console_time_end_ffi(label: JsValue) -> Unit = "(label) => console.timeEnd(label)"