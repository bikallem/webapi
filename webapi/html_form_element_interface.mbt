// Do not edit. This file is generated.
// MoonBit type: HTMLFormElement
// Specifications: html.idl

/// [HTMLFormElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement)
#external
pub type HTMLFormElement

pub impl TJsValue for HTMLFormElement with to_js(self: HTMLFormElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLFormElement with from_js_any(value : JsAny) -> HTMLFormElement = "%identity"

pub fn[T: THTMLFormElement] HTMLFormElement::into(self : HTMLFormElement) -> T = "%identity"

pub impl THTMLFormElement for HTMLFormElement

pub impl THTMLElement for HTMLFormElement

pub impl TElement for HTMLFormElement

pub impl TNode for HTMLFormElement

pub impl TEventTarget for HTMLFormElement

pub fn HTMLFormElement::new() -> HTMLFormElement {
  html_form_element_new_ffi()
}

#external
pub type HTMLFormElementGetByName

pub impl TJsValue for HTMLFormElementGetByName with to_js(self: HTMLFormElementGetByName) -> JsValue = "%identity"

pub impl FromJsAny for HTMLFormElementGetByName with from_js_any(value : JsAny) -> HTMLFormElementGetByName = "%identity"

pub fn[T : THTMLFormElementGetByName + FromJsAny] HTMLFormElementGetByName::into(self : HTMLFormElementGetByName) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : THTMLFormElementGetByName] HTMLFormElementGetByName::from(value : T) -> HTMLFormElementGetByName = "%identity"

pub impl THTMLFormElementGetByName for HTMLFormElementGetByName

pub(open) trait THTMLFormElementGetByName : TJsValue {}

pub impl THTMLFormElementGetByName for RadioNodeList

pub impl THTMLFormElementGetByName for Element

/// [HTMLFormElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement) interface.
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
  get_opt(self : Self, index : UInt) -> Element? = _
  get_by_name(self : Self, name : String) -> HTMLFormElementGetByName? = _
  submit(self : Self) -> Unit = _
  request_submit(self : Self, submitter? : &THTMLElement) -> Unit = _
  reset(self : Self) -> Unit = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  get(self : Self, index : UInt) -> Element = _
}

/// [HTMLFormElement.acceptCharset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/acceptCharset)
impl THTMLFormElement with accept_charset(self : Self) -> String {
  html_form_element_accept_charset_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.acceptCharset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/acceptCharset)
impl THTMLFormElement with set_accept_charset(self : Self, 
accept_charset : String) -> Unit {
  html_form_element_set_accept_charset_ffi(TJsValue::to_js(self), TJsValue::to_js(accept_charset))
}

/// [HTMLFormElement.action](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/action)
impl THTMLFormElement with action(self : Self) -> String {
  html_form_element_action_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.action](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/action)
impl THTMLFormElement with set_action(self : Self, 
action : String) -> Unit {
  html_form_element_set_action_ffi(TJsValue::to_js(self), TJsValue::to_js(action))
}

/// [HTMLFormElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/autocomplete)
impl THTMLFormElement with autocomplete(self : Self) -> String {
  html_form_element_autocomplete_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/autocomplete)
impl THTMLFormElement with set_autocomplete(self : Self, 
autocomplete : String) -> Unit {
  html_form_element_set_autocomplete_ffi(TJsValue::to_js(self), TJsValue::to_js(autocomplete))
}

/// [HTMLFormElement.enctype](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/enctype)
impl THTMLFormElement with enctype(self : Self) -> String {
  html_form_element_enctype_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.enctype](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/enctype)
impl THTMLFormElement with set_enctype(self : Self, 
enctype : String) -> Unit {
  html_form_element_set_enctype_ffi(TJsValue::to_js(self), TJsValue::to_js(enctype))
}

/// [HTMLFormElement.encoding](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/encoding)
impl THTMLFormElement with encoding(self : Self) -> String {
  html_form_element_encoding_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.encoding](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/encoding)
impl THTMLFormElement with set_encoding(self : Self, 
encoding : String) -> Unit {
  html_form_element_set_encoding_ffi(TJsValue::to_js(self), TJsValue::to_js(encoding))
}

/// [HTMLFormElement.method](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/method)
impl THTMLFormElement with method_(self : Self) -> String {
  html_form_element_method_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.method](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/method)
impl THTMLFormElement with set_method_(self : Self, 
method_ : String) -> Unit {
  html_form_element_set_method_ffi(TJsValue::to_js(self), TJsValue::to_js(method_))
}

/// [HTMLFormElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/name)
impl THTMLFormElement with name(self : Self) -> String {
  html_form_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/name)
impl THTMLFormElement with set_name(self : Self, 
name : String) -> Unit {
  html_form_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLFormElement.noValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/noValidate)
impl THTMLFormElement with no_validate(self : Self) -> Bool {
  html_form_element_no_validate_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.noValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/noValidate)
impl THTMLFormElement with set_no_validate(self : Self, 
no_validate : Bool) -> Unit {
  html_form_element_set_no_validate_ffi(TJsValue::to_js(self), TJsValue::to_js(no_validate))
}

/// [HTMLFormElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/target)
impl THTMLFormElement with target(self : Self) -> String {
  html_form_element_target_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/target)
impl THTMLFormElement with set_target(self : Self, 
target : String) -> Unit {
  html_form_element_set_target_ffi(TJsValue::to_js(self), TJsValue::to_js(target))
}

/// [HTMLFormElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/rel)
impl THTMLFormElement with rel(self : Self) -> String {
  html_form_element_rel_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/rel)
impl THTMLFormElement with set_rel(self : Self, 
rel : String) -> Unit {
  html_form_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

/// [HTMLFormElement.relList](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/relList)
impl THTMLFormElement with rel_list(self : Self) -> DOMTokenList {
  html_form_element_rel_list_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.elements](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/elements)
impl THTMLFormElement with elements(self : Self) -> HTMLFormControlsCollection {
  html_form_element_elements_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/length)
impl THTMLFormElement with length(self : Self) -> UInt {
  html_form_element_length_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.get](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/get)
impl THTMLFormElement with get_opt(self : Self, 
index : UInt) -> Element? {
  html_form_element_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [HTMLFormElement.get_by_name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/get_by_name)
impl THTMLFormElement with get_by_name(self : Self, 
name : String) -> HTMLFormElementGetByName? {
  html_form_element_get_by_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

/// [HTMLFormElement.submit](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/submit)
impl THTMLFormElement with submit(self : Self) -> Unit {
  html_form_element_submit_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.requestSubmit](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/requestSubmit)
impl THTMLFormElement with request_submit(self : Self, 
submitter? : &THTMLElement) -> Unit {
  html_form_element_request_submit_ffi(TJsValue::to_js(self), opt_to_js(submitter))
}

/// [HTMLFormElement.reset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/reset)
impl THTMLFormElement with reset(self : Self) -> Unit {
  html_form_element_reset_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/checkValidity)
impl THTMLFormElement with check_validity(self : Self) -> Bool {
  html_form_element_check_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLFormElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/reportValidity)
impl THTMLFormElement with report_validity(self : Self) -> Bool {
  html_form_element_report_validity_ffi(TJsValue::to_js(self))
}

impl THTMLFormElement with get(self : Self, 
index : UInt) -> Element {
  self.get_opt(index).unwrap()
}