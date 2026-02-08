///|
extern "js" fn html_object_element_new_ffi() -> HTMLObjectElement = "() => new HTMLObjectElement()"

///|
extern "js" fn html_object_element_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
extern "js" fn html_object_element_set_data_ffi(
  obj : JsValue,
  data : JsValue,
) -> Unit = "(obj, data) => { obj.data = data; }"

///|
extern "js" fn html_object_element_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn html_object_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn html_object_element_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn html_object_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_object_element_form_ffi(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
extern "js" fn html_object_element_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn html_object_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
extern "js" fn html_object_element_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn html_object_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
extern "js" fn html_object_element_content_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentDocument"

///|
extern "js" fn html_object_element_content_window_ffi(obj : JsValue) -> JsValue = "(obj) => obj.contentWindow"

///|
extern "js" fn html_object_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument()"

///|
extern "js" fn html_object_element_will_validate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
extern "js" fn html_object_element_validity_ffi(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
extern "js" fn html_object_element_validation_message_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
extern "js" fn html_object_element_check_validity_ffi(obj : JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
extern "js" fn html_object_element_report_validity_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
extern "js" fn html_object_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
extern "js" fn html_object_element_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
extern "js" fn html_object_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
extern "js" fn html_object_element_archive_ffi(obj : JsValue) -> JsValue = "(obj) => obj.archive"

///|
extern "js" fn html_object_element_set_archive_ffi(
  obj : JsValue,
  archive : JsValue,
) -> Unit = "(obj, archive) => { obj.archive = archive; }"

///|
extern "js" fn html_object_element_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
extern "js" fn html_object_element_set_code_ffi(
  obj : JsValue,
  code : JsValue,
) -> Unit = "(obj, code) => { obj.code = code; }"

///|
extern "js" fn html_object_element_declare_ffi(obj : JsValue) -> JsValue = "(obj) => obj.declare"

///|
extern "js" fn html_object_element_set_declare_ffi(
  obj : JsValue,
  declare_ : JsValue,
) -> Unit = "(obj, declare) => { obj.declare = declare; }"

///|
extern "js" fn html_object_element_hspace_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hspace"

///|
extern "js" fn html_object_element_set_hspace_ffi(
  obj : JsValue,
  hspace : JsValue,
) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

///|
extern "js" fn html_object_element_standby_ffi(obj : JsValue) -> JsValue = "(obj) => obj.standby"

///|
extern "js" fn html_object_element_set_standby_ffi(
  obj : JsValue,
  standby : JsValue,
) -> Unit = "(obj, standby) => { obj.standby = standby; }"

///|
extern "js" fn html_object_element_vspace_ffi(obj : JsValue) -> JsValue = "(obj) => obj.vspace"

///|
extern "js" fn html_object_element_set_vspace_ffi(
  obj : JsValue,
  vspace : JsValue,
) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

///|
extern "js" fn html_object_element_code_base_ffi(obj : JsValue) -> JsValue = "(obj) => obj.codeBase"

///|
extern "js" fn html_object_element_set_code_base_ffi(
  obj : JsValue,
  code_base : JsValue,
) -> Unit = "(obj, codeBase) => { obj.codeBase = codeBase; }"

///|
extern "js" fn html_object_element_code_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.codeType"

///|
extern "js" fn html_object_element_set_code_type_ffi(
  obj : JsValue,
  code_type : JsValue,
) -> Unit = "(obj, codeType) => { obj.codeType = codeType; }"

///|
extern "js" fn html_object_element_use_map_ffi(obj : JsValue) -> JsValue = "(obj) => obj.useMap"

///|
extern "js" fn html_object_element_set_use_map_ffi(
  obj : JsValue,
  use_map : JsValue,
) -> Unit = "(obj, useMap) => { obj.useMap = useMap; }"

///|
extern "js" fn html_object_element_border_ffi(obj : JsValue) -> JsValue = "(obj) => obj.border"

///|
extern "js" fn html_object_element_set_border_ffi(
  obj : JsValue,
  border : JsValue,
) -> Unit = "(obj, border) => { obj.border = border; }"
