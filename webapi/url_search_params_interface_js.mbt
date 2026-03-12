extern "js" fn url_search_params_new_ffi(init: JsValue) -> URLSearchParams = "(init) => new URLSearchParams(init)"

extern "js" fn url_search_params_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
fn url_search_params_size_ffi(obj: JsValue) -> UInt {
  url_search_params_size_ffi_js(obj).unsafe_cast()
}

extern "js" fn url_search_params_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.append(name, value)"

extern "js" fn url_search_params_delete_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.delete(name, value)"

extern "js" fn url_search_params_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.get(name)"

extern "js" fn url_search_params_get_all_ffi_js(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.getAll(name)"

///|
fn url_search_params_get_all_ffi(obj: JsValue, name: JsValue) -> Array[String] {
  url_search_params_get_all_ffi_js(obj, name).unsafe_cast()
}

extern "js" fn url_search_params_has_ffi_js(obj: JsValue, name: JsValue, value: JsValue) -> JsValue = "(obj, name, value) => obj.has(name, value)"

///|
fn url_search_params_has_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Bool {
  url_search_params_has_ffi_js(obj, name, value).unsafe_cast()
}

extern "js" fn url_search_params_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.set(name, value)"

extern "js" fn url_search_params_sort_ffi(obj: JsValue) -> Unit = "(obj) => obj.sort()"