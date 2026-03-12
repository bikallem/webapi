extern "js" fn html_form_element_new_ffi() -> HTMLFormElement = "() => new HTMLFormElement()"

extern "js" fn html_form_element_accept_charset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.acceptCharset"

///|
fn html_form_element_accept_charset_ffi(obj: JsValue) -> String {
  html_form_element_accept_charset_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_accept_charset_ffi(obj: JsValue, accept_charset: JsValue) -> Unit = "(obj, acceptCharset) => { obj.acceptCharset = acceptCharset; }"

extern "js" fn html_form_element_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.action"

///|
fn html_form_element_action_ffi(obj: JsValue) -> String {
  html_form_element_action_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_action_ffi(obj: JsValue, action: JsValue) -> Unit = "(obj, action) => { obj.action = action; }"

extern "js" fn html_form_element_autocomplete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.autocomplete"

///|
fn html_form_element_autocomplete_ffi(obj: JsValue) -> String {
  html_form_element_autocomplete_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

extern "js" fn html_form_element_enctype_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.enctype"

///|
fn html_form_element_enctype_ffi(obj: JsValue) -> String {
  html_form_element_enctype_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_enctype_ffi(obj: JsValue, enctype: JsValue) -> Unit = "(obj, enctype) => { obj.enctype = enctype; }"

extern "js" fn html_form_element_encoding_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.encoding"

///|
fn html_form_element_encoding_ffi(obj: JsValue) -> String {
  html_form_element_encoding_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_encoding_ffi(obj: JsValue, encoding: JsValue) -> Unit = "(obj, encoding) => { obj.encoding = encoding; }"

extern "js" fn html_form_element_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.method"

///|
fn html_form_element_method_ffi(obj: JsValue) -> String {
  html_form_element_method_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_method_ffi(obj: JsValue, method_: JsValue) -> Unit = "(obj, method) => { obj.method = method; }"

extern "js" fn html_form_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_form_element_name_ffi(obj: JsValue) -> String {
  html_form_element_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_form_element_no_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.noValidate"

///|
fn html_form_element_no_validate_ffi(obj: JsValue) -> Bool {
  html_form_element_no_validate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_no_validate_ffi(obj: JsValue, no_validate: JsValue) -> Unit = "(obj, noValidate) => { obj.noValidate = noValidate; }"

extern "js" fn html_form_element_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
fn html_form_element_target_ffi(obj: JsValue) -> String {
  html_form_element_target_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => { obj.target = target; }"

extern "js" fn html_form_element_rel_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rel"

///|
fn html_form_element_rel_ffi(obj: JsValue) -> String {
  html_form_element_rel_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

extern "js" fn html_form_element_rel_list_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.relList"

///|
fn html_form_element_rel_list_ffi(obj: JsValue) -> DOMTokenList {
  html_form_element_rel_list_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_elements_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.elements"

///|
fn html_form_element_elements_ffi(obj: JsValue) -> HTMLFormControlsCollection {
  html_form_element_elements_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn html_form_element_length_ffi(obj: JsValue) -> UInt {
  html_form_element_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj[index]"

extern "js" fn html_form_element_get_by_name_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj[name]"

extern "js" fn html_form_element_submit_ffi(obj: JsValue) -> Unit = "(obj) => obj.submit()"

extern "js" fn html_form_element_request_submit_ffi(obj: JsValue, submitter: JsValue) -> Unit = "(obj, submitter) => obj.requestSubmit(submitter)"

extern "js" fn html_form_element_reset_ffi(obj: JsValue) -> Unit = "(obj) => obj.reset()"

extern "js" fn html_form_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
fn html_form_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_form_element_check_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_form_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
fn html_form_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_form_element_report_validity_ffi_js(obj).unsafe_cast()
}