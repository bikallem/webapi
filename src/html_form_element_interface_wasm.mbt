///|
fn html_form_element_new_ffi() -> HTMLFormElement = "webapi_HTMLFormElement" "new"

///|
fn html_form_element_accept_charset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_acceptCharset"

///|
fn html_form_element_accept_charset_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_accept_charset_ffi_wasm(obj))
}

///|
fn html_form_element_set_accept_charset_ffi(
  obj : JsValue,
  accept_charset : JsValue,
) -> Unit = "webapi_HTMLFormElement" "set_acceptCharset"

///|
fn html_form_element_action_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_action"

///|
fn html_form_element_action_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_action_ffi_wasm(obj))
}

///|
fn html_form_element_set_action_ffi(obj : JsValue, action : JsValue) -> Unit = "webapi_HTMLFormElement" "set_action"

///|
fn html_form_element_autocomplete_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_autocomplete"

///|
fn html_form_element_autocomplete_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_autocomplete_ffi_wasm(obj))
}

///|
fn html_form_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "webapi_HTMLFormElement" "set_autocomplete"

///|
fn html_form_element_enctype_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_enctype"

///|
fn html_form_element_enctype_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_enctype_ffi_wasm(obj))
}

///|
fn html_form_element_set_enctype_ffi(obj : JsValue, enctype : JsValue) -> Unit = "webapi_HTMLFormElement" "set_enctype"

///|
fn html_form_element_encoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_encoding"

///|
fn html_form_element_encoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_encoding_ffi_wasm(obj))
}

///|
fn html_form_element_set_encoding_ffi(
  obj : JsValue,
  encoding : JsValue,
) -> Unit = "webapi_HTMLFormElement" "set_encoding"

///|
fn html_form_element_method_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_method"

///|
fn html_form_element_method_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_method_ffi_wasm(obj))
}

///|
fn html_form_element_set_method_ffi(obj : JsValue, method_ : JsValue) -> Unit = "webapi_HTMLFormElement" "set_method"

///|
fn html_form_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_name"

///|
fn html_form_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_name_ffi_wasm(obj))
}

///|
fn html_form_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLFormElement" "set_name"

///|
fn html_form_element_no_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLFormElement" "get_noValidate"

///|
fn html_form_element_set_no_validate_ffi(
  obj : JsValue,
  no_validate : JsValue,
) -> Unit = "webapi_HTMLFormElement" "set_noValidate"

///|
fn html_form_element_target_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_target"

///|
fn html_form_element_target_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_target_ffi_wasm(obj))
}

///|
fn html_form_element_set_target_ffi(obj : JsValue, target : JsValue) -> Unit = "webapi_HTMLFormElement" "set_target"

///|
fn html_form_element_rel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "get_rel"

///|
fn html_form_element_rel_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_form_element_rel_ffi_wasm(obj))
}

///|
fn html_form_element_set_rel_ffi(obj : JsValue, rel : JsValue) -> Unit = "webapi_HTMLFormElement" "set_rel"

///|
fn html_form_element_rel_list_ffi(obj : JsValue) -> DOMTokenList = "webapi_HTMLFormElement" "get_relList"

///|
fn html_form_element_elements_ffi(obj : JsValue) -> HTMLFormControlsCollection = "webapi_HTMLFormElement" "get_elements"

///|
fn html_form_element_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLFormElement" "get_length"

///|
fn html_form_element_submit_ffi(obj : JsValue) -> Unit = "webapi_HTMLFormElement" "submit"

///|
fn html_form_element_request_submit_ffi(
  obj : JsValue,
  submitter : JsValue,
) -> Unit = "webapi_HTMLFormElement" "requestSubmit"

///|
fn html_form_element_reset_ffi(obj : JsValue) -> Unit = "webapi_HTMLFormElement" "reset"

///|
fn html_form_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLFormElement" "checkValidity"

///|
fn html_form_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLFormElement" "reportValidity"
