// Auto-generated MoonBit bindings for HTMLObjectElement interface
// Do not edit manually

#external
pub type HTMLObjectElement

pub impl TJsValue for HTMLObjectElement with to_js(self: HTMLObjectElement) -> JsValue = "%identity"


pub fn[T: THTMLObjectElement] HTMLObjectElement::into(self : HTMLObjectElement) -> T = "%identity"
pub impl THTMLObjectElement for HTMLObjectElement

pub fn HTMLObjectElement::new() -> HTMLObjectElement = "webapi_HTMLObjectElement" "new"

pub trait THTMLObjectElement: TJsValue + TTHTMLElement {
  data(self: Self) -> String = _
  set_data(self: Self, value : String) -> Unit = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  form(self: Self) -> &THTMLFormElement = _
  width(self: Self) -> String = _
  set_width(self: Self, value : String) -> Unit = _
  height(self: Self) -> String = _
  set_height(self: Self, value : String) -> Unit = _
  content_document(self: Self) -> &TDocument = _
  content_window(self: Self) -> WindowProxy = _
  get_svg_document(self: Self) -> &TDocument = _
  will_validate(self: Self) -> Bool = _
  validity(self: Self) -> ValidityState = _
  validation_message(self: Self) -> String = _
  check_validity(self: Self) -> Bool = _
  report_validity(self: Self) -> Bool = _
  set_custom_validity(self: Self, error : String) -> Unit = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  archive(self: Self) -> String = _
  set_archive(self: Self, value : String) -> Unit = _
  code(self: Self) -> String = _
  set_code(self: Self, value : String) -> Unit = _
  declare(self: Self) -> Bool = _
  set_declare(self: Self, value : Bool) -> Unit = _
  hspace(self: Self) -> UInt = _
  set_hspace(self: Self, value : UInt) -> Unit = _
  standby(self: Self) -> String = _
  set_standby(self: Self, value : String) -> Unit = _
  vspace(self: Self) -> UInt = _
  set_vspace(self: Self, value : UInt) -> Unit = _
  code_base(self: Self) -> String = _
  set_code_base(self: Self, value : String) -> Unit = _
  code_type(self: Self) -> String = _
  set_code_type(self: Self, value : String) -> Unit = _
  use_map(self: Self) -> String = _
  set_use_map(self: Self, value : String) -> Unit = _
  border(self: Self) -> String = _
  set_border(self: Self, value : String) -> Unit = _
}

///|
fn html_object_element_data_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "data"

///|
impl THTMLObjectElement with data(self : Self) -> String {
  html_object_element_data_ffi(self.to_js())
}

///|
fn html_object_element_set_data_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_data"

///|
impl THTMLObjectElement with set_data(self : Self, value : String) -> Unit {
  html_object_element_set_data_ffi(self.to_js(), value)
}

///|
fn html_object_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "type"

///|
impl THTMLObjectElement with type_(self : Self) -> String {
  html_object_element_type_ffi(self.to_js())
}

///|
fn html_object_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_type"

///|
impl THTMLObjectElement with set_type_(self : Self, value : String) -> Unit {
  html_object_element_set_type_ffi(self.to_js(), value)
}

///|
fn html_object_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "name"

///|
impl THTMLObjectElement with name(self : Self) -> String {
  html_object_element_name_ffi(self.to_js())
}

///|
fn html_object_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_name"

