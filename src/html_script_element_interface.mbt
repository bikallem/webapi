// Do not edit. This file is generated.
// MoonBit type: HTMLScriptElement
// Specifications: html.idl

///|
/// [HTMLScriptElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement)
#external
pub type HTMLScriptElement

///|
pub impl TJsValue for HTMLScriptElement with to_js(self : HTMLScriptElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLScriptElement with from_js_any(value : JsAny) -> HTMLScriptElement = "%identity"

///|
pub fn[T : THTMLScriptElement] HTMLScriptElement::into(
  self : HTMLScriptElement,
) -> T = "%identity"

///|
pub impl THTMLScriptElement for HTMLScriptElement

///|
pub impl THTMLElement for HTMLScriptElement

///|
pub impl TElement for HTMLScriptElement

///|
pub impl TNode for HTMLScriptElement

///|
pub impl TEventTarget for HTMLScriptElement

///|
pub fn HTMLScriptElement::new() -> HTMLScriptElement {
  html_script_element_new_ffi()
}

///|
/// [HTMLScriptElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement) interface.
pub trait THTMLScriptElement: THTMLElement {
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  no_module(self : Self) -> Bool = _
  set_no_module(self : Self, no_module : Bool) -> Unit = _
  async_(self : Self) -> Bool = _
  set_async_(self : Self, async_ : Bool) -> Unit = _
  defer_(self : Self) -> Bool = _
  set_defer_(self : Self, defer_ : Bool) -> Unit = _
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
  charset(self : Self) -> String = _
  set_charset(self : Self, charset : String) -> Unit = _
  event(self : Self) -> String = _
  set_event(self : Self, event : String) -> Unit = _
  html_for(self : Self) -> String = _
  set_html_for(self : Self, html_for : String) -> Unit = _
}

///|
/// [HTMLScriptElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/type)
impl THTMLScriptElement with type_(self : Self) -> String {
  html_script_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/type)
impl THTMLScriptElement with set_type_(self : Self, type_ : String) -> Unit {
  html_script_element_set_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
/// [HTMLScriptElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/src)
impl THTMLScriptElement with src(self : Self) -> String {
  html_script_element_src_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/src)
impl THTMLScriptElement with set_src(self : Self, src : String) -> Unit {
  html_script_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
/// [HTMLScriptElement.noModule](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/noModule)
impl THTMLScriptElement with no_module(self : Self) -> Bool {
  html_script_element_no_module_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.noModule](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/noModule)
impl THTMLScriptElement with set_no_module(self : Self, no_module : Bool) -> Unit {
  html_script_element_set_no_module_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(no_module),
  )
}

///|
/// [HTMLScriptElement.async](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/async)
impl THTMLScriptElement with async_(self : Self) -> Bool {
  html_script_element_async_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.async](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/async)
impl THTMLScriptElement with set_async_(self : Self, async_ : Bool) -> Unit {
  html_script_element_set_async_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(async_),
  )
}

///|
/// [HTMLScriptElement.defer](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/defer)
impl THTMLScriptElement with defer_(self : Self) -> Bool {
  html_script_element_defer_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.defer](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/defer)
impl THTMLScriptElement with set_defer_(self : Self, defer_ : Bool) -> Unit {
  html_script_element_set_defer_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(defer_),
  )
}

///|
/// [HTMLScriptElement.blocking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/blocking)
impl THTMLScriptElement with blocking(self : Self) -> DOMTokenList {
  html_script_element_blocking_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/crossOrigin)
impl THTMLScriptElement with cross_origin(self : Self) -> String {
  html_script_element_cross_origin_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/crossOrigin)
impl THTMLScriptElement with set_cross_origin(
  self : Self,
  cross_origin : String,
) -> Unit {
  html_script_element_set_cross_origin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cross_origin),
  )
}

///|
/// [HTMLScriptElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/referrerPolicy)
impl THTMLScriptElement with referrer_policy(self : Self) -> String {
  html_script_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/referrerPolicy)
impl THTMLScriptElement with set_referrer_policy(
  self : Self,
  referrer_policy : String,
) -> Unit {
  html_script_element_set_referrer_policy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(referrer_policy),
  )
}

///|
/// [HTMLScriptElement.integrity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/integrity)
impl THTMLScriptElement with integrity(self : Self) -> String {
  html_script_element_integrity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.integrity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/integrity)
impl THTMLScriptElement with set_integrity(self : Self, integrity : String) -> Unit {
  html_script_element_set_integrity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(integrity),
  )
}

///|
/// [HTMLScriptElement.fetchPriority](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/fetchPriority)
impl THTMLScriptElement with fetch_priority(self : Self) -> String {
  html_script_element_fetch_priority_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.fetchPriority](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/fetchPriority)
