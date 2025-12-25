// Do not edit. This file is generated.
// MoonBit type: HTMLFormElement
// Specifications: html.idl

///|
#external
pub type HTMLFormElement

///|
pub impl TJsValue for HTMLFormElement with to_js(self : HTMLFormElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFormElement] HTMLFormElement::into(self : HTMLFormElement) -> T = "%identity"

///|
pub impl THTMLFormElement for HTMLFormElement

///|
pub impl THTMLElement for HTMLFormElement

///|
pub impl TElement for HTMLFormElement

///|
pub impl TNode for HTMLFormElement

///|
pub impl TEventTarget for HTMLFormElement

///|
extern "js" fn html_form_element_new_ffi() -> HTMLFormElement = "() => new HTMLFormElement()"

///|
pub fn HTMLFormElement::new() -> HTMLFormElement {
  html_form_element_new_ffi()
}

///|
pub trait THTMLFormElement: THTMLElement {
  accept_charset(self : Self) -> String = _
  set_accept_charset(self : Self, accept_charset : String) -> Unit = _
  action(self : Self) -> String = _
  set_action(self : Self, action : String) -> Unit = _
  autocomplete(self : Self) -> String = _
  set_autocomplete(self : Self, autocomplete : String) -> Unit = _
  enctype(self : Self) -> String = _
  set_enctype(self : Self, enctype : String) -> Unit = _
  encoding(self : Self) -> String = _
  set_encoding(self : Self, encoding : String) -> Unit = _
  method_(self : Self) -> String = _
  set_method_(self : Self, method_ : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  no_validate(self : Self) -> Bool = _
  set_no_validate(self : Self, no_validate : Bool) -> Unit = _
  target(self : Self) -> String = _
  set_target(self : Self, target : String) -> Unit = _
  rel(self : Self) -> String = _
  set_rel(self : Self, rel : String) -> Unit = _
  rel_list(self : Self) -> DOMTokenList = _
  elements(self : Self) -> HTMLFormControlsCollection = _
  length(self : Self) -> UInt = _
  submit(self : Self) -> Unit = _
  request_submit(self : Self, submitter? : &THTMLElement) -> Unit = _
  reset(self : Self) -> Unit = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
}

///|
extern "js" fn html_form_element_accept_charset_ffi(obj : JsValue) -> String = "(obj) => obj.acceptCharset"

///|
impl THTMLFormElement with accept_charset(self : Self) -> String {
  html_form_element_accept_charset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_accept_charset_ffi(
  obj : JsValue,
  accept_charset : JsValue,
) -> Unit = "(obj, acceptCharset) => { obj.acceptCharset = acceptCharset; }"

///|
impl THTMLFormElement with set_accept_charset(
  self : Self,
  accept_charset : String,
) -> Unit {
  html_form_element_set_accept_charset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(accept_charset),
  )
}

///|
extern "js" fn html_form_element_action_ffi(obj : JsValue) -> String = "(obj) => obj.action"

///|
impl THTMLFormElement with action(self : Self) -> String {
  html_form_element_action_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_action_ffi(
  obj : JsValue,
  action : JsValue,
) -> Unit = "(obj, action) => { obj.action = action; }"

///|
impl THTMLFormElement with set_action(self : Self, action : String) -> Unit {
  html_form_element_set_action_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(action),
  )
}

///|
extern "js" fn html_form_element_autocomplete_ffi(obj : JsValue) -> String = "(obj) => obj.autocomplete"

///|
impl THTMLFormElement with autocomplete(self : Self) -> String {
  html_form_element_autocomplete_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

///|
impl THTMLFormElement with set_autocomplete(self : Self, autocomplete : String) -> Unit {
  html_form_element_set_autocomplete_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autocomplete),
  )
}

///|
extern "js" fn html_form_element_enctype_ffi(obj : JsValue) -> String = "(obj) => obj.enctype"

///|
impl THTMLFormElement with enctype(self : Self) -> String {
  html_form_element_enctype_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_enctype_ffi(
  obj : JsValue,
  enctype : JsValue,
) -> Unit = "(obj, enctype) => { obj.enctype = enctype; }"

///|
impl THTMLFormElement with set_enctype(self : Self, enctype : String) -> Unit {
  html_form_element_set_enctype_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(enctype),
  )
}

