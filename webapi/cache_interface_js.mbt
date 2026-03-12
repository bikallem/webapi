///|
extern "js" fn cache_match_ffi_js(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsValue = "(obj, request, options) => obj.match(request, options)"

///|
fn cache_match_ffi(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsPromise[&TCacheMatch] {
  cache_match_ffi_js(obj, request, options).unsafe_cast()
}

///|
extern "js" fn cache_match_all_ffi_js(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsValue = "(obj, request, options) => obj.matchAll(request, options)"

///|
fn cache_match_all_ffi(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsPromise[Array[Response]] {
  cache_match_all_ffi_js(obj, request, options).unsafe_cast()
}

///|
extern "js" fn cache_add_ffi_js(obj : JsValue, request : JsValue) -> JsValue = "(obj, request) => obj.add(request)"

///|
fn cache_add_ffi(obj : JsValue, request : JsValue) -> JsPromise[JsValue] {
  cache_add_ffi_js(obj, request).unsafe_cast()
}

///|
extern "js" fn cache_add_all_ffi_js(
  obj : JsValue,
  requests : JsValue,
) -> JsValue = "(obj, requests) => obj.addAll(requests)"

///|
fn cache_add_all_ffi(obj : JsValue, requests : JsValue) -> JsPromise[JsValue] {
  cache_add_all_ffi_js(obj, requests).unsafe_cast()
}

///|
extern "js" fn cache_put_ffi_js(
  obj : JsValue,
  request : JsValue,
  response : JsValue,
) -> JsValue = "(obj, request, response) => obj.put(request, response)"

///|
fn cache_put_ffi(
  obj : JsValue,
  request : JsValue,
  response : JsValue,
) -> JsPromise[JsValue] {
  cache_put_ffi_js(obj, request, response).unsafe_cast()
}

///|
extern "js" fn cache_delete_ffi_js(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsValue = "(obj, request, options) => obj.delete(request, options)"

///|
fn cache_delete_ffi(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsPromise[Bool] {
  cache_delete_ffi_js(obj, request, options).unsafe_cast()
}

///|
extern "js" fn cache_keys_ffi_js(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsValue = "(obj, request, options) => obj.keys(request, options)"

///|
fn cache_keys_ffi(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsPromise[Array[Request]] {
  cache_keys_ffi_js(obj, request, options).unsafe_cast()
}
