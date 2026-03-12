// Do not edit. This file is generated.
// MoonBit type: IDBGetAllOptions
// Specifications: IndexedDB.idl

///|
/// [IDBGetAllOptions](https://developer.mozilla.org/en-US/docs/Web/API/IDBGetAllOptions)
#external
pub type IDBGetAllOptions

///|
pub impl TJsValue for IDBGetAllOptions with to_js(self : IDBGetAllOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBGetAllOptions with from_js_any(value : JsAny) -> IDBGetAllOptions = "%identity"

///|
pub fn IDBGetAllOptions::new(
  query? : JsValue,
  count? : UInt,
  direction? : IDBCursorDirection,
) -> IDBGetAllOptions {
  idb_get_all_options_ffi(
    opt_to_js(query),
    opt_to_js(count),
    opt_to_js(direction),
  )
}

///|
pub fn IDBGetAllOptions::empty() -> IDBGetAllOptions {
  idb_get_all_options_empty_ffi()
}

///|
pub fn IDBGetAllOptions::query(self : IDBGetAllOptions) -> JsValue? {
  idb_get_all_options_get_query_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn IDBGetAllOptions::count(self : IDBGetAllOptions) -> UInt? {
  idb_get_all_options_get_count_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IDBGetAllOptions::direction(
  self : IDBGetAllOptions,
) -> IDBCursorDirection? {
  idb_get_all_options_get_direction_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn idb_get_all_options_ffi(
  query : JsValue,
  count : JsValue,
  direction : JsValue,
) -> IDBGetAllOptions =
  #|(query, count, direction) => {
  #|  const obj = {};
  #|  if (query !== undefined) obj.query = query;
  #|  if (count !== undefined) obj.count = count;
  #|  if (direction !== undefined) obj.direction = direction;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn idb_get_all_options_empty_ffi() -> IDBGetAllOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn idb_get_all_options_get_query_ffi(obj : JsValue) -> JsValue = "(obj) => obj.query"

///|
#cfg(target="js")
extern "js" fn idb_get_all_options_get_count_ffi(obj : JsValue) -> JsValue = "(obj) => obj.count"

///|
#cfg(target="js")
extern "js" fn idb_get_all_options_get_direction_ffi(obj : JsValue) -> JsValue = "(obj) => obj.direction"

///|
#cfg(target="wasm-gc")
fn idb_get_all_options_ffi(
  query : JsValue,
  count : JsValue,
  direction : JsValue,
) -> IDBGetAllOptions = "webapi_IDBGetAllOptions" "new"

///|
#cfg(target="wasm-gc")
fn idb_get_all_options_empty_ffi() -> IDBGetAllOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn idb_get_all_options_get_query_ffi(obj : JsValue) -> JsValue = "webapi_IDBGetAllOptions" "get_query"

///|
#cfg(target="wasm-gc")
fn idb_get_all_options_get_count_ffi(obj : JsValue) -> JsValue = "webapi_IDBGetAllOptions" "get_count"

///|
#cfg(target="wasm-gc")
fn idb_get_all_options_get_direction_ffi(obj : JsValue) -> JsValue = "webapi_IDBGetAllOptions" "get_direction"