///|
impl THTMLObjectElement with set_name(self : Self, value : String) -> Unit {
  html_object_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_object_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "form"

///|
impl THTMLObjectElement with form(self : Self) -> &THTMLFormElement {
  html_object_element_form_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_object_element_width_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "width"

///|
impl THTMLObjectElement with width(self : Self) -> String {
  html_object_element_width_ffi(self.to_js())
}

///|
fn html_object_element_set_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_width"

///|
impl THTMLObjectElement with set_width(self : Self, value : String) -> Unit {
  html_object_element_set_width_ffi(self.to_js(), value)
}

///|
fn html_object_element_height_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "height"

///|
impl THTMLObjectElement with height(self : Self) -> String {
  html_object_element_height_ffi(self.to_js())
}

///|
fn html_object_element_set_height_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_height"

///|
impl THTMLObjectElement with set_height(self : Self, value : String) -> Unit {
  html_object_element_set_height_ffi(self.to_js(), value)
}

///|
fn html_object_element_content_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "contentDocument"

///|
impl THTMLObjectElement with content_document(self : Self) -> &TDocument {
  html_object_element_content_document_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_object_element_content_window_ffi(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "contentWindow"

///|
impl THTMLObjectElement with content_window(self : Self) -> WindowProxy {
  html_object_element_content_window_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_object_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLObjectElement" "willValidate"

///|
impl THTMLObjectElement with will_validate(self : Self) -> Bool {
  html_object_element_will_validate_ffi(self.to_js())
}

///|
fn html_object_element_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "validity"

///|
impl THTMLObjectElement with validity(self : Self) -> ValidityState {
  html_object_element_validity_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_object_element_validation_message_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "validationMessage"

///|
impl THTMLObjectElement with validation_message(self : Self) -> String {
  html_object_element_validation_message_ffi(self.to_js())
}

///|
fn html_object_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "align"

///|
impl THTMLObjectElement with align(self : Self) -> String {
  html_object_element_align_ffi(self.to_js())
}

///|
fn html_object_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_align"

///|
impl THTMLObjectElement with set_align(self : Self, value : String) -> Unit {
  html_object_element_set_align_ffi(self.to_js(), value)
}

///|
fn html_object_element_archive_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "archive"

///|
impl THTMLObjectElement with archive(self : Self) -> String {
  html_object_element_archive_ffi(self.to_js())
}

///|
fn html_object_element_set_archive_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_archive"

///|
impl THTMLObjectElement with set_archive(self : Self, value : String) -> Unit {
  html_object_element_set_archive_ffi(self.to_js(), value)
}

///|
fn html_object_element_code_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "code"

///|
impl THTMLObjectElement with code(self : Self) -> String {
  html_object_element_code_ffi(self.to_js())
}

///|
fn html_object_element_set_code_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_code"

///|
impl THTMLObjectElement with set_code(self : Self, value : String) -> Unit {
  html_object_element_set_code_ffi(self.to_js(), value)
}

///|
fn html_object_element_declare_ffi(obj : JsValue) -> Bool = "webapi_HTMLObjectElement" "declare"

///|
impl THTMLObjectElement with declare(self : Self) -> Bool {
  html_object_element_declare_ffi(self.to_js())
}

///|
fn html_object_element_set_declare_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLObjectElement" "set_declare"

///|
impl THTMLObjectElement with set_declare(self : Self, value : Bool) -> Unit {
  html_object_element_set_declare_ffi(self.to_js(), value)
}

///|
fn html_object_element_hspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLObjectElement" "hspace"

///|
impl THTMLObjectElement with hspace(self : Self) -> UInt {
  html_object_element_hspace_ffi(self.to_js())
}

///|
fn html_object_element_set_hspace_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLObjectElement" "set_hspace"

///|
impl THTMLObjectElement with set_hspace(self : Self, value : UInt) -> Unit {
  html_object_element_set_hspace_ffi(self.to_js(), value)
}

///|
fn html_object_element_standby_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "standby"

///|
impl THTMLObjectElement with standby(self : Self) -> String {
  html_object_element_standby_ffi(self.to_js())
}

///|
fn html_object_element_set_standby_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_standby"

///|
impl THTMLObjectElement with set_standby(self : Self, value : String) -> Unit {
  html_object_element_set_standby_ffi(self.to_js(), value)
}

///|
fn html_object_element_vspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLObjectElement" "vspace"

///|
impl THTMLObjectElement with vspace(self : Self) -> UInt {
  html_object_element_vspace_ffi(self.to_js())
}

///|
fn html_object_element_set_vspace_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLObjectElement" "set_vspace"

///|
impl THTMLObjectElement with set_vspace(self : Self, value : UInt) -> Unit {
  html_object_element_set_vspace_ffi(self.to_js(), value)
}

///|
fn html_object_element_code_base_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "codeBase"

///|
impl THTMLObjectElement with code_base(self : Self) -> String {
  html_object_element_code_base_ffi(self.to_js())
}

///|
fn html_object_element_set_code_base_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_codeBase"

///|
impl THTMLObjectElement with set_code_base(self : Self, value : String) -> Unit {
  html_object_element_set_code_base_ffi(self.to_js(), value)
}

///|
fn html_object_element_code_type_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "codeType"

///|
impl THTMLObjectElement with code_type(self : Self) -> String {
  html_object_element_code_type_ffi(self.to_js())
}

///|
fn html_object_element_set_code_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_codeType"

///|
impl THTMLObjectElement with set_code_type(self : Self, value : String) -> Unit {
  html_object_element_set_code_type_ffi(self.to_js(), value)
}

///|
fn html_object_element_use_map_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "useMap"

///|
impl THTMLObjectElement with use_map(self : Self) -> String {
  html_object_element_use_map_ffi(self.to_js())
}

///|
fn html_object_element_set_use_map_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_useMap"

///|
impl THTMLObjectElement with set_use_map(self : Self, value : String) -> Unit {
  html_object_element_set_use_map_ffi(self.to_js(), value)
}

///|
fn html_object_element_border_ffi(obj : JsValue) -> String = "webapi_HTMLObjectElement" "border"

///|
impl THTMLObjectElement with border(self : Self) -> String {
  html_object_element_border_ffi(self.to_js())
}

///|
fn html_object_element_set_border_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLObjectElement" "set_border"

///|
impl THTMLObjectElement with set_border(self : Self, value : String) -> Unit {
  html_object_element_set_border_ffi(self.to_js(), value)
}

///|
fn html_object_element_get_svg_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "getSVGDocument"

///|
impl THTMLObjectElement with get_svg_document(self : Self) -> &TDocument {
  html_object_element_get_svg_document_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_object_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLObjectElement" "checkValidity"

///|
impl THTMLObjectElement with check_validity(self : Self) -> Bool {
  html_object_element_check_validity_ffi(self.to_js())
}

///|
fn html_object_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLObjectElement" "reportValidity"

///|
impl THTMLObjectElement with report_validity(self : Self) -> Bool {
  html_object_element_report_validity_ffi(self.to_js())
}

///|
fn html_object_element_set_custom_validity_ffi(obj : JsValue, error : JsValue) -> Unit = "webapi_HTMLObjectElement" "setCustomValidity"

///|
impl THTMLObjectElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_object_element_set_custom_validity_ffi(self.to_js(), TJsValue::to_js(error))
}