extern "js" fn dom_token_list_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.length"

extern "js" fn dom_token_list_contains_ffi(obj: JsValue, token: JsValue) -> JsValue = "(obj, token) => obj.contains(token)"

extern "js" fn dom_token_list_add_ffi(obj: JsValue, tokens: JsValue) -> Unit = "(obj, tokens) => obj.add(tokens)"

extern "js" fn dom_token_list_remove_ffi(obj: JsValue, tokens: JsValue) -> Unit = "(obj, tokens) => obj.remove(tokens)"

extern "js" fn dom_token_list_toggle_ffi(obj: JsValue, token: JsValue, force: JsValue) -> JsValue = "(obj, token, force) => obj.toggle(token, force)"

extern "js" fn dom_token_list_replace_ffi(obj: JsValue, token: JsValue, new_token: JsValue) -> JsValue = "(obj, token, new_token) => obj.replace(token, new_token)"

extern "js" fn dom_token_list_supports_ffi(obj: JsValue, token: JsValue) -> JsValue = "(obj, token) => obj.supports(token)"

extern "js" fn dom_token_list_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn dom_token_list_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"