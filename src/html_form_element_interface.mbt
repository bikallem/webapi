// Do not edit. This file is generated.
// MoonBit type: HTMLFormElement
// Specifications: html.idl

/// [HTMLFormElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement)
#external
pub type HTMLFormElement

pub impl TJsValue for HTMLFormElement with to_js(self: HTMLFormElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLFormElement with from_js_any(value : JsAny) -> HTMLFormElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLFormElement] HTMLFormElement::into(self : HTMLFormElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLFormElement] HTMLFormElement::unsafe_into(self : HTMLFormElement) -> T = "%identity"

pub impl HasConstructor for HTMLFormElement with constructor_name() { "HTMLFormElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLFormElement + HasConstructor] HTMLFormElement::try_into(self : HTMLFormElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLFormElementGetByName + FromJsAny] HTMLFormElementGetByName::into(self : HTMLFormElementGetByName) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : THTMLFormElementGetByName + FromJsAny] HTMLFormElementGetByName::unsafe_into(self : HTMLFormElementGetByName) -> T {
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

#cfg(target="js")
extern "js" fn html_form_element_new_ffi() -> HTMLFormElement = "() => new HTMLFormElement()"

#cfg(target="js")
extern "js" fn html_form_element_accept_charset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.acceptCharset"

///|
#cfg(target="js")
fn html_form_element_accept_charset_ffi(obj: JsValue) -> String {
  html_form_element_accept_charset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_accept_charset_ffi(obj: JsValue, accept_charset: JsValue) -> Unit = "(obj, acceptCharset) => { obj.acceptCharset = acceptCharset; }"

#cfg(target="js")
extern "js" fn html_form_element_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.action"

///|
#cfg(target="js")
fn html_form_element_action_ffi(obj: JsValue) -> String {
  html_form_element_action_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_action_ffi(obj: JsValue, action: JsValue) -> Unit = "(obj, action) => { obj.action = action; }"

#cfg(target="js")
extern "js" fn html_form_element_autocomplete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.autocomplete"

///|
#cfg(target="js")
fn html_form_element_autocomplete_ffi(obj: JsValue) -> String {
  html_form_element_autocomplete_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

#cfg(target="js")
extern "js" fn html_form_element_enctype_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.enctype"

///|
#cfg(target="js")
fn html_form_element_enctype_ffi(obj: JsValue) -> String {
  html_form_element_enctype_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_enctype_ffi(obj: JsValue, enctype: JsValue) -> Unit = "(obj, enctype) => { obj.enctype = enctype; }"

#cfg(target="js")
extern "js" fn html_form_element_encoding_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.encoding"

///|
#cfg(target="js")
fn html_form_element_encoding_ffi(obj: JsValue) -> String {
  html_form_element_encoding_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_encoding_ffi(obj: JsValue, encoding: JsValue) -> Unit = "(obj, encoding) => { obj.encoding = encoding; }"

#cfg(target="js")
extern "js" fn html_form_element_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.method"

///|
#cfg(target="js")
fn html_form_element_method_ffi(obj: JsValue) -> String {
  html_form_element_method_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_method_ffi(obj: JsValue, method_: JsValue) -> Unit = "(obj, method) => { obj.method = method; }"

#cfg(target="js")
extern "js" fn html_form_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_form_element_name_ffi(obj: JsValue) -> String {
  html_form_element_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

#cfg(target="js")
extern "js" fn html_form_element_no_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.noValidate"

///|
#cfg(target="js")
fn html_form_element_no_validate_ffi(obj: JsValue) -> Bool {
  html_form_element_no_validate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_no_validate_ffi(obj: JsValue, no_validate: JsValue) -> Unit = "(obj, noValidate) => { obj.noValidate = noValidate; }"

#cfg(target="js")
extern "js" fn html_form_element_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn html_form_element_target_ffi(obj: JsValue) -> String {
  html_form_element_target_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => { obj.target = target; }"

#cfg(target="js")
extern "js" fn html_form_element_rel_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rel"

///|
#cfg(target="js")
fn html_form_element_rel_ffi(obj: JsValue) -> String {
  html_form_element_rel_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

#cfg(target="js")
extern "js" fn html_form_element_rel_list_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.relList"

///|
#cfg(target="js")
fn html_form_element_rel_list_ffi(obj: JsValue) -> DOMTokenList {
  html_form_element_rel_list_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_elements_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.elements"

///|
#cfg(target="js")
fn html_form_element_elements_ffi(obj: JsValue) -> HTMLFormControlsCollection {
  html_form_element_elements_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn html_form_element_length_ffi(obj: JsValue) -> UInt {
  html_form_element_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj[index]"

#cfg(target="js")
extern "js" fn html_form_element_get_by_name_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj[name]"

#cfg(target="js")
extern "js" fn html_form_element_submit_ffi(obj: JsValue) -> Unit = "(obj) => obj.submit()"

#cfg(target="js")
extern "js" fn html_form_element_request_submit_ffi(obj: JsValue, submitter: JsValue) -> Unit = "(obj, submitter) => obj.requestSubmit(submitter)"

#cfg(target="js")
extern "js" fn html_form_element_reset_ffi(obj: JsValue) -> Unit = "(obj) => obj.reset()"

#cfg(target="js")
extern "js" fn html_form_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
#cfg(target="js")
fn html_form_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_form_element_check_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_form_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
#cfg(target="js")
fn html_form_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_form_element_report_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn html_form_element_new_ffi() -> HTMLFormElement = "webapi_HTMLFormElement" "new"

#cfg(target="wasm-gc")
fn html_form_element_accept_charset_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_acceptCharset"

///|
#cfg(target="wasm-gc")
fn html_form_element_accept_charset_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_accept_charset_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_accept_charset_ffi(obj: JsValue, accept_charset: JsValue) -> Unit = "webapi_HTMLFormElement" "set_acceptCharset"

#cfg(target="wasm-gc")
fn html_form_element_action_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_action"

///|
#cfg(target="wasm-gc")
fn html_form_element_action_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_action_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_action_ffi(obj: JsValue, action: JsValue) -> Unit = "webapi_HTMLFormElement" "set_action"

#cfg(target="wasm-gc")
fn html_form_element_autocomplete_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_autocomplete"

///|
#cfg(target="wasm-gc")
fn html_form_element_autocomplete_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_autocomplete_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "webapi_HTMLFormElement" "set_autocomplete"

#cfg(target="wasm-gc")
fn html_form_element_enctype_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_enctype"

///|
#cfg(target="wasm-gc")
fn html_form_element_enctype_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_enctype_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_enctype_ffi(obj: JsValue, enctype: JsValue) -> Unit = "webapi_HTMLFormElement" "set_enctype"

#cfg(target="wasm-gc")
fn html_form_element_encoding_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_encoding"

///|
#cfg(target="wasm-gc")
fn html_form_element_encoding_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_encoding_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_encoding_ffi(obj: JsValue, encoding: JsValue) -> Unit = "webapi_HTMLFormElement" "set_encoding"

#cfg(target="wasm-gc")
fn html_form_element_method_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_method"

///|
#cfg(target="wasm-gc")
fn html_form_element_method_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_method_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_method_ffi(obj: JsValue, method_: JsValue) -> Unit = "webapi_HTMLFormElement" "set_method"

#cfg(target="wasm-gc")
fn html_form_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_form_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLFormElement" "set_name"

#cfg(target="wasm-gc")
fn html_form_element_no_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLFormElement" "get_noValidate"

#cfg(target="wasm-gc")
fn html_form_element_set_no_validate_ffi(obj: JsValue, no_validate: JsValue) -> Unit = "webapi_HTMLFormElement" "set_noValidate"

#cfg(target="wasm-gc")
fn html_form_element_target_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_target"

///|
#cfg(target="wasm-gc")
fn html_form_element_target_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_target_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "webapi_HTMLFormElement" "set_target"

#cfg(target="wasm-gc")
fn html_form_element_rel_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_rel"

///|
#cfg(target="wasm-gc")
fn html_form_element_rel_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_form_element_rel_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_form_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "webapi_HTMLFormElement" "set_rel"

#cfg(target="wasm-gc")
fn html_form_element_rel_list_ffi(obj: JsValue) -> DOMTokenList = "webapi_HTMLFormElement" "get_relList"

#cfg(target="wasm-gc")
fn html_form_element_elements_ffi(obj: JsValue) -> HTMLFormControlsCollection = "webapi_HTMLFormElement" "get_elements"

#cfg(target="wasm-gc")
fn html_form_element_length_ffi(obj: JsValue) -> UInt = "webapi_HTMLFormElement" "get_length"

#cfg(target="wasm-gc")
fn html_form_element_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_HTMLFormElement" "get"

#cfg(target="wasm-gc")
fn html_form_element_get_by_name_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_HTMLFormElement" "get_by_name"

#cfg(target="wasm-gc")
fn html_form_element_submit_ffi(obj: JsValue) -> Unit = "webapi_HTMLFormElement" "submit"

#cfg(target="wasm-gc")
fn html_form_element_request_submit_ffi(obj: JsValue, submitter: JsValue) -> Unit = "webapi_HTMLFormElement" "requestSubmit"

#cfg(target="wasm-gc")
fn html_form_element_reset_ffi(obj: JsValue) -> Unit = "webapi_HTMLFormElement" "reset"

#cfg(target="wasm-gc")
fn html_form_element_check_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLFormElement" "checkValidity"

#cfg(target="wasm-gc")
fn html_form_element_report_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLFormElement" "reportValidity"