impl THTMLScriptElement with set_fetch_priority(
  self : Self,
  fetch_priority : String,
) -> Unit {
  html_script_element_set_fetch_priority_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(fetch_priority),
  )
}

///|
/// [HTMLScriptElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/text)
impl THTMLScriptElement with text(self : Self) -> String {
  html_script_element_text_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/text)
impl THTMLScriptElement with set_text(self : Self, text : String) -> Unit {
  html_script_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
/// [HTMLScriptElement.supports](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/supports)
pub fn HTMLScriptElement::supports(type_ : String) -> Bool {
  html_script_element_supports_ffi(TJsValue::to_js(type_))
}

///|
/// [HTMLScriptElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/charset)
impl THTMLScriptElement with charset(self : Self) -> String {
  html_script_element_charset_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/charset)
impl THTMLScriptElement with set_charset(self : Self, charset : String) -> Unit {
  html_script_element_set_charset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charset),
  )
}

///|
/// [HTMLScriptElement.event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/event)
impl THTMLScriptElement with event(self : Self) -> String {
  html_script_element_event_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/event)
impl THTMLScriptElement with set_event(self : Self, event : String) -> Unit {
  html_script_element_set_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event),
  )
}

///|
/// [HTMLScriptElement.htmlFor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/htmlFor)
impl THTMLScriptElement with html_for(self : Self) -> String {
  html_script_element_html_for_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLScriptElement.htmlFor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement/htmlFor)
impl THTMLScriptElement with set_html_for(self : Self, html_for : String) -> Unit {
  html_script_element_set_html_for_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(html_for),
  )
}

///|
#cfg(target="js")
extern "js" fn html_script_element_new_ffi() -> HTMLScriptElement = "() => new HTMLScriptElement()"

///|
#cfg(target="js")
extern "js" fn html_script_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_script_element_type_ffi(obj : JsValue) -> String {
  html_script_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_src_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn html_script_element_src_ffi(obj : JsValue) -> String {
  html_script_element_src_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_no_module_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.noModule"

///|
#cfg(target="js")
fn html_script_element_no_module_ffi(obj : JsValue) -> Bool {
  html_script_element_no_module_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_no_module_ffi(
  obj : JsValue,
  no_module : JsValue,
) -> Unit = "(obj, noModule) => { obj.noModule = noModule; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_async_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.async"

///|
#cfg(target="js")
fn html_script_element_async_ffi(obj : JsValue) -> Bool {
  html_script_element_async_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_async_ffi(
  obj : JsValue,
  async_ : JsValue,
) -> Unit = "(obj, async) => { obj.async = async; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_defer_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.defer"

///|
#cfg(target="js")
fn html_script_element_defer_ffi(obj : JsValue) -> Bool {
  html_script_element_defer_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_defer_ffi(
  obj : JsValue,
  defer_ : JsValue,
) -> Unit = "(obj, defer) => { obj.defer = defer; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_blocking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.blocking"

///|
#cfg(target="js")
fn html_script_element_blocking_ffi(obj : JsValue) -> DOMTokenList {
  html_script_element_blocking_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_cross_origin_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.crossOrigin"

///|
#cfg(target="js")
fn html_script_element_cross_origin_ffi(obj : JsValue) -> String {
  html_script_element_cross_origin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_referrer_policy_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.referrerPolicy"

///|
#cfg(target="js")
fn html_script_element_referrer_policy_ffi(obj : JsValue) -> String {
  html_script_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_integrity_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.integrity"

///|
#cfg(target="js")
fn html_script_element_integrity_ffi(obj : JsValue) -> String {
  html_script_element_integrity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_integrity_ffi(
  obj : JsValue,
  integrity : JsValue,
) -> Unit = "(obj, integrity) => { obj.integrity = integrity; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_fetch_priority_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fetchPriority"

///|
#cfg(target="js")
fn html_script_element_fetch_priority_ffi(obj : JsValue) -> String {
  html_script_element_fetch_priority_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_fetch_priority_ffi(
  obj : JsValue,
  fetch_priority : JsValue,
) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetchPriority; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.text"

///|
#cfg(target="js")
fn html_script_element_text_ffi(obj : JsValue) -> String {
  html_script_element_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_supports_ffi_js(type_ : JsValue) -> JsValue = "(type_) => HTMLScriptElement.supports(type_)"

///|
#cfg(target="js")
fn html_script_element_supports_ffi(type_ : JsValue) -> Bool {
  html_script_element_supports_ffi_js(type_).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_charset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.charset"

///|
#cfg(target="js")
fn html_script_element_charset_ffi(obj : JsValue) -> String {
  html_script_element_charset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_charset_ffi(
  obj : JsValue,
  charset : JsValue,
) -> Unit = "(obj, charset) => { obj.charset = charset; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_event_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.event"

///|
#cfg(target="js")
fn html_script_element_event_ffi(obj : JsValue) -> String {
  html_script_element_event_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_event_ffi(
  obj : JsValue,
  event : JsValue,
) -> Unit = "(obj, event) => { obj.event = event; }"

///|
#cfg(target="js")
extern "js" fn html_script_element_html_for_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.htmlFor"

///|
#cfg(target="js")
fn html_script_element_html_for_ffi(obj : JsValue) -> String {
  html_script_element_html_for_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_script_element_set_html_for_ffi(
  obj : JsValue,
  html_for : JsValue,
) -> Unit = "(obj, htmlFor) => { obj.htmlFor = htmlFor; }"

///|
#cfg(target="wasm-gc")
fn html_script_element_new_ffi() -> HTMLScriptElement = "webapi_HTMLScriptElement" "new"

///|
#cfg(target="wasm-gc")
fn html_script_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_script_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLScriptElement" "set_type"

///|
#cfg(target="wasm-gc")
fn html_script_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_src"

///|
#cfg(target="wasm-gc")
fn html_script_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_src_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLScriptElement" "set_src"

///|
#cfg(target="wasm-gc")
fn html_script_element_no_module_ffi(obj : JsValue) -> Bool = "webapi_HTMLScriptElement" "get_noModule"

///|
#cfg(target="wasm-gc")
fn html_script_element_set_no_module_ffi(
  obj : JsValue,
  no_module : JsValue,
) -> Unit = "webapi_HTMLScriptElement" "set_noModule"

///|
#cfg(target="wasm-gc")
fn html_script_element_async_ffi(obj : JsValue) -> Bool = "webapi_HTMLScriptElement" "get_async"

///|
#cfg(target="wasm-gc")
fn html_script_element_set_async_ffi(obj : JsValue, async_ : JsValue) -> Unit = "webapi_HTMLScriptElement" "set_async"

///|
#cfg(target="wasm-gc")
fn html_script_element_defer_ffi(obj : JsValue) -> Bool = "webapi_HTMLScriptElement" "get_defer"

///|
#cfg(target="wasm-gc")
fn html_script_element_set_defer_ffi(obj : JsValue, defer_ : JsValue) -> Unit = "webapi_HTMLScriptElement" "set_defer"

///|
#cfg(target="wasm-gc")
fn html_script_element_blocking_ffi(obj : JsValue) -> DOMTokenList = "webapi_HTMLScriptElement" "get_blocking"

///|
#cfg(target="wasm-gc")
fn html_script_element_cross_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_crossOrigin"

///|
#cfg(target="wasm-gc")
fn html_script_element_cross_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_cross_origin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "webapi_HTMLScriptElement" "set_crossOrigin"

///|
#cfg(target="wasm-gc")
fn html_script_element_referrer_policy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn html_script_element_referrer_policy_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_referrer_policy_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "webapi_HTMLScriptElement" "set_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn html_script_element_integrity_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_integrity"

///|
#cfg(target="wasm-gc")
fn html_script_element_integrity_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_integrity_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_integrity_ffi(
  obj : JsValue,
  integrity : JsValue,
) -> Unit = "webapi_HTMLScriptElement" "set_integrity"

///|
#cfg(target="wasm-gc")
fn html_script_element_fetch_priority_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_fetchPriority"

///|
#cfg(target="wasm-gc")
fn html_script_element_fetch_priority_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_fetch_priority_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_fetch_priority_ffi(
  obj : JsValue,
  fetch_priority : JsValue,
) -> Unit = "webapi_HTMLScriptElement" "set_fetchPriority"

///|
#cfg(target="wasm-gc")
fn html_script_element_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_text"

///|
#cfg(target="wasm-gc")
fn html_script_element_text_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_text_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_text_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_HTMLScriptElement" "set_text"

///|
#cfg(target="wasm-gc")
fn html_script_element_supports_ffi(type_ : JsValue) -> Bool = "webapi_HTMLScriptElement" "supports"

///|
#cfg(target="wasm-gc")
fn html_script_element_charset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_charset"

///|
#cfg(target="wasm-gc")
fn html_script_element_charset_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_charset_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_charset_ffi(
  obj : JsValue,
  charset : JsValue,
) -> Unit = "webapi_HTMLScriptElement" "set_charset"

///|
#cfg(target="wasm-gc")
fn html_script_element_event_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_event"

///|
#cfg(target="wasm-gc")
fn html_script_element_event_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_event_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_event_ffi(obj : JsValue, event : JsValue) -> Unit = "webapi_HTMLScriptElement" "set_event"

///|
#cfg(target="wasm-gc")
fn html_script_element_html_for_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLScriptElement" "get_htmlFor"

///|
#cfg(target="wasm-gc")
fn html_script_element_html_for_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_script_element_html_for_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_script_element_set_html_for_ffi(
  obj : JsValue,
  html_for : JsValue,
) -> Unit = "webapi_HTMLScriptElement" "set_htmlFor"
