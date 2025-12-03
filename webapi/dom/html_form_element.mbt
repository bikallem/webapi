// Auto-generated MoonBit bindings for HTMLFormElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window,
//  LegacyOverrideBuiltIns,
//  LegacyUnenumerableNamedProperties]
// interface HTMLFormElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   [CEReactions, Reflect="accept-charset"] attribute DOMString acceptCharset;
//   [CEReactions, ReflectSetter] attribute USVString action;
//   [CEReactions] attribute DOMString autocomplete;
//   [CEReactions] attribute DOMString enctype;
//   [CEReactions] attribute DOMString encoding;
//   [CEReactions] attribute DOMString method;
//   [CEReactions, Reflect] attribute DOMString name;
//   [CEReactions, Reflect] attribute boolean noValidate;
//   [CEReactions, Reflect] attribute DOMString target;
//   [CEReactions, Reflect] attribute DOMString rel;
//   [SameObject, PutForwards=value, Reflect="rel"] readonly attribute DOMTokenList relList;
// 
//   [SameObject] readonly attribute HTMLFormControlsCollection elements;
//   readonly attribute unsigned long length;
//   getter Element (unsigned long index);
//   getter (RadioNodeList or Element) (DOMString name);
// 
//   undefined submit();
//   undefined requestSubmit(optional HTMLElement? submitter = null);
//   [CEReactions] undefined reset();
//   boolean checkValidity();
//   boolean reportValidity();
// };

///|
#external
pub type HTMLFormElement

///|
pub trait THTMLFormElement: TJsValue + THTMLElement {
  accept_charset(self : Self) -> String = _
  set_accept_charset(self : Self, value : String) -> Unit = _
  action(self : Self) -> String = _
  set_action(self : Self, value : String) -> Unit = _
  autocomplete(self : Self) -> String = _
  set_autocomplete(self : Self, value : String) -> Unit = _
  enctype(self : Self) -> String = _
  set_enctype(self : Self, value : String) -> Unit = _
  encoding(self : Self) -> String = _
  set_encoding(self : Self, value : String) -> Unit = _
  method_(self : Self) -> String = _
  set_method_(self : Self, value : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, value : String) -> Unit = _
  no_validate(self : Self) -> Bool = _
  set_no_validate(self : Self, value : Bool) -> Unit = _
  target(self : Self) -> String = _
  set_target(self : Self, value : String) -> Unit = _
  rel(self : Self) -> String = _
  set_rel(self : Self, value : String) -> Unit = _
  rel_list(self : Self) -> DOMTokenList = _
  elements(self : Self) -> JsValue = _
  length(self : Self) -> Int = _
  submit(self : Self) -> Unit = _
  request_submit(self : Self, submitter? : HTMLElement) -> Unit = _
  reset(self : Self) -> Unit = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
}

///|
pub impl THTMLElement for HTMLFormElement

///|
pub impl THTMLFormElement for HTMLFormElement

///|
pub impl TJsValue for HTMLFormElement with to_js(self : HTMLFormElement) -> JsValue = "%identity"

///|
pub fn HTMLFormElement::new() -> HTMLFormElement = "webapi_HTMLFormElement" "new"

///|
fn html_form_element_submit_ffi(obj : JsValue) -> Unit = "webapi_HTMLFormElement" "submit"

///|
impl THTMLFormElement with submit(self : Self) -> Unit {
  html_form_element_submit_ffi(TJsValue::to_js(self))
}

///|
fn html_form_element_request_submit_ffi(
  obj : JsValue,
  submitter : JsValue,
) -> Unit = "webapi_HTMLFormElement" "requestSubmit"

///|
impl THTMLFormElement with request_submit(self : Self, submitter? : HTMLElement) -> Unit {
  let submitter_js = opt_to_js(submitter)
  html_form_element_request_submit_ffi(TJsValue::to_js(self), submitter_js)
}

///|
fn html_form_element_reset_ffi(obj : JsValue) -> Unit = "webapi_HTMLFormElement" "reset"

///|
impl THTMLFormElement with reset(self : Self) -> Unit {
  html_form_element_reset_ffi(TJsValue::to_js(self))
}

///|
fn html_form_element_check_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "checkValidity"