///|
extern "js" fn html_form_element_encoding_ffi(obj : JsValue) -> String = "(obj) => obj.encoding"

///|
impl THTMLFormElement with encoding(self : Self) -> String {
  html_form_element_encoding_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_encoding_ffi(
  obj : JsValue,
  encoding : JsValue,
) -> Unit = "(obj, encoding) => { obj.encoding = encoding; }"

///|
impl THTMLFormElement with set_encoding(self : Self, encoding : String) -> Unit {
  html_form_element_set_encoding_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(encoding),
  )
}

///|
extern "js" fn html_form_element_method_ffi(obj : JsValue) -> String = "(obj) => obj.method"

///|
impl THTMLFormElement with method_(self : Self) -> String {
  html_form_element_method_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_method_ffi(
  obj : JsValue,
  method_ : JsValue,
) -> Unit = "(obj, method) => { obj.method = method; }"

///|
impl THTMLFormElement with set_method_(self : Self, method_ : String) -> Unit {
  html_form_element_set_method_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(method_),
  )
}

///|
extern "js" fn html_form_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLFormElement with name(self : Self) -> String {
  html_form_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLFormElement with set_name(self : Self, name : String) -> Unit {
  html_form_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_form_element_no_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.noValidate"

///|
impl THTMLFormElement with no_validate(self : Self) -> Bool {
  html_form_element_no_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_no_validate_ffi(
  obj : JsValue,
  no_validate : JsValue,
) -> Unit = "(obj, noValidate) => { obj.noValidate = noValidate; }"

///|
impl THTMLFormElement with set_no_validate(self : Self, no_validate : Bool) -> Unit {
  html_form_element_set_no_validate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(no_validate),
  )
}

///|
extern "js" fn html_form_element_target_ffi(obj : JsValue) -> String = "(obj) => obj.target"

///|
impl THTMLFormElement with target(self : Self) -> String {
  html_form_element_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_target_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => { obj.target = target; }"

///|
impl THTMLFormElement with set_target(self : Self, target : String) -> Unit {
  html_form_element_set_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}

///|
extern "js" fn html_form_element_rel_ffi(obj : JsValue) -> String = "(obj) => obj.rel"

///|
impl THTMLFormElement with rel(self : Self) -> String {
  html_form_element_rel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_set_rel_ffi(
  obj : JsValue,
  rel : JsValue,
) -> Unit = "(obj, rel) => { obj.rel = rel; }"

///|
impl THTMLFormElement with set_rel(self : Self, rel : String) -> Unit {
  html_form_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

///|
extern "js" fn html_form_element_rel_list_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.relList"

///|
impl THTMLFormElement with rel_list(self : Self) -> DOMTokenList {
  html_form_element_rel_list_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_elements_ffi(
  obj : JsValue,
) -> HTMLFormControlsCollection = "(obj) => obj.elements"

///|
impl THTMLFormElement with elements(self : Self) -> HTMLFormControlsCollection {
  html_form_element_elements_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl THTMLFormElement with length(self : Self) -> UInt {
  html_form_element_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_submit_ffi(obj : JsValue) -> Unit = "(obj) => obj.submit(obj)"

///|
impl THTMLFormElement with submit(self : Self) -> Unit {
  html_form_element_submit_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_request_submit_ffi(
  obj : JsValue,
  submitter : JsValue,
) -> Unit = "(obj, submitter) => obj.requestSubmit(obj, submitter)"

///|
impl THTMLFormElement with request_submit(
  self : Self,
  submitter? : &THTMLElement = JsValue::null(),
) -> Unit {
  html_form_element_request_submit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(submitter),
  )
}

///|
extern "js" fn html_form_element_reset_ffi(obj : JsValue) -> Unit = "(obj) => obj.reset(obj)"

///|
impl THTMLFormElement with reset(self : Self) -> Unit {
  html_form_element_reset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLFormElement with check_validity(self : Self) -> Bool {
  html_form_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_form_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLFormElement with report_validity(self : Self) -> Bool {
  html_form_element_report_validity_ffi(TJsValue::to_js(self))
}
