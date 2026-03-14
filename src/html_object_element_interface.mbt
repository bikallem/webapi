// Do not edit. This file is generated.
// MoonBit type: HTMLObjectElement
// Specifications: html.idl

///|
/// [HTMLObjectElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement)
#external
pub type HTMLObjectElement

///|
pub impl TJsValue for HTMLObjectElement with to_js(self : HTMLObjectElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLObjectElement with from_js_any(value : JsAny) -> HTMLObjectElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLObjectElement] HTMLObjectElement::into(
  self : HTMLObjectElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLObjectElement] HTMLObjectElement::unsafe_into(
  self : HTMLObjectElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLObjectElement with constructor_name() {
  "HTMLObjectElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLObjectElement + HasConstructor] HTMLObjectElement::try_into(
  self : HTMLObjectElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
pub fn HTMLObjectElement::new() -> HTMLObjectElement {
  html_object_element_new_ffi()
}

///|
/// [HTMLObjectElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement) interface.
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
  get_svg_document_opt(self : Self) -> Document? = _
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
  get_svg_document(self : Self) -> Document = _
}

///|
/// [HTMLObjectElement.data](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/data)
impl THTMLObjectElement with data(self : Self) -> String {
  html_object_element_data_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.data](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/data)
impl THTMLObjectElement with set_data(self : Self, data : String) -> Unit {
  html_object_element_set_data_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
/// [HTMLObjectElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/type)
impl THTMLObjectElement with type_(self : Self) -> String {
  html_object_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/type)
impl THTMLObjectElement with set_type_(self : Self, type_ : String) -> Unit {
  html_object_element_set_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
/// [HTMLObjectElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/name)
impl THTMLObjectElement with name(self : Self) -> String {
  html_object_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/name)
impl THTMLObjectElement with set_name(self : Self, name : String) -> Unit {
  html_object_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLObjectElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/form)
impl THTMLObjectElement with form(self : Self) -> HTMLFormElement {
  html_object_element_form_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/width)
impl THTMLObjectElement with width(self : Self) -> String {
  html_object_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/width)
impl THTMLObjectElement with set_width(self : Self, width : String) -> Unit {
  html_object_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
/// [HTMLObjectElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/height)
impl THTMLObjectElement with height(self : Self) -> String {
  html_object_element_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/height)
impl THTMLObjectElement with set_height(self : Self, height : String) -> Unit {
  html_object_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
/// [HTMLObjectElement.contentDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/contentDocument)
impl THTMLObjectElement with content_document(self : Self) -> Document {
  html_object_element_content_document_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.contentWindow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/contentWindow)
impl THTMLObjectElement with content_window(self : Self) -> WindowProxy {
  html_object_element_content_window_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.getSVGDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/getSVGDocument)
impl THTMLObjectElement with get_svg_document_opt(self : Self) -> Document? {
  html_object_element_get_svg_document_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [HTMLObjectElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/willValidate)
impl THTMLObjectElement with will_validate(self : Self) -> Bool {
  html_object_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/validity)
impl THTMLObjectElement with validity(self : Self) -> ValidityState {
  html_object_element_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/validationMessage)
impl THTMLObjectElement with validation_message(self : Self) -> String {
  html_object_element_validation_message_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/checkValidity)
impl THTMLObjectElement with check_validity(self : Self) -> Bool {
  html_object_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/reportValidity)
impl THTMLObjectElement with report_validity(self : Self) -> Bool {
  html_object_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/setCustomValidity)
impl THTMLObjectElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_object_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
/// [HTMLObjectElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/align)
impl THTMLObjectElement with align(self : Self) -> String {
  html_object_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/align)
impl THTMLObjectElement with set_align(self : Self, align : String) -> Unit {
  html_object_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
/// [HTMLObjectElement.archive](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/archive)
impl THTMLObjectElement with archive(self : Self) -> String {
  html_object_element_archive_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.archive](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/archive)
impl THTMLObjectElement with set_archive(self : Self, archive : String) -> Unit {
  html_object_element_set_archive_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(archive),
  )
}

///|
/// [HTMLObjectElement.code](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/code)
impl THTMLObjectElement with code(self : Self) -> String {
  html_object_element_code_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.code](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/code)
impl THTMLObjectElement with set_code(self : Self, code : String) -> Unit {
  html_object_element_set_code_ffi(TJsValue::to_js(self), TJsValue::to_js(code))
}

///|
/// [HTMLObjectElement.declare](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/declare)
impl THTMLObjectElement with declare_(self : Self) -> Bool {
  html_object_element_declare_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.declare](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/declare)
impl THTMLObjectElement with set_declare_(self : Self, declare_ : Bool) -> Unit {
  html_object_element_set_declare_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(declare_),
  )
}

///|
/// [HTMLObjectElement.hspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/hspace)
impl THTMLObjectElement with hspace(self : Self) -> UInt {
  html_object_element_hspace_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.hspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/hspace)
impl THTMLObjectElement with set_hspace(self : Self, hspace : UInt) -> Unit {
  html_object_element_set_hspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hspace),
  )
}

///|
/// [HTMLObjectElement.standby](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/standby)
impl THTMLObjectElement with standby(self : Self) -> String {
  html_object_element_standby_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.standby](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/standby)
impl THTMLObjectElement with set_standby(self : Self, standby : String) -> Unit {
  html_object_element_set_standby_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(standby),
  )
}

///|
/// [HTMLObjectElement.vspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/vspace)
impl THTMLObjectElement with vspace(self : Self) -> UInt {
  html_object_element_vspace_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.vspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/vspace)
impl THTMLObjectElement with set_vspace(self : Self, vspace : UInt) -> Unit {
  html_object_element_set_vspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(vspace),
  )
}

///|
/// [HTMLObjectElement.codeBase](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/codeBase)
impl THTMLObjectElement with code_base(self : Self) -> String {
  html_object_element_code_base_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.codeBase](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/codeBase)
impl THTMLObjectElement with set_code_base(self : Self, code_base : String) -> Unit {
  html_object_element_set_code_base_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(code_base),
  )
}