///|
impl THTMLFormElement with check_validity(self : Self) -> Bool {
  html_form_element_check_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_form_element_report_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "reportValidity"

///|
impl THTMLFormElement with report_validity(self : Self) -> Bool {
  html_form_element_report_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_form_element_accept_charset_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "acceptCharset"

///|
impl THTMLFormElement with accept_charset(self : Self) -> String {
  html_form_element_accept_charset_ffi(self.to_js())
}

///|
fn html_form_element_set_accept_charset_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLFormElement" "set_acceptCharset"

///|
impl THTMLFormElement with set_accept_charset(self : Self, value : String) -> Unit {
  html_form_element_set_accept_charset_ffi(self.to_js(), value)
}

///|
fn html_form_element_action_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "action"

///|
impl THTMLFormElement with action(self : Self) -> String {
  html_form_element_action_ffi(self.to_js())
}

///|
fn html_form_element_set_action_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFormElement" "set_action"

///|
impl THTMLFormElement with set_action(self : Self, value : String) -> Unit {
  html_form_element_set_action_ffi(self.to_js(), value)
}

///|
fn html_form_element_autocomplete_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "autocomplete"

///|
impl THTMLFormElement with autocomplete(self : Self) -> String {
  html_form_element_autocomplete_ffi(self.to_js())
}

///|
fn html_form_element_set_autocomplete_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLFormElement" "set_autocomplete"

///|
impl THTMLFormElement with set_autocomplete(self : Self, value : String) -> Unit {
  html_form_element_set_autocomplete_ffi(self.to_js(), value)
}

///|
fn html_form_element_enctype_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "enctype"

///|
impl THTMLFormElement with enctype(self : Self) -> String {
  html_form_element_enctype_ffi(self.to_js())
}

///|
fn html_form_element_set_enctype_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFormElement" "set_enctype"

///|
impl THTMLFormElement with set_enctype(self : Self, value : String) -> Unit {
  html_form_element_set_enctype_ffi(self.to_js(), value)
}

///|
fn html_form_element_encoding_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "encoding"

///|
impl THTMLFormElement with encoding(self : Self) -> String {
  html_form_element_encoding_ffi(self.to_js())
}

///|
fn html_form_element_set_encoding_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFormElement" "set_encoding"

///|
impl THTMLFormElement with set_encoding(self : Self, value : String) -> Unit {
  html_form_element_set_encoding_ffi(self.to_js(), value)
}

///|
fn html_form_element_method_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "method"

///|
impl THTMLFormElement with method_(self : Self) -> String {
  html_form_element_method_ffi(self.to_js())
}

///|
fn html_form_element_set_method_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFormElement" "set_method"

///|
impl THTMLFormElement with set_method_(self : Self, value : String) -> Unit {
  html_form_element_set_method_ffi(self.to_js(), value)
}

///|
fn html_form_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "name"

///|
impl THTMLFormElement with name(self : Self) -> String {
  html_form_element_name_ffi(self.to_js())
}

///|
fn html_form_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFormElement" "set_name"

///|
impl THTMLFormElement with set_name(self : Self, value : String) -> Unit {
  html_form_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_form_element_no_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLFormElement" "noValidate"

///|
impl THTMLFormElement with no_validate(self : Self) -> Bool {
  html_form_element_no_validate_ffi(self.to_js())
}

///|
fn html_form_element_set_no_validate_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLFormElement" "set_noValidate"

///|
impl THTMLFormElement with set_no_validate(self : Self, value : Bool) -> Unit {
  html_form_element_set_no_validate_ffi(self.to_js(), value)
}

///|
fn html_form_element_target_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "target"

///|
impl THTMLFormElement with target(self : Self) -> String {
  html_form_element_target_ffi(self.to_js())
}

///|
fn html_form_element_set_target_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFormElement" "set_target"

///|
impl THTMLFormElement with set_target(self : Self, value : String) -> Unit {
  html_form_element_set_target_ffi(self.to_js(), value)
}

///|
fn html_form_element_rel_ffi(obj : JsValue) -> String = "webapi_HTMLFormElement" "rel"

///|
impl THTMLFormElement with rel(self : Self) -> String {
  html_form_element_rel_ffi(self.to_js())
}

///|
fn html_form_element_set_rel_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFormElement" "set_rel"

///|
impl THTMLFormElement with set_rel(self : Self, value : String) -> Unit {
  html_form_element_set_rel_ffi(self.to_js(), value)
}

///|
fn html_form_element_rel_list_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "relList"

///|
impl THTMLFormElement with rel_list(self : Self) -> DOMTokenList {
  html_form_element_rel_list_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_form_element_elements_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFormElement" "elements"

///|
impl THTMLFormElement with elements(self : Self) -> JsValue {
  html_form_element_elements_ffi(self.to_js())
}

///|
fn html_form_element_length_ffi(obj : JsValue) -> Int = "webapi_HTMLFormElement" "length"

///|
impl THTMLFormElement with length(self : Self) -> Int {
  html_form_element_length_ffi(self.to_js())
}
