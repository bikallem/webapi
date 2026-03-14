// Do not edit. This file is generated.
// MoonBit type: Console
// Specifications: console.idl

/// [Console](https://developer.mozilla.org/en-US/docs/Web/API/Console)
#external
pub type Console

pub impl TJsValue for Console with to_js(self: Console) -> JsValue = "%identity"

pub impl FromJsAny for Console with from_js_any(value : JsAny) -> Console = "%identity"

/// [Console.assert](https://developer.mozilla.org/en-US/docs/Web/API/Console/assert)
pub fn Console::assert_(condition? : Bool, 
data : Array[&TJsValue]) -> Unit {
  console_assert_ffi(opt_to_js(condition), TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.clear](https://developer.mozilla.org/en-US/docs/Web/API/Console/clear)
pub fn Console::clear() -> Unit {
  console_clear_ffi()
}

/// [Console.debug](https://developer.mozilla.org/en-US/docs/Web/API/Console/debug)
pub fn Console::debug(data : Array[&TJsValue]) -> Unit {
  console_debug_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.error](https://developer.mozilla.org/en-US/docs/Web/API/Console/error)
pub fn Console::error(data : Array[&TJsValue]) -> Unit {
  console_error_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.info](https://developer.mozilla.org/en-US/docs/Web/API/Console/info)
pub fn Console::info(data : Array[&TJsValue]) -> Unit {
  console_info_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.log](https://developer.mozilla.org/en-US/docs/Web/API/Console/log)
pub fn Console::log(data : Array[&TJsValue]) -> Unit {
  console_log_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.table](https://developer.mozilla.org/en-US/docs/Web/API/Console/table)
pub fn Console::table(tabular_data? : JsValue, 
properties? : Array[String]) -> Unit {
  console_table_ffi(opt_to_js(tabular_data), opt_to_js(properties))
}

/// [Console.trace](https://developer.mozilla.org/en-US/docs/Web/API/Console/trace)
pub fn Console::trace(data : Array[&TJsValue]) -> Unit {
  console_trace_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.warn](https://developer.mozilla.org/en-US/docs/Web/API/Console/warn)
pub fn Console::warn(data : Array[&TJsValue]) -> Unit {
  console_warn_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.dir](https://developer.mozilla.org/en-US/docs/Web/API/Console/dir)
pub fn Console::dir(item? : JsValue, 
options? : JsValue) -> Unit {
  console_dir_ffi(opt_to_js(item), opt_to_js(options))
}

/// [Console.dirxml](https://developer.mozilla.org/en-US/docs/Web/API/Console/dirxml)
pub fn Console::dirxml(data : Array[&TJsValue]) -> Unit {
  console_dirxml_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.count](https://developer.mozilla.org/en-US/docs/Web/API/Console/count)
pub fn Console::count(label? : String) -> Unit {
  console_count_ffi(opt_to_js(label))
}

/// [Console.countReset](https://developer.mozilla.org/en-US/docs/Web/API/Console/countReset)
pub fn Console::count_reset(label? : String) -> Unit {
  console_count_reset_ffi(opt_to_js(label))
}

/// [Console.group](https://developer.mozilla.org/en-US/docs/Web/API/Console/group)
pub fn Console::group(data : Array[&TJsValue]) -> Unit {
  console_group_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.groupCollapsed](https://developer.mozilla.org/en-US/docs/Web/API/Console/groupCollapsed)
pub fn Console::group_collapsed(data : Array[&TJsValue]) -> Unit {
  console_group_collapsed_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.groupEnd](https://developer.mozilla.org/en-US/docs/Web/API/Console/groupEnd)
pub fn Console::group_end() -> Unit {
  console_group_end_ffi()
}

/// [Console.time](https://developer.mozilla.org/en-US/docs/Web/API/Console/time)
pub fn Console::time(label? : String) -> Unit {
  console_time_ffi(opt_to_js(label))
}

/// [Console.timeLog](https://developer.mozilla.org/en-US/docs/Web/API/Console/timeLog)
pub fn Console::time_log(label? : String, 
data : Array[&TJsValue]) -> Unit {
  console_time_log_ffi(opt_to_js(label), TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Console.timeEnd](https://developer.mozilla.org/en-US/docs/Web/API/Console/timeEnd)
pub fn Console::time_end(label? : String) -> Unit {
  console_time_end_ffi(opt_to_js(label))
}

#cfg(target="js")
extern "js" fn console_assert_ffi(condition: JsValue, data: JsValue) -> Unit = "(condition, data) => console.assert(condition, ...data)"

#cfg(target="js")
extern "js" fn console_clear_ffi() -> Unit = "() => console.clear()"

#cfg(target="js")
extern "js" fn console_debug_ffi(data: JsValue) -> Unit = "(data) => console.debug(...data)"

#cfg(target="js")
extern "js" fn console_error_ffi(data: JsValue) -> Unit = "(data) => console.error(...data)"

#cfg(target="js")
extern "js" fn console_info_ffi(data: JsValue) -> Unit = "(data) => console.info(...data)"

#cfg(target="js")
extern "js" fn console_log_ffi(data: JsValue) -> Unit = "(data) => console.log(...data)"

#cfg(target="js")
extern "js" fn console_table_ffi(tabular_data: JsValue, properties: JsValue) -> Unit = "(tabular_data, properties) => console.table(tabular_data, properties)"

#cfg(target="js")
extern "js" fn console_trace_ffi(data: JsValue) -> Unit = "(data) => console.trace(...data)"

#cfg(target="js")
extern "js" fn console_warn_ffi(data: JsValue) -> Unit = "(data) => console.warn(...data)"

#cfg(target="js")
extern "js" fn console_dir_ffi(item: JsValue, options: JsValue) -> Unit = "(item, options) => console.dir(item, options)"

#cfg(target="js")
extern "js" fn console_dirxml_ffi(data: JsValue) -> Unit = "(data) => console.dirxml(...data)"

#cfg(target="js")
extern "js" fn console_count_ffi(label: JsValue) -> Unit = "(label) => console.count(label)"

#cfg(target="js")
extern "js" fn console_count_reset_ffi(label: JsValue) -> Unit = "(label) => console.countReset(label)"

#cfg(target="js")
extern "js" fn console_group_ffi(data: JsValue) -> Unit = "(data) => console.group(...data)"

#cfg(target="js")
extern "js" fn console_group_collapsed_ffi(data: JsValue) -> Unit = "(data) => console.groupCollapsed(...data)"

#cfg(target="js")
extern "js" fn console_group_end_ffi() -> Unit = "() => console.groupEnd()"

#cfg(target="js")
extern "js" fn console_time_ffi(label: JsValue) -> Unit = "(label) => console.time(label)"

#cfg(target="js")
extern "js" fn console_time_log_ffi(label: JsValue, data: JsValue) -> Unit = "(label, data) => console.timeLog(label, ...data)"

#cfg(target="js")
extern "js" fn console_time_end_ffi(label: JsValue) -> Unit = "(label) => console.timeEnd(label)"

#cfg(target="wasm-gc")
fn console_assert_ffi(condition: JsValue, data: JsValue) -> Unit = "webapi_Console" "assert"

#cfg(target="wasm-gc")
fn console_clear_ffi() -> Unit = "webapi_Console" "clear"

#cfg(target="wasm-gc")
fn console_debug_ffi(data: JsValue) -> Unit = "webapi_Console" "debug"

#cfg(target="wasm-gc")
fn console_error_ffi(data: JsValue) -> Unit = "webapi_Console" "error"

#cfg(target="wasm-gc")
fn console_info_ffi(data: JsValue) -> Unit = "webapi_Console" "info"

#cfg(target="wasm-gc")
fn console_log_ffi(data: JsValue) -> Unit = "webapi_Console" "log"

#cfg(target="wasm-gc")
fn console_table_ffi(tabular_data: JsValue, properties: JsValue) -> Unit = "webapi_Console" "table"

#cfg(target="wasm-gc")
fn console_trace_ffi(data: JsValue) -> Unit = "webapi_Console" "trace"

#cfg(target="wasm-gc")
fn console_warn_ffi(data: JsValue) -> Unit = "webapi_Console" "warn"

#cfg(target="wasm-gc")
fn console_dir_ffi(item: JsValue, options: JsValue) -> Unit = "webapi_Console" "dir"

#cfg(target="wasm-gc")
fn console_dirxml_ffi(data: JsValue) -> Unit = "webapi_Console" "dirxml"

#cfg(target="wasm-gc")
fn console_count_ffi(label: JsValue) -> Unit = "webapi_Console" "count"

#cfg(target="wasm-gc")
fn console_count_reset_ffi(label: JsValue) -> Unit = "webapi_Console" "countReset"

#cfg(target="wasm-gc")
fn console_group_ffi(data: JsValue) -> Unit = "webapi_Console" "group"

#cfg(target="wasm-gc")
fn console_group_collapsed_ffi(data: JsValue) -> Unit = "webapi_Console" "groupCollapsed"

#cfg(target="wasm-gc")
fn console_group_end_ffi() -> Unit = "webapi_Console" "groupEnd"

#cfg(target="wasm-gc")
fn console_time_ffi(label: JsValue) -> Unit = "webapi_Console" "time"

#cfg(target="wasm-gc")
fn console_time_log_ffi(label: JsValue, data: JsValue) -> Unit = "webapi_Console" "timeLog"

#cfg(target="wasm-gc")
fn console_time_end_ffi(label: JsValue) -> Unit = "webapi_Console" "timeEnd"