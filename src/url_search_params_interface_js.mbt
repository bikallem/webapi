extern "js" fn url_search_params_new_ffi(init: JsValue) -> URLSearchParams = "(init) => new URLSearchParams(init)"

extern "js" fn url_search_params_size_ffi(obj: JsValue) -> JsValue = "(obj) => obj.size"

extern "js" fn url_search_params_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.append(name, value)"

extern "js" fn url_search_params_delete_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.delete(name, value)"

extern "js" fn url_search_params_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.get(name)"

extern "js" fn url_search_params_get_all_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.getAll(name)"

extern "js" fn url_search_params_has_ffi(obj: JsValue, name: JsValue, value: JsValue) -> JsValue = "(obj, name, value) => obj.has(name, value)"

extern "js" fn url_search_params_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.set(name, value)"

extern "js" fn url_search_params_sort_ffi(obj: JsValue) -> Unit = "(obj) => obj.sort()"