///|
fn form_data_new_ffi(form : JsValue, submitter : JsValue) -> FormData = "webapi_FormData" "new"

///|
fn form_data_append_ffi(obj : JsValue, name : JsValue, value : JsValue) -> Unit = "webapi_FormData" "append"

///|
fn form_data_append_2_ffi(
  obj : JsValue,
  name : JsValue,
  blob_value : JsValue,
  filename : JsValue,
) -> Unit = "webapi_FormData" "append_2"

///|
fn form_data_delete_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_FormData" "delete"

///|
fn form_data_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_FormData" "get"

///|
fn form_data_get_all_ffi_wasm(obj : JsValue, name : JsValue) -> JsValue = "webapi_FormData" "getAll"

///|
fn form_data_get_all_ffi(
  obj : JsValue,
  name : JsValue,
) -> Array[FormDataEntryValue] {
  jsvalue_to_array(form_data_get_all_ffi_wasm(obj, name), JsValue::unsafe_cast)
}

///|
fn form_data_has_ffi(obj : JsValue, name : JsValue) -> Bool = "webapi_FormData" "has"

///|
fn form_data_set_ffi(obj : JsValue, name : JsValue, value : JsValue) -> Unit = "webapi_FormData" "set"

///|
fn form_data_set_2_ffi(
  obj : JsValue,
  name : JsValue,
  blob_value : JsValue,
  filename : JsValue,
) -> Unit = "webapi_FormData" "set_2"
