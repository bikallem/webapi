///|
extern "js" fn idb_key_range_lower_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lower"

///|
fn idb_key_range_lower_ffi(obj : JsValue) -> JsValue {
  idb_key_range_lower_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_key_range_upper_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.upper"

///|
fn idb_key_range_upper_ffi(obj : JsValue) -> JsValue {
  idb_key_range_upper_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_key_range_lower_open_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lowerOpen"

///|
fn idb_key_range_lower_open_ffi(obj : JsValue) -> Bool {
  idb_key_range_lower_open_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_key_range_upper_open_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.upperOpen"

///|
fn idb_key_range_upper_open_ffi(obj : JsValue) -> Bool {
  idb_key_range_upper_open_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_key_range_only_ffi_js(value : JsValue) -> JsValue = "(value) => IDBKeyRange.only(value)"

///|
fn idb_key_range_only_ffi(value : JsValue) -> IDBKeyRange {
  idb_key_range_only_ffi_js(value).unsafe_cast()
}

///|
extern "js" fn idb_key_range_lower_bound_ffi_js(
  lower : JsValue,
  open : JsValue,
) -> JsValue = "(lower, open) => IDBKeyRange.lowerBound(lower, open)"

///|
fn idb_key_range_lower_bound_ffi(
  lower : JsValue,
  open : JsValue,
) -> IDBKeyRange {
  idb_key_range_lower_bound_ffi_js(lower, open).unsafe_cast()
}

///|
extern "js" fn idb_key_range_upper_bound_ffi_js(
  upper : JsValue,
  open : JsValue,
) -> JsValue = "(upper, open) => IDBKeyRange.upperBound(upper, open)"

///|
fn idb_key_range_upper_bound_ffi(
  upper : JsValue,
  open : JsValue,
) -> IDBKeyRange {
  idb_key_range_upper_bound_ffi_js(upper, open).unsafe_cast()
}

///|
extern "js" fn idb_key_range_bound_ffi_js(
  lower : JsValue,
  upper : JsValue,
  lower_open : JsValue,
  upper_open : JsValue,
) -> JsValue = "(lower, upper, lower_open, upper_open) => IDBKeyRange.bound(lower, upper, lower_open, upper_open)"

///|
fn idb_key_range_bound_ffi(
  lower : JsValue,
  upper : JsValue,
  lower_open : JsValue,
  upper_open : JsValue,
) -> IDBKeyRange {
  idb_key_range_bound_ffi_js(lower, upper, lower_open, upper_open).unsafe_cast()
}

///|
extern "js" fn idb_key_range_includes_ffi_js(
  obj : JsValue,
  key : JsValue,
) -> JsValue = "(obj, key) => obj.includes(key)"

///|
fn idb_key_range_includes_ffi(obj : JsValue, key : JsValue) -> Bool {
  idb_key_range_includes_ffi_js(obj, key).unsafe_cast()
}
