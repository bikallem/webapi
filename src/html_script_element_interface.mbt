#external
pub type HTMLScriptElement

pub impl TJsValue for HTMLScriptElement with to_js(self: HTMLScriptElement) -> JsValue = "%identity"

pub fn[T: THTMLScriptElement] HTMLScriptElement::into(self : HTMLScriptElement) -> T = "%identity"

pub impl THTMLScriptElement for HTMLScriptElement

pub impl THTMLElement for HTMLScriptElement

pub impl TElement for HTMLScriptElement

pub impl TNode for HTMLScriptElement

pub impl TEventTarget for HTMLScriptElement

extern "js" fn html_script_element_new_ffi() -> HTMLScriptElement = "() => new HTMLScriptElement()"

pub fn HTMLScriptElement::new() -> HTMLScriptElement {
  html_script_element_new_ffi()
}

pub trait THTMLScriptElement: THTMLElement {
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  no_module(self : Self) -> Bool = _
  set_no_module(self : Self, no_module : Bool) -> Unit = _
  async_(self : Self) -> Bool = _
  set_async_(self : Self, async_ : Bool) -> Unit = _
  defer(self : Self) -> Bool = _
  set_defer(self : Self, defer : Bool) -> Unit = _
  blocking(self : Self) -> DOMTokenList = _
  cross_origin(self : Self) -> String = _
  set_cross_origin(self : Self, cross_origin : String) -> Unit = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, referrer_policy : String) -> Unit = _
  integrity(self : Self) -> String = _
  set_integrity(self : Self, integrity : String) -> Unit = _
  fetch_priority(self : Self) -> String = _
  set_fetch_priority(self : Self, fetch_priority : String) -> Unit = _
  text(self : Self) -> String = _
  set_text(self : Self, text : String) -> Unit = _
  supports(type_ : String) -> Bool = _
  charset(self : Self) -> String = _
  set_charset(self : Self, charset : String) -> Unit = _
  event(self : Self) -> String = _
  set_event(self : Self, event : String) -> Unit = _
  html_for(self : Self) -> String = _
  set_html_for(self : Self, html_for : String) -> Unit = _
}

extern "js" fn html_script_element_type_ffi(obj: JsValue) -> String = "(obj) => obj.type"

