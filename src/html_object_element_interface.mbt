// Do not edit. This file is generated.
// MoonBit type: HTMLObjectElement
// Specifications: html.idl

///|
#external
pub type HTMLObjectElement

///|
pub impl TJsValue for HTMLObjectElement with to_js(self : HTMLObjectElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLObjectElement] HTMLObjectElement::into(
  self : HTMLObjectElement,
) -> T = "%identity"

///|
pub impl THTMLObjectElement for HTMLObjectElement

///|
pub impl THTMLElement for HTMLObjectElement

///|
pub impl TElement for HTMLObjectElement

///|
pub impl TNode for HTMLObjectElement

///|
pub impl TEventTarget for HTMLObjectElement

///|
extern "js" fn html_object_element_new_ffi() -> HTMLObjectElement = "() => new HTMLObjectElement()"

///|
pub fn HTMLObjectElement::new() -> HTMLObjectElement {
  html_object_element_new_ffi()
}

///|
pub trait THTMLObjectElement: THTMLElement {
  data(self : Self) -> String = _
  set_data(self : Self, data : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
  height(self : Self) -> String = _
  set_height(self : Self, height : String) -> Unit = _
  content_document(self : Self) -> Document = _
  content_window(self : Self) -> WindowProxy = _
  get_svg_document(self : Self) -> Document = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  archive(self : Self) -> String = _
  set_archive(self : Self, archive : String) -> Unit = _
  code(self : Self) -> String = _
  set_code(self : Self, code : String) -> Unit = _
  declare_(self : Self) -> Bool = _
  set_declare_(self : Self, declare_ : Bool) -> Unit = _
  hspace(self : Self) -> UInt = _
  set_hspace(self : Self, hspace : UInt) -> Unit = _
  standby(self : Self) -> String = _
  set_standby(self : Self, standby : String) -> Unit = _
  vspace(self : Self) -> UInt = _
  set_vspace(self : Self, vspace : UInt) -> Unit = _
  code_base(self : Self) -> String = _
  set_code_base(self : Self, code_base : String) -> Unit = _
  code_type(self : Self) -> String = _
  set_code_type(self : Self, code_type : String) -> Unit = _
  use_map(self : Self) -> String = _
  set_use_map(self : Self, use_map : String) -> Unit = _
  border(self : Self) -> String = _
  set_border(self : Self, border : String) -> Unit = _
}

///|
extern "js" fn html_object_element_data_ffi(obj : JsValue) -> String = "(obj) => obj.data"

///|
impl THTMLObjectElement with data(self : Self) -> String {
  html_object_element_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_data_ffi(
  obj : JsValue,
  data : JsValue,
) -> Unit = "(obj, data) => { obj.data = data; }"

///|
impl THTMLObjectElement with set_data(self : Self, data : String) -> Unit {
  html_object_element_set_data_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn html_object_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLObjectElement with type_(self : Self) -> String {
  html_object_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
impl THTMLObjectElement with set_type_(self : Self, type_ : String) -> Unit {
  html_object_element_set_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
extern "js" fn html_object_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLObjectElement with name(self : Self) -> String {
  html_object_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLObjectElement with set_name(self : Self, name : String) -> Unit {
  html_object_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_object_element_form_ffi(obj : JsValue) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLObjectElement with form(self : Self) -> HTMLFormElement {
  html_object_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_width_ffi(obj : JsValue) -> String = "(obj) => obj.width"

///|
impl THTMLObjectElement with width(self : Self) -> String {
  html_object_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLObjectElement with set_width(self : Self, width : String) -> Unit {
  html_object_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_object_element_height_ffi(obj : JsValue) -> String = "(obj) => obj.height"

///|
impl THTMLObjectElement with height(self : Self) -> String {
  html_object_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLObjectElement with set_height(self : Self, height : String) -> Unit {
  html_object_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn html_object_element_content_document_ffi(
  obj : JsValue,
) -> Document = "(obj) => obj.contentDocument"

///|
impl THTMLObjectElement with content_document(self : Self) -> Document {
  html_object_element_content_document_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_content_window_ffi(
  obj : JsValue,
) -> WindowProxy = "(obj) => obj.contentWindow"

///|
impl THTMLObjectElement with content_window(self : Self) -> WindowProxy {
  html_object_element_content_window_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_get_svg_document_ffi(
  obj : JsValue,
) -> Document = "(obj) => obj.getSVGDocument(obj)"

///|
impl THTMLObjectElement with get_svg_document(self : Self) -> Document {
  html_object_element_get_svg_document_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_will_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.willValidate"

///|
impl THTMLObjectElement with will_validate(self : Self) -> Bool {
  html_object_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_validity_ffi(obj : JsValue) -> ValidityState = "(obj) => obj.validity"

///|
impl THTMLObjectElement with validity(self : Self) -> ValidityState {
  html_object_element_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_validation_message_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.validationMessage"

///|
impl THTMLObjectElement with validation_message(self : Self) -> String {
  html_object_element_validation_message_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLObjectElement with check_validity(self : Self) -> Bool {
  html_object_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLObjectElement with report_validity(self : Self) -> Bool {
  html_object_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLObjectElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_object_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
extern "js" fn html_object_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLObjectElement with align(self : Self) -> String {
  html_object_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLObjectElement with set_align(self : Self, align : String) -> Unit {
  html_object_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_object_element_archive_ffi(obj : JsValue) -> String = "(obj) => obj.archive"

///|
impl THTMLObjectElement with archive(self : Self) -> String {
  html_object_element_archive_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_archive_ffi(
  obj : JsValue,
  archive : JsValue,
) -> Unit = "(obj, archive) => { obj.archive = archive; }"

///|
impl THTMLObjectElement with set_archive(self : Self, archive : String) -> Unit {
  html_object_element_set_archive_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(archive),
  )
}

///|
extern "js" fn html_object_element_code_ffi(obj : JsValue) -> String = "(obj) => obj.code"

///|
impl THTMLObjectElement with code(self : Self) -> String {
  html_object_element_code_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_code_ffi(
  obj : JsValue,
  code : JsValue,
) -> Unit = "(obj, code) => { obj.code = code; }"

///|
impl THTMLObjectElement with set_code(self : Self, code : String) -> Unit {
  html_object_element_set_code_ffi(TJsValue::to_js(self), TJsValue::to_js(code))
}

///|
extern "js" fn html_object_element_declare_ffi(obj : JsValue) -> Bool = "(obj) => obj.declare"

///|
impl THTMLObjectElement with declare_(self : Self) -> Bool {
  html_object_element_declare_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_declare_ffi(
  obj : JsValue,
  declare_ : JsValue,
) -> Unit = "(obj, declare) => { obj.declare = declare; }"

///|
impl THTMLObjectElement with set_declare_(self : Self, declare_ : Bool) -> Unit {
  html_object_element_set_declare_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(declare_),
  )
}

///|
extern "js" fn html_object_element_hspace_ffi(obj : JsValue) -> UInt = "(obj) => obj.hspace"

///|
impl THTMLObjectElement with hspace(self : Self) -> UInt {
  html_object_element_hspace_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_hspace_ffi(
  obj : JsValue,
  hspace : JsValue,
) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

///|
impl THTMLObjectElement with set_hspace(self : Self, hspace : UInt) -> Unit {
  html_object_element_set_hspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hspace),
  )
}

///|
extern "js" fn html_object_element_standby_ffi(obj : JsValue) -> String = "(obj) => obj.standby"

///|
impl THTMLObjectElement with standby(self : Self) -> String {
  html_object_element_standby_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_standby_ffi(
  obj : JsValue,
  standby : JsValue,
) -> Unit = "(obj, standby) => { obj.standby = standby; }"

///|
impl THTMLObjectElement with set_standby(self : Self, standby : String) -> Unit {
  html_object_element_set_standby_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(standby),
  )
}

///|
extern "js" fn html_object_element_vspace_ffi(obj : JsValue) -> UInt = "(obj) => obj.vspace"

///|
impl THTMLObjectElement with vspace(self : Self) -> UInt {
  html_object_element_vspace_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_vspace_ffi(
  obj : JsValue,
  vspace : JsValue,
) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

///|
impl THTMLObjectElement with set_vspace(self : Self, vspace : UInt) -> Unit {
  html_object_element_set_vspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(vspace),
  )
}

///|
extern "js" fn html_object_element_code_base_ffi(obj : JsValue) -> String = "(obj) => obj.codeBase"

///|
impl THTMLObjectElement with code_base(self : Self) -> String {
  html_object_element_code_base_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_code_base_ffi(
  obj : JsValue,
  code_base : JsValue,
) -> Unit = "(obj, codeBase) => { obj.codeBase = codeBase; }"

///|
impl THTMLObjectElement with set_code_base(self : Self, code_base : String) -> Unit {
  html_object_element_set_code_base_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(code_base),
  )
}

///|
extern "js" fn html_object_element_code_type_ffi(obj : JsValue) -> String = "(obj) => obj.codeType"

///|
impl THTMLObjectElement with code_type(self : Self) -> String {
  html_object_element_code_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_code_type_ffi(
  obj : JsValue,
  code_type : JsValue,
) -> Unit = "(obj, codeType) => { obj.codeType = codeType; }"

///|
impl THTMLObjectElement with set_code_type(self : Self, code_type : String) -> Unit {
  html_object_element_set_code_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(code_type),
  )
}

///|
extern "js" fn html_object_element_use_map_ffi(obj : JsValue) -> String = "(obj) => obj.useMap"

///|
impl THTMLObjectElement with use_map(self : Self) -> String {
  html_object_element_use_map_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_use_map_ffi(
  obj : JsValue,
  use_map : JsValue,
) -> Unit = "(obj, useMap) => { obj.useMap = useMap; }"

///|
impl THTMLObjectElement with set_use_map(self : Self, use_map : String) -> Unit {
  html_object_element_set_use_map_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(use_map),
  )
}

///|
extern "js" fn html_object_element_border_ffi(obj : JsValue) -> String = "(obj) => obj.border"

///|
impl THTMLObjectElement with border(self : Self) -> String {
  html_object_element_border_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_object_element_set_border_ffi(
  obj : JsValue,
  border : JsValue,
) -> Unit = "(obj, border) => { obj.border = border; }"

///|
impl THTMLObjectElement with set_border(self : Self, border : String) -> Unit {
  html_object_element_set_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(border),
  )
}
