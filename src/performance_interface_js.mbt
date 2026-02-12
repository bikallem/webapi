///|
extern "js" fn performance_now_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.now()"

///|
fn performance_now_ffi(obj : JsValue) -> Double {
  performance_now_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_time_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.timeOrigin"

///|
fn performance_time_origin_ffi(obj : JsValue) -> Double {
  performance_time_origin_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn performance_to_json_ffi(obj : JsValue) -> JsValue {
  performance_to_json_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_get_entries_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getEntries()"

///|
fn performance_get_entries_ffi(obj : JsValue) -> Array[PerformanceEntry] {
  performance_get_entries_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_get_entries_by_type_ffi_js(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, type_) => obj.getEntriesByType(type_)"

///|
fn performance_get_entries_by_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Array[PerformanceEntry] {
  performance_get_entries_by_type_ffi_js(obj, type_).unsafe_cast()
}

///|
extern "js" fn performance_get_entries_by_name_ffi_js(
  obj : JsValue,
  name : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, name, type_) => obj.getEntriesByName(name, type_)"

///|
fn performance_get_entries_by_name_ffi(
  obj : JsValue,
  name : JsValue,
  type_ : JsValue,
) -> Array[PerformanceEntry] {
  performance_get_entries_by_name_ffi_js(obj, name, type_).unsafe_cast()
}