impl THTMLScriptElement with type_(self : Self) -> String {
  html_script_element_type_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

impl THTMLScriptElement with set_type_(self : Self, type_ : String) -> Unit {
  html_script_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

extern "js" fn html_script_element_src_ffi(obj: JsValue) -> String = "(obj) => obj.src"

impl THTMLScriptElement with src(self : Self) -> String {
  html_script_element_src_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

impl THTMLScriptElement with set_src(self : Self, src : String) -> Unit {
  html_script_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

extern "js" fn html_script_element_no_module_ffi(obj: JsValue) -> Bool = "(obj) => obj.noModule"

impl THTMLScriptElement with no_module(self : Self) -> Bool {
  html_script_element_no_module_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_no_module_ffi(obj: JsValue, no_module: JsValue) -> Unit = "(obj, noModule) => { obj.noModule = noModule; }"

impl THTMLScriptElement with set_no_module(self : Self, no_module : Bool) -> Unit {
  html_script_element_set_no_module_ffi(TJsValue::to_js(self), TJsValue::to_js(no_module))
}

extern "js" fn html_script_element_async_ffi(obj: JsValue) -> Bool = "(obj) => obj.async"

impl THTMLScriptElement with async_(self : Self) -> Bool {
  html_script_element_async_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_async_ffi(obj: JsValue, async_: JsValue) -> Unit = "(obj, async) => { obj.async = async; }"

impl THTMLScriptElement with set_async_(self : Self, async_ : Bool) -> Unit {
  html_script_element_set_async_ffi(TJsValue::to_js(self), TJsValue::to_js(async_))
}

extern "js" fn html_script_element_defer_ffi(obj: JsValue) -> Bool = "(obj) => obj.defer"

impl THTMLScriptElement with defer(self : Self) -> Bool {
  html_script_element_defer_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_defer_ffi(obj: JsValue, defer: JsValue) -> Unit = "(obj, defer) => { obj.defer = defer; }"

impl THTMLScriptElement with set_defer(self : Self, defer : Bool) -> Unit {
  html_script_element_set_defer_ffi(TJsValue::to_js(self), TJsValue::to_js(defer))
}

extern "js" fn html_script_element_blocking_ffi(obj: JsValue) -> DOMTokenList = "(obj) => obj.blocking"

impl THTMLScriptElement with blocking(self : Self) -> DOMTokenList {
  html_script_element_blocking_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_cross_origin_ffi(obj: JsValue) -> String = "(obj) => obj.crossOrigin"

impl THTMLScriptElement with cross_origin(self : Self) -> String {
  html_script_element_cross_origin_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

impl THTMLScriptElement with set_cross_origin(self : Self, cross_origin : String) -> Unit {
  html_script_element_set_cross_origin_ffi(TJsValue::to_js(self), TJsValue::to_js(cross_origin))
}

extern "js" fn html_script_element_referrer_policy_ffi(obj: JsValue) -> String = "(obj) => obj.referrerPolicy"

impl THTMLScriptElement with referrer_policy(self : Self) -> String {
  html_script_element_referrer_policy_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

impl THTMLScriptElement with set_referrer_policy(self : Self, referrer_policy : String) -> Unit {
  html_script_element_set_referrer_policy_ffi(TJsValue::to_js(self), TJsValue::to_js(referrer_policy))
}

extern "js" fn html_script_element_integrity_ffi(obj: JsValue) -> String = "(obj) => obj.integrity"

impl THTMLScriptElement with integrity(self : Self) -> String {
  html_script_element_integrity_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_integrity_ffi(obj: JsValue, integrity: JsValue) -> Unit = "(obj, integrity) => { obj.integrity = integrity; }"

impl THTMLScriptElement with set_integrity(self : Self, integrity : String) -> Unit {
  html_script_element_set_integrity_ffi(TJsValue::to_js(self), TJsValue::to_js(integrity))
}

extern "js" fn html_script_element_fetch_priority_ffi(obj: JsValue) -> String = "(obj) => obj.fetchPriority"

impl THTMLScriptElement with fetch_priority(self : Self) -> String {
  html_script_element_fetch_priority_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_fetch_priority_ffi(obj: JsValue, fetch_priority: JsValue) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetchPriority; }"

impl THTMLScriptElement with set_fetch_priority(self : Self, fetch_priority : String) -> Unit {
  html_script_element_set_fetch_priority_ffi(TJsValue::to_js(self), TJsValue::to_js(fetch_priority))
}

extern "js" fn html_script_element_text_ffi(obj: JsValue) -> String = "(obj) => obj.text"

impl THTMLScriptElement with text(self : Self) -> String {
  html_script_element_text_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_text_ffi(obj: JsValue, text: JsValue) -> Unit = "(obj, text) => { obj.text = text; }"

impl THTMLScriptElement with set_text(self : Self, text : String) -> Unit {
  html_script_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

extern "js" fn html_script_element_supports_ffi(type_: JsValue) -> Bool = "(type_) => { HTMLScriptElement.supports(type_) }"

impl THTMLScriptElement with supports(type_ : String) -> Bool {
  html_script_element_supports_ffi(TJsValue::to_js(type_))
}

extern "js" fn html_script_element_charset_ffi(obj: JsValue) -> String = "(obj) => obj.charset"

impl THTMLScriptElement with charset(self : Self) -> String {
  html_script_element_charset_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_charset_ffi(obj: JsValue, charset: JsValue) -> Unit = "(obj, charset) => { obj.charset = charset; }"

impl THTMLScriptElement with set_charset(self : Self, charset : String) -> Unit {
  html_script_element_set_charset_ffi(TJsValue::to_js(self), TJsValue::to_js(charset))
}

extern "js" fn html_script_element_event_ffi(obj: JsValue) -> String = "(obj) => obj.event"

impl THTMLScriptElement with event(self : Self) -> String {
  html_script_element_event_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_event_ffi(obj: JsValue, event: JsValue) -> Unit = "(obj, event) => { obj.event = event; }"

impl THTMLScriptElement with set_event(self : Self, event : String) -> Unit {
  html_script_element_set_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
}

extern "js" fn html_script_element_html_for_ffi(obj: JsValue) -> String = "(obj) => obj.htmlFor"

impl THTMLScriptElement with html_for(self : Self) -> String {
  html_script_element_html_for_ffi(TJsValue::to_js(self))
}

extern "js" fn html_script_element_set_html_for_ffi(obj: JsValue, html_for: JsValue) -> Unit = "(obj, htmlFor) => { obj.htmlFor = htmlFor; }"

impl THTMLScriptElement with set_html_for(self : Self, html_for : String) -> Unit {
  html_script_element_set_html_for_ffi(TJsValue::to_js(self), TJsValue::to_js(html_for))
}
