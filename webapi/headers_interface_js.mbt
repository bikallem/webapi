extern "js" fn headers_new_ffi(init: JsValue) -> Headers = "(init) => new Headers(init)"

extern "js" fn headers_append_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.append(name, value)"

extern "js" fn headers_delete_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => obj.delete(name)"

extern "js" fn headers_get_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.get(name)"

extern "js" fn headers_get_set_cookie_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getSetCookie()"

///|
fn headers_get_set_cookie_ffi(obj: JsValue) -> Array[String] {
  headers_get_set_cookie_ffi_js(obj).unsafe_cast()
}

extern "js" fn headers_has_ffi_js(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.has(name)"

///|
fn headers_has_ffi(obj: JsValue, name: JsValue) -> Bool {
  headers_has_ffi_js(obj, name).unsafe_cast()
}

extern "js" fn headers_set_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.set(name, value)"