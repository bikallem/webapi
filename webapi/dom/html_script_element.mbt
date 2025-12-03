// Auto-generated MoonBit bindings for HTMLScriptElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLScriptElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   [CEReactions, Reflect] attribute DOMString type;
//   [CEReactions, ReflectURL] attribute USVString src;
//   [CEReactions, Reflect] attribute boolean noModule;
//   [CEReactions] attribute boolean async;
//   [CEReactions, Reflect] attribute boolean defer;
//   [SameObject, PutForwards=value, Reflect] readonly attribute DOMTokenList blocking;
//   [CEReactions] attribute DOMString? crossOrigin;
//   [CEReactions] attribute DOMString referrerPolicy;
//   [CEReactions, Reflect] attribute DOMString integrity;
//   [CEReactions] attribute DOMString fetchPriority;
// 
//   [CEReactions] attribute DOMString text;
// 
//   static boolean supports(DOMString type);
// 
//   // also has obsolete members
// };
// 
// partial interface HTMLScriptElement {
//   [CEReactions, Reflect] attribute DOMString charset;
//   [CEReactions, Reflect] attribute DOMString event;
//   [CEReactions, Reflect="for"] attribute DOMString htmlFor;
// };

///|
#external
pub type HTMLScriptElement

///|
pub trait THTMLScriptElement: TJsValue + THTMLElement {
  type_(self : Self) -> String = _
  set_type_(self : Self, value : String) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, value : String) -> Unit = _
  no_module(self : Self) -> Bool = _
  set_no_module(self : Self, value : Bool) -> Unit = _
  async(self : Self) -> Bool = _
  set_async(self : Self, value : Bool) -> Unit = _
  defer(self : Self) -> Bool = _
  set_defer(self : Self, value : Bool) -> Unit = _
  blocking(self : Self) -> DOMTokenList = _
  cross_origin(self : Self) -> String? = _
  set_cross_origin(self : Self, value : String) -> Unit = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, value : String) -> Unit = _
  integrity(self : Self) -> String = _
  set_integrity(self : Self, value : String) -> Unit = _
  fetch_priority(self : Self) -> String = _
  set_fetch_priority(self : Self, value : String) -> Unit = _
  text(self : Self) -> String = _
  set_text(self : Self, value : String) -> Unit = _
  charset(self : Self) -> String = _
  set_charset(self : Self, value : String) -> Unit = _
  event(self : Self) -> String = _
  set_event(self : Self, value : String) -> Unit = _
  html_for(self : Self) -> String = _
  set_html_for(self : Self, value : String) -> Unit = _
}

///|
pub impl THTMLElement for HTMLScriptElement

///|
pub impl THTMLScriptElement for HTMLScriptElement

///|
pub impl TJsValue for HTMLScriptElement with to_js(self : HTMLScriptElement) -> JsValue = "%identity"

///|
pub fn HTMLScriptElement::new() -> HTMLScriptElement = "webapi_HTMLScriptElement" "new"

///|
pub fn HTMLScriptElement::supports(type_ : String) -> JsValue = "webapi_HTMLScriptElement" "supports"

///|
fn html_script_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "type"

///|
impl THTMLScriptElement with type_(self : Self) -> String {
  html_script_element_type_ffi(self.to_js())
}

///|
fn html_script_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_type"

///|
impl THTMLScriptElement with set_type_(self : Self, value : String) -> Unit {
  html_script_element_set_type_ffi(self.to_js(), value)
}

///|
fn html_script_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "src"

///|
impl THTMLScriptElement with src(self : Self) -> String {
  html_script_element_src_ffi(self.to_js())
}

///|
fn html_script_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_src"

///|
impl THTMLScriptElement with set_src(self : Self, value : String) -> Unit {
  html_script_element_set_src_ffi(self.to_js(), value)
}

///|
fn html_script_element_no_module_ffi(obj : JsValue) -> Bool = "webapi_HTMLScriptElement" "noModule"

///|
impl THTMLScriptElement with no_module(self : Self) -> Bool {
  html_script_element_no_module_ffi(self.to_js())
}

///|
fn html_script_element_set_no_module_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLScriptElement" "set_noModule"

///|
impl THTMLScriptElement with set_no_module(self : Self, value : Bool) -> Unit {
  html_script_element_set_no_module_ffi(self.to_js(), value)
}

///|
fn html_script_element_async_ffi(obj : JsValue) -> Bool = "webapi_HTMLScriptElement" "async"

