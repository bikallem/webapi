fn html_script_element_new_ffi() -> HTMLScriptElement = "webapi_HTMLScriptElement" "new"

fn html_script_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_type"

///|
fn html_script_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_type_ffi_wasm(obj))
}

fn html_script_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_type"

fn html_script_element_src_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_src"

///|
fn html_script_element_src_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_src_ffi_wasm(obj))
}

fn html_script_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_src"

fn html_script_element_no_module_ffi(obj: JsValue) -> Bool = "webapi_HTMLScriptElement" "get_noModule"

fn html_script_element_set_no_module_ffi(obj: JsValue, no_module: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_noModule"

fn html_script_element_async_ffi(obj: JsValue) -> Bool = "webapi_HTMLScriptElement" "get_async"

fn html_script_element_set_async_ffi(obj: JsValue, async_: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_async"

fn html_script_element_defer_ffi(obj: JsValue) -> Bool = "webapi_HTMLScriptElement" "get_defer"

fn html_script_element_set_defer_ffi(obj: JsValue, defer_: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_defer"

fn html_script_element_blocking_ffi(obj: JsValue) -> DOMTokenList = "webapi_HTMLScriptElement" "get_blocking"

fn html_script_element_cross_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_crossOrigin"

///|
fn html_script_element_cross_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_cross_origin_ffi_wasm(obj))
}

fn html_script_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_crossOrigin"

fn html_script_element_referrer_policy_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_referrerPolicy"

///|
fn html_script_element_referrer_policy_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_referrer_policy_ffi_wasm(obj))
}

fn html_script_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_referrerPolicy"

fn html_script_element_integrity_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_integrity"

///|
fn html_script_element_integrity_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_integrity_ffi_wasm(obj))
}

fn html_script_element_set_integrity_ffi(obj: JsValue, integrity: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_integrity"

fn html_script_element_fetch_priority_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_fetchPriority"

///|
fn html_script_element_fetch_priority_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_fetch_priority_ffi_wasm(obj))
}

fn html_script_element_set_fetch_priority_ffi(obj: JsValue, fetch_priority: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_fetchPriority"

fn html_script_element_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_text"

///|
fn html_script_element_text_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_text_ffi_wasm(obj))
}

fn html_script_element_set_text_ffi(obj: JsValue, text: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_text"

fn html_script_element_supports_ffi(type_: JsValue) -> Bool = "webapi_HTMLScriptElement" "supports"

fn html_script_element_charset_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_charset"

///|
fn html_script_element_charset_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_charset_ffi_wasm(obj))
}

fn html_script_element_set_charset_ffi(obj: JsValue, charset: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_charset"

fn html_script_element_event_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_event"

///|
fn html_script_element_event_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_event_ffi_wasm(obj))
}

fn html_script_element_set_event_ffi(obj: JsValue, event: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_event"

fn html_script_element_html_for_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_htmlFor"

///|
fn html_script_element_html_for_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_script_element_html_for_ffi_wasm(obj))
}

fn html_script_element_set_html_for_ffi(obj: JsValue, html_for: JsValue) -> Unit = "webapi_HTMLScriptElement" "set_htmlFor"