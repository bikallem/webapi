///|
extern "js" fn dom_token_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn dom_token_list_length_ffi(obj : JsValue) -> UInt {
  dom_token_list_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_token_list_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.item(index)"

///|
extern "js" fn dom_token_list_contains_ffi_js(
  obj : JsValue,
  token : JsValue,
) -> JsValue = "(obj, token) => obj.contains(token)"

///|
fn dom_token_list_contains_ffi(obj : JsValue, token : JsValue) -> Bool {
  dom_token_list_contains_ffi_js(obj, token).unsafe_cast()
}

///|
extern "js" fn dom_token_list_add_ffi(obj : JsValue, tokens : JsValue) -> Unit = "(obj, tokens) => obj.add(...tokens)"

///|
extern "js" fn dom_token_list_remove_ffi(
  obj : JsValue,
  tokens : JsValue,
) -> Unit = "(obj, tokens) => obj.remove(...tokens)"

///|
extern "js" fn dom_token_list_toggle_ffi_js(
  obj : JsValue,
  token : JsValue,
  force : JsValue,
) -> JsValue = "(obj, token, force) => obj.toggle(token, force)"

///|
fn dom_token_list_toggle_ffi(
  obj : JsValue,
  token : JsValue,
  force : JsValue,
) -> Bool {
  dom_token_list_toggle_ffi_js(obj, token, force).unsafe_cast()
}

///|
extern "js" fn dom_token_list_replace_ffi_js(
  obj : JsValue,
  token : JsValue,
  new_token : JsValue,
) -> JsValue = "(obj, token, new_token) => obj.replace(token, new_token)"

///|
fn dom_token_list_replace_ffi(
  obj : JsValue,
  token : JsValue,
  new_token : JsValue,
) -> Bool {
  dom_token_list_replace_ffi_js(obj, token, new_token).unsafe_cast()
}

///|
extern "js" fn dom_token_list_supports_ffi_js(
  obj : JsValue,
  token : JsValue,
) -> JsValue = "(obj, token) => obj.supports(token)"

///|
fn dom_token_list_supports_ffi(obj : JsValue, token : JsValue) -> Bool {
  dom_token_list_supports_ffi_js(obj, token).unsafe_cast()
}

///|
extern "js" fn dom_token_list_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
fn dom_token_list_value_ffi(obj : JsValue) -> String {
  dom_token_list_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_token_list_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"