///|
impl THTMLScriptElement with async(self : Self) -> Bool {
  html_script_element_async_ffi(self.to_js())
}

///|
fn html_script_element_set_async_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLScriptElement" "set_async"

///|
impl THTMLScriptElement with set_async(self : Self, value : Bool) -> Unit {
  html_script_element_set_async_ffi(self.to_js(), value)
}

///|
fn html_script_element_defer_ffi(obj : JsValue) -> Bool = "webapi_HTMLScriptElement" "defer"

///|
impl THTMLScriptElement with defer(self : Self) -> Bool {
  html_script_element_defer_ffi(self.to_js())
}

///|
fn html_script_element_set_defer_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLScriptElement" "set_defer"

///|
impl THTMLScriptElement with set_defer(self : Self, value : Bool) -> Unit {
  html_script_element_set_defer_ffi(self.to_js(), value)
}

///|
fn html_script_element_blocking_ffi(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "blocking"

///|
impl THTMLScriptElement with blocking(self : Self) -> DOMTokenList {
  html_script_element_blocking_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_script_element_cross_origin_ffi(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "crossOrigin"

///|
impl THTMLScriptElement with cross_origin(self : Self) -> String? {
  html_script_element_cross_origin_ffi(self.to_js()).as_option()
}

///|
fn html_script_element_set_cross_origin_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_crossOrigin"

///|
impl THTMLScriptElement with set_cross_origin(self : Self, value : String) -> Unit {
  html_script_element_set_cross_origin_ffi(self.to_js(), value)
}

///|
fn html_script_element_referrer_policy_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "referrerPolicy"

///|
impl THTMLScriptElement with referrer_policy(self : Self) -> String {
  html_script_element_referrer_policy_ffi(self.to_js())
}

///|
fn html_script_element_set_referrer_policy_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_referrerPolicy"

///|
impl THTMLScriptElement with set_referrer_policy(self : Self, value : String) -> Unit {
  html_script_element_set_referrer_policy_ffi(self.to_js(), value)
}

///|
fn html_script_element_integrity_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "integrity"

///|
impl THTMLScriptElement with integrity(self : Self) -> String {
  html_script_element_integrity_ffi(self.to_js())
}

///|
fn html_script_element_set_integrity_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_integrity"

///|
impl THTMLScriptElement with set_integrity(self : Self, value : String) -> Unit {
  html_script_element_set_integrity_ffi(self.to_js(), value)
}

///|
fn html_script_element_fetch_priority_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "fetchPriority"

///|
impl THTMLScriptElement with fetch_priority(self : Self) -> String {
  html_script_element_fetch_priority_ffi(self.to_js())
}

///|
fn html_script_element_set_fetch_priority_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_fetchPriority"

///|
impl THTMLScriptElement with set_fetch_priority(self : Self, value : String) -> Unit {
  html_script_element_set_fetch_priority_ffi(self.to_js(), value)
}

///|
fn html_script_element_text_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "text"

///|
impl THTMLScriptElement with text(self : Self) -> String {
  html_script_element_text_ffi(self.to_js())
}

///|
fn html_script_element_set_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_text"

///|
impl THTMLScriptElement with set_text(self : Self, value : String) -> Unit {
  html_script_element_set_text_ffi(self.to_js(), value)
}

///|
fn html_script_element_charset_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "charset"

///|
impl THTMLScriptElement with charset(self : Self) -> String {
  html_script_element_charset_ffi(self.to_js())
}

///|
fn html_script_element_set_charset_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_charset"

///|
impl THTMLScriptElement with set_charset(self : Self, value : String) -> Unit {
  html_script_element_set_charset_ffi(self.to_js(), value)
}

///|
fn html_script_element_event_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "event"

///|
impl THTMLScriptElement with event(self : Self) -> String {
  html_script_element_event_ffi(self.to_js())
}

///|
fn html_script_element_set_event_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_event"

///|
impl THTMLScriptElement with set_event(self : Self, value : String) -> Unit {
  html_script_element_set_event_ffi(self.to_js(), value)
}

///|
fn html_script_element_html_for_ffi(obj : JsValue) -> String = "webapi_HTMLScriptElement" "htmlFor"

///|
impl THTMLScriptElement with html_for(self : Self) -> String {
  html_script_element_html_for_ffi(self.to_js())
}

///|
fn html_script_element_set_html_for_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLScriptElement" "set_htmlFor"

///|
impl THTMLScriptElement with set_html_for(self : Self, value : String) -> Unit {
  html_script_element_set_html_for_ffi(self.to_js(), value)
}