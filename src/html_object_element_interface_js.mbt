///|
extern "js" fn html_object_element_new_ffi() -> HTMLObjectElement = "() => new HTMLObjectElement()"

///|
extern "js" fn html_object_element_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
fn html_object_element_data_ffi(obj : JsValue) -> String {
  html_object_element_data_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_data_ffi(
  obj : JsValue,
  data : JsValue,
) -> Unit = "(obj, data) => { obj.data = data; }"

///|
extern "js" fn html_object_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_object_element_type_ffi(obj : JsValue) -> String {
  html_object_element_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn html_object_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_object_element_name_ffi(obj : JsValue) -> String {
  html_object_element_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_object_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_object_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_object_element_form_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn html_object_element_width_ffi(obj : JsValue) -> String {
  html_object_element_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
extern "js" fn html_object_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn html_object_element_height_ffi(obj : JsValue) -> String {
  html_object_element_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
extern "js" fn html_object_element_content_document_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentDocument"

///|
fn html_object_element_content_document_ffi(obj : JsValue) -> Document {
  html_object_element_content_document_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_content_window_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentWindow"

///|
fn html_object_element_content_window_ffi(obj : JsValue) -> WindowProxy {
  html_object_element_content_window_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument()"

///|
extern "js" fn html_object_element_will_validate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.willValidate"

///|
fn html_object_element_will_validate_ffi(obj : JsValue) -> Bool {
  html_object_element_will_validate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_validity_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
fn html_object_element_validity_ffi(obj : JsValue) -> ValidityState {
  html_object_element_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_validation_message_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
fn html_object_element_validation_message_ffi(obj : JsValue) -> String {
  html_object_element_validation_message_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_check_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.checkValidity()"

///|
fn html_object_element_check_validity_ffi(obj : JsValue) -> Bool {
  html_object_element_check_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_report_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
fn html_object_element_report_validity_ffi(obj : JsValue) -> Bool {
  html_object_element_report_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
extern "js" fn html_object_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_object_element_align_ffi(obj : JsValue) -> String {
  html_object_element_align_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
extern "js" fn html_object_element_archive_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.archive"

///|
fn html_object_element_archive_ffi(obj : JsValue) -> String {
  html_object_element_archive_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_archive_ffi(
  obj : JsValue,
  archive : JsValue,
) -> Unit = "(obj, archive) => { obj.archive = archive; }"

///|
extern "js" fn html_object_element_code_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
fn html_object_element_code_ffi(obj : JsValue) -> String {
  html_object_element_code_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_code_ffi(
  obj : JsValue,
  code : JsValue,
) -> Unit = "(obj, code) => { obj.code = code; }"

///|
extern "js" fn html_object_element_declare_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.declare"

///|
fn html_object_element_declare_ffi(obj : JsValue) -> Bool {
  html_object_element_declare_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_declare_ffi(
  obj : JsValue,
  declare_ : JsValue,
) -> Unit = "(obj, declare) => { obj.declare = declare; }"

///|
extern "js" fn html_object_element_hspace_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hspace"

///|
fn html_object_element_hspace_ffi(obj : JsValue) -> UInt {
  html_object_element_hspace_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_hspace_ffi(
  obj : JsValue,
  hspace : JsValue,
) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

///|
extern "js" fn html_object_element_standby_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.standby"

///|
fn html_object_element_standby_ffi(obj : JsValue) -> String {
  html_object_element_standby_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_standby_ffi(
  obj : JsValue,
  standby : JsValue,
) -> Unit = "(obj, standby) => { obj.standby = standby; }"

///|
extern "js" fn html_object_element_vspace_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vspace"

///|
fn html_object_element_vspace_ffi(obj : JsValue) -> UInt {
  html_object_element_vspace_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_vspace_ffi(
  obj : JsValue,
  vspace : JsValue,
) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

///|
extern "js" fn html_object_element_code_base_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.codeBase"

///|
fn html_object_element_code_base_ffi(obj : JsValue) -> String {
  html_object_element_code_base_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_code_base_ffi(
  obj : JsValue,
  code_base : JsValue,
) -> Unit = "(obj, codeBase) => { obj.codeBase = codeBase; }"

///|
extern "js" fn html_object_element_code_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.codeType"

///|
fn html_object_element_code_type_ffi(obj : JsValue) -> String {
  html_object_element_code_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_code_type_ffi(
  obj : JsValue,
  code_type : JsValue,
) -> Unit = "(obj, codeType) => { obj.codeType = codeType; }"

///|
extern "js" fn html_object_element_use_map_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.useMap"

///|
fn html_object_element_use_map_ffi(obj : JsValue) -> String {
  html_object_element_use_map_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_use_map_ffi(
  obj : JsValue,
  use_map : JsValue,
) -> Unit = "(obj, useMap) => { obj.useMap = useMap; }"

///|
extern "js" fn html_object_element_border_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.border"

///|
fn html_object_element_border_ffi(obj : JsValue) -> String {
  html_object_element_border_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_object_element_set_border_ffi(
  obj : JsValue,
  border : JsValue,
) -> Unit = "(obj, border) => { obj.border = border; }"
