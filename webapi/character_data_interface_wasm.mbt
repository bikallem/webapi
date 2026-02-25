///|
fn character_data_data_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CharacterData" "get_data"

///|
fn character_data_data_ffi(obj : JsValue) -> String {
  jsvalue_to_string(character_data_data_ffi_wasm(obj))
}

///|
fn character_data_set_data_ffi(obj : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "set_data"

///|
fn character_data_length_ffi(obj : JsValue) -> UInt = "webapi_CharacterData" "get_length"

///|
fn character_data_substring_data_ffi_wasm(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> JsValue = "webapi_CharacterData" "substringData"

///|
fn character_data_substring_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> String {
  jsvalue_to_string(character_data_substring_data_ffi_wasm(obj, offset, count))
}

///|
fn character_data_append_data_ffi(obj : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "appendData"

///|
fn character_data_insert_data_ffi(
  obj : JsValue,
  offset : JsValue,
  data : JsValue,
) -> Unit = "webapi_CharacterData" "insertData"

///|
fn character_data_delete_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> Unit = "webapi_CharacterData" "deleteData"

///|
fn character_data_replace_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
  data : JsValue,
) -> Unit = "webapi_CharacterData" "replaceData"

///|
fn character_data_previous_element_sibling_ffi(obj : JsValue) -> Element = "webapi_CharacterData" "get_previousElementSibling"

///|
fn character_data_next_element_sibling_ffi(obj : JsValue) -> Element = "webapi_CharacterData" "get_nextElementSibling"

///|
fn character_data_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_CharacterData" "before"

///|
fn character_data_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_CharacterData" "after"

///|
fn character_data_replace_with_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_CharacterData" "replaceWith"

///|
fn character_data_remove_ffi(obj : JsValue) -> Unit = "webapi_CharacterData" "remove"
