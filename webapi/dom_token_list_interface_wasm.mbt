///|
fn dom_token_list_length_ffi(obj : JsValue) -> UInt = "webapi_DOMTokenList" "get_length"

///|
fn dom_token_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_DOMTokenList" "item"

///|
fn dom_token_list_contains_ffi(obj : JsValue, token : JsValue) -> Bool = "webapi_DOMTokenList" "contains"

///|
fn dom_token_list_add_ffi(obj : JsValue, tokens : JsValue) -> Unit = "webapi_DOMTokenList" "add"

///|
fn dom_token_list_remove_ffi(obj : JsValue, tokens : JsValue) -> Unit = "webapi_DOMTokenList" "remove"

///|
fn dom_token_list_toggle_ffi(
  obj : JsValue,
  token : JsValue,
  force : JsValue,
) -> Bool = "webapi_DOMTokenList" "toggle"

///|
fn dom_token_list_replace_ffi(
  obj : JsValue,
  token : JsValue,
  new_token : JsValue,
) -> Bool = "webapi_DOMTokenList" "replace"

///|
fn dom_token_list_supports_ffi(obj : JsValue, token : JsValue) -> Bool = "webapi_DOMTokenList" "supports"

///|
fn dom_token_list_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_DOMTokenList" "get_value"

///|
fn dom_token_list_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(dom_token_list_value_ffi_wasm(obj))
}

///|
fn dom_token_list_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_DOMTokenList" "set_value"
