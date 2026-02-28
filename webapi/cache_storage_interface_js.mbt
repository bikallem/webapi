///|
extern "js" fn cache_storage_match_ffi_js(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsValue = "(obj, request, options) => obj.match(request, options)"

///|
fn cache_storage_match_ffi(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsPromise[&TCacheStorageMatch] {
  cache_storage_match_ffi_js(obj, request, options).unsafe_cast()
}

///|
extern "js" fn cache_storage_has_ffi_js(
  obj : JsValue,
  cache_name : JsValue,
) -> JsValue = "(obj, cache_name) => obj.has(cache_name)"

///|
fn cache_storage_has_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Bool] {
  cache_storage_has_ffi_js(obj, cache_name).unsafe_cast()
}

///|
extern "js" fn cache_storage_open_ffi_js(
  obj : JsValue,
  cache_name : JsValue,
) -> JsValue = "(obj, cache_name) => obj.open(cache_name)"

///|
fn cache_storage_open_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Cache] {
  cache_storage_open_ffi_js(obj, cache_name).unsafe_cast()
}

///|
extern "js" fn cache_storage_delete_ffi_js(
  obj : JsValue,
  cache_name : JsValue,
) -> JsValue = "(obj, cache_name) => obj.delete(cache_name)"

///|
fn cache_storage_delete_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Bool] {
  cache_storage_delete_ffi_js(obj, cache_name).unsafe_cast()
}

///|
extern "js" fn cache_storage_keys_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.keys()"

///|
fn cache_storage_keys_ffi(obj : JsValue) -> JsPromise[Array[String]] {
  cache_storage_keys_ffi_js(obj).unsafe_cast()
}