///|
/// [HTMLObjectElement.codeType](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/codeType)
impl THTMLObjectElement with code_type(self : Self) -> String {
  html_object_element_code_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.codeType](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/codeType)
impl THTMLObjectElement with set_code_type(self : Self, code_type : String) -> Unit {
  html_object_element_set_code_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(code_type),
  )
}

///|
/// [HTMLObjectElement.useMap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/useMap)
impl THTMLObjectElement with use_map(self : Self) -> String {
  html_object_element_use_map_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.useMap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/useMap)
impl THTMLObjectElement with set_use_map(self : Self, use_map : String) -> Unit {
  html_object_element_set_use_map_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(use_map),
  )
}

///|
/// [HTMLObjectElement.border](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/border)
impl THTMLObjectElement with border(self : Self) -> String {
  html_object_element_border_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLObjectElement.border](https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement/border)
impl THTMLObjectElement with set_border(self : Self, border : String) -> Unit {
  html_object_element_set_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(border),
  )
}

///|
impl THTMLObjectElement with get_svg_document(self : Self) -> Document {
  self.get_svg_document_opt().unwrap()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_new_ffi() -> HTMLObjectElement = "() => new HTMLObjectElement()"

///|
#cfg(target="js")
extern "js" fn html_object_element_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="js")
fn html_object_element_data_ffi(obj : JsValue) -> String {
  html_object_element_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_data_ffi(
  obj : JsValue,
  data : JsValue,
) -> Unit = "(obj, data) => { obj.data = data; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_object_element_type_ffi(obj : JsValue) -> String {
  html_object_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_object_element_name_ffi(obj : JsValue) -> String {
  html_object_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_object_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_object_element_form_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_object_element_width_ffi(obj : JsValue) -> String {
  html_object_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_object_element_height_ffi(obj : JsValue) -> String {
  html_object_element_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_content_document_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentDocument"

///|
#cfg(target="js")
fn html_object_element_content_document_ffi(obj : JsValue) -> Document {
  html_object_element_content_document_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_content_window_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentWindow"

///|
#cfg(target="js")
fn html_object_element_content_window_ffi(obj : JsValue) -> WindowProxy {
  html_object_element_content_window_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument()"

///|
#cfg(target="js")
extern "js" fn html_object_element_will_validate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.willValidate"

///|
#cfg(target="js")
fn html_object_element_will_validate_ffi(obj : JsValue) -> Bool {
  html_object_element_will_validate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_validity_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
#cfg(target="js")
fn html_object_element_validity_ffi(obj : JsValue) -> ValidityState {
  html_object_element_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_validation_message_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
#cfg(target="js")
fn html_object_element_validation_message_ffi(obj : JsValue) -> String {
  html_object_element_validation_message_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_check_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.checkValidity()"

///|
#cfg(target="js")
fn html_object_element_check_validity_ffi(obj : JsValue) -> Bool {
  html_object_element_check_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_report_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
#cfg(target="js")
fn html_object_element_report_validity_ffi(obj : JsValue) -> Bool {
  html_object_element_report_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
#cfg(target="js")
extern "js" fn html_object_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_object_element_align_ffi(obj : JsValue) -> String {
  html_object_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_archive_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.archive"

///|
#cfg(target="js")
fn html_object_element_archive_ffi(obj : JsValue) -> String {
  html_object_element_archive_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_archive_ffi(
  obj : JsValue,
  archive : JsValue,
) -> Unit = "(obj, archive) => { obj.archive = archive; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_code_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
#cfg(target="js")
fn html_object_element_code_ffi(obj : JsValue) -> String {
  html_object_element_code_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_code_ffi(
  obj : JsValue,
  code : JsValue,
) -> Unit = "(obj, code) => { obj.code = code; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_declare_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.declare"

///|
#cfg(target="js")
fn html_object_element_declare_ffi(obj : JsValue) -> Bool {
  html_object_element_declare_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_declare_ffi(
  obj : JsValue,
  declare_ : JsValue,
) -> Unit = "(obj, declare) => { obj.declare = declare; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_hspace_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hspace"

///|
#cfg(target="js")
fn html_object_element_hspace_ffi(obj : JsValue) -> UInt {
  html_object_element_hspace_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_hspace_ffi(
  obj : JsValue,
  hspace : JsValue,
) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_standby_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.standby"

///|
#cfg(target="js")
fn html_object_element_standby_ffi(obj : JsValue) -> String {
  html_object_element_standby_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_standby_ffi(
  obj : JsValue,
  standby : JsValue,
) -> Unit = "(obj, standby) => { obj.standby = standby; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_vspace_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vspace"

///|
#cfg(target="js")
fn html_object_element_vspace_ffi(obj : JsValue) -> UInt {
  html_object_element_vspace_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_vspace_ffi(
  obj : JsValue,
  vspace : JsValue,
) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_code_base_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.codeBase"

///|
#cfg(target="js")
fn html_object_element_code_base_ffi(obj : JsValue) -> String {
  html_object_element_code_base_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_code_base_ffi(
  obj : JsValue,
  code_base : JsValue,
) -> Unit = "(obj, codeBase) => { obj.codeBase = codeBase; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_code_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.codeType"

///|
#cfg(target="js")
fn html_object_element_code_type_ffi(obj : JsValue) -> String {
  html_object_element_code_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_code_type_ffi(
  obj : JsValue,
  code_type : JsValue,
) -> Unit = "(obj, codeType) => { obj.codeType = codeType; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_use_map_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.useMap"

///|
#cfg(target="js")
fn html_object_element_use_map_ffi(obj : JsValue) -> String {
  html_object_element_use_map_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_use_map_ffi(
  obj : JsValue,
  use_map : JsValue,
) -> Unit = "(obj, useMap) => { obj.useMap = useMap; }"

///|
#cfg(target="js")
extern "js" fn html_object_element_border_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.border"

///|
#cfg(target="js")
fn html_object_element_border_ffi(obj : JsValue) -> String {
  html_object_element_border_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_object_element_set_border_ffi(
  obj : JsValue,
  border : JsValue,
) -> Unit = "(obj, border) => { obj.border = border; }"

///|
#cfg(target="wasm-gc")
fn html_object_element_new_ffi() -> HTMLObjectElement = "webapi_HTMLObjectElement" "new"

///|
#cfg(target="wasm-gc")
fn html_object_element_data_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_data"

///|
#cfg(target="wasm-gc")
fn html_object_element_data_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_data_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_data_ffi(obj : JsValue, data : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_data"

///|
#cfg(target="wasm-gc")
fn html_object_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_object_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_type"

///|
#cfg(target="wasm-gc")
fn html_object_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_object_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_name"

///|
#cfg(target="wasm-gc")
fn html_object_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLObjectElement" "get_form"

///|
#cfg(target="wasm-gc")
fn html_object_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_object_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_width_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_width"

///|
#cfg(target="wasm-gc")
fn html_object_element_height_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_height"

///|
#cfg(target="wasm-gc")
fn html_object_element_height_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_height_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_height"

///|
#cfg(target="wasm-gc")
fn html_object_element_content_document_ffi(obj : JsValue) -> Document = "webapi_HTMLObjectElement" "get_contentDocument"

///|
#cfg(target="wasm-gc")
fn html_object_element_content_window_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_contentWindow"

///|
#cfg(target="wasm-gc")
fn html_object_element_content_window_ffi(obj : JsValue) -> WindowProxy {
  html_object_element_content_window_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_object_element_get_svg_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "getSVGDocument"

///|
#cfg(target="wasm-gc")
fn html_object_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLObjectElement" "get_willValidate"

///|
#cfg(target="wasm-gc")
fn html_object_element_validity_ffi(obj : JsValue) -> ValidityState = "webapi_HTMLObjectElement" "get_validity"

///|
#cfg(target="wasm-gc")
fn html_object_element_validation_message_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_validationMessage"

///|
#cfg(target="wasm-gc")
fn html_object_element_validation_message_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_validation_message_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLObjectElement" "checkValidity"

///|
#cfg(target="wasm-gc")
fn html_object_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLObjectElement" "reportValidity"

///|
#cfg(target="wasm-gc")
fn html_object_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "webapi_HTMLObjectElement" "setCustomValidity"

///|
#cfg(target="wasm-gc")
fn html_object_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_object_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_align"

///|
#cfg(target="wasm-gc")
fn html_object_element_archive_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_archive"

///|
#cfg(target="wasm-gc")
fn html_object_element_archive_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_archive_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_archive_ffi(
  obj : JsValue,
  archive : JsValue,
) -> Unit = "webapi_HTMLObjectElement" "set_archive"

///|
#cfg(target="wasm-gc")
fn html_object_element_code_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_code"

///|
#cfg(target="wasm-gc")
fn html_object_element_code_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_code_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_code_ffi(obj : JsValue, code : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_code"

///|
#cfg(target="wasm-gc")
fn html_object_element_declare_ffi(obj : JsValue) -> Bool = "webapi_HTMLObjectElement" "get_declare"

///|
#cfg(target="wasm-gc")
fn html_object_element_set_declare_ffi(
  obj : JsValue,
  declare_ : JsValue,
) -> Unit = "webapi_HTMLObjectElement" "set_declare"

///|
#cfg(target="wasm-gc")
fn html_object_element_hspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLObjectElement" "get_hspace"

///|
#cfg(target="wasm-gc")
fn html_object_element_set_hspace_ffi(obj : JsValue, hspace : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_hspace"

///|
#cfg(target="wasm-gc")
fn html_object_element_standby_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_standby"

///|
#cfg(target="wasm-gc")
fn html_object_element_standby_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_standby_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_standby_ffi(
  obj : JsValue,
  standby : JsValue,
) -> Unit = "webapi_HTMLObjectElement" "set_standby"

///|
#cfg(target="wasm-gc")
fn html_object_element_vspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLObjectElement" "get_vspace"

///|
#cfg(target="wasm-gc")
fn html_object_element_set_vspace_ffi(obj : JsValue, vspace : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_vspace"

///|
#cfg(target="wasm-gc")
fn html_object_element_code_base_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_codeBase"

///|
#cfg(target="wasm-gc")
fn html_object_element_code_base_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_code_base_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_code_base_ffi(
  obj : JsValue,
  code_base : JsValue,
) -> Unit = "webapi_HTMLObjectElement" "set_codeBase"

///|
#cfg(target="wasm-gc")
fn html_object_element_code_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_codeType"

///|
#cfg(target="wasm-gc")
fn html_object_element_code_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_code_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_code_type_ffi(
  obj : JsValue,
  code_type : JsValue,
) -> Unit = "webapi_HTMLObjectElement" "set_codeType"

///|
#cfg(target="wasm-gc")
fn html_object_element_use_map_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_useMap"

///|
#cfg(target="wasm-gc")
fn html_object_element_use_map_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_use_map_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_use_map_ffi(
  obj : JsValue,
  use_map : JsValue,
) -> Unit = "webapi_HTMLObjectElement" "set_useMap"

///|
#cfg(target="wasm-gc")
fn html_object_element_border_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLObjectElement" "get_border"

///|
#cfg(target="wasm-gc")
fn html_object_element_border_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_object_element_border_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_object_element_set_border_ffi(obj : JsValue, border : JsValue) -> Unit = "webapi_HTMLObjectElement" "set_border"
