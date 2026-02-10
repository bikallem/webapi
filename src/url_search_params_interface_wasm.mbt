fn url_search_params_new_ffi(init: JsValue) -> URLSearchParams = "webapi_URLSearchParams" "new"

fn url_search_params_size_ffi(obj: JsValue) -> UInt = "webapi_URLSearchParams" "get_size"

fn url_search_params_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "webapi_URLSearchParams" "append"

fn url_search_params_delete_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "webapi_URLSearchParams" "delete"

fn url_search_params_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_URLSearchParams" "get"

fn url_search_params_get_all_ffi_wasm(obj: JsValue, name: JsValue) -> JsValue = "webapi_URLSearchParams" "getAll"

///|
fn url_search_params_get_all_ffi(obj: JsValue, name: JsValue) -> Array[String] {
  url_search_params_get_all_ffi_wasm(obj, name).unsafe_cast()
}

fn url_search_params_has_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Bool = "webapi_URLSearchParams" "has"

fn url_search_params_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "webapi_URLSearchParams" "set"

fn url_search_params_sort_ffi(obj: JsValue) -> Unit = "webapi_URLSearchParams" "sort"