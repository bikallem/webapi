// Do not edit. This file is generated.
// MoonBit type: HTMLBodyElement
// Specifications: html.idl

///|
/// [HTMLBodyElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement)
#external
pub type HTMLBodyElement

///|
pub impl TJsValue for HTMLBodyElement with to_js(self : HTMLBodyElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLBodyElement] HTMLBodyElement::into(self : HTMLBodyElement) -> T = "%identity"

///|
pub impl THTMLBodyElement for HTMLBodyElement

///|
pub impl THTMLElement for HTMLBodyElement

///|
pub impl TElement for HTMLBodyElement

///|
pub impl TNode for HTMLBodyElement

///|
pub impl TEventTarget for HTMLBodyElement

///|
extern "js" fn html_body_element_new_ffi() -> HTMLBodyElement = "() => new HTMLBodyElement()"

///|
pub fn HTMLBodyElement::new() -> HTMLBodyElement {
  html_body_element_new_ffi()
}

///|
/// [HTMLBodyElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement) interface.
pub trait THTMLBodyElement: THTMLElement {
  text(self : Self) -> String = _
  set_text(self : Self, text : String) -> Unit = _
  link(self : Self) -> String = _
  set_link(self : Self, link : String) -> Unit = _
  v_link(self : Self) -> String = _
  set_v_link(self : Self, v_link : String) -> Unit = _
  a_link(self : Self) -> String = _
  set_a_link(self : Self, a_link : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, bg_color : String) -> Unit = _
  background(self : Self) -> String = _
  set_background(self : Self, background : String) -> Unit = _
  onafterprint(self : Self) -> EventHandler = _
  set_onafterprint(self : Self, onafterprint : EventHandler) -> Unit = _
  onbeforeprint(self : Self) -> EventHandler = _
  set_onbeforeprint(self : Self, onbeforeprint : EventHandler) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler = _
  set_onbeforeunload(self : Self, onbeforeunload : OnBeforeUnloadEventHandler) -> Unit = _
  onhashchange(self : Self) -> EventHandler = _
  set_onhashchange(self : Self, onhashchange : EventHandler) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, onlanguagechange : EventHandler) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, onoffline : EventHandler) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, ononline : EventHandler) -> Unit = _
  onpagehide(self : Self) -> EventHandler = _
  set_onpagehide(self : Self, onpagehide : EventHandler) -> Unit = _
  onpagereveal(self : Self) -> EventHandler = _
  set_onpagereveal(self : Self, onpagereveal : EventHandler) -> Unit = _
  onpageshow(self : Self) -> EventHandler = _
  set_onpageshow(self : Self, onpageshow : EventHandler) -> Unit = _
  onpageswap(self : Self) -> EventHandler = _
  set_onpageswap(self : Self, onpageswap : EventHandler) -> Unit = _
  onpopstate(self : Self) -> EventHandler = _
  set_onpopstate(self : Self, onpopstate : EventHandler) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, onrejectionhandled : EventHandler) -> Unit = _
  onstorage(self : Self) -> EventHandler = _
  set_onstorage(self : Self, onstorage : EventHandler) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(self : Self, onunhandledrejection : EventHandler) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, onunload : EventHandler) -> Unit = _
}

///|
extern "js" fn html_body_element_text_ffi(obj : JsValue) -> String = "(obj) => obj.text"

///|
/// [HTMLBodyElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/text)
impl THTMLBodyElement with text(self : Self) -> String {
  html_body_element_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"

///|
/// [HTMLBodyElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/text)
impl THTMLBodyElement with set_text(self : Self, text : String) -> Unit {
  html_body_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
extern "js" fn html_body_element_link_ffi(obj : JsValue) -> String = "(obj) => obj.link"

///|
/// [HTMLBodyElement.link](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/link)
impl THTMLBodyElement with link(self : Self) -> String {
  html_body_element_link_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_link_ffi(
  obj : JsValue,
  link : JsValue,
) -> Unit = "(obj, link) => { obj.link = link; }"

///|
/// [HTMLBodyElement.link](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/link)
impl THTMLBodyElement with set_link(self : Self, link : String) -> Unit {
  html_body_element_set_link_ffi(TJsValue::to_js(self), TJsValue::to_js(link))
}

///|
extern "js" fn html_body_element_v_link_ffi(obj : JsValue) -> String = "(obj) => obj.vLink"

///|
/// [HTMLBodyElement.vLink](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/vLink)
impl THTMLBodyElement with v_link(self : Self) -> String {
  html_body_element_v_link_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_v_link_ffi(
  obj : JsValue,
  v_link : JsValue,
) -> Unit = "(obj, vLink) => { obj.vLink = vLink; }"

///|
/// [HTMLBodyElement.vLink](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/vLink)
impl THTMLBodyElement with set_v_link(self : Self, v_link : String) -> Unit {
  html_body_element_set_v_link_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_link),
  )
}

///|
extern "js" fn html_body_element_a_link_ffi(obj : JsValue) -> String = "(obj) => obj.aLink"

///|
/// [HTMLBodyElement.aLink](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/aLink)
impl THTMLBodyElement with a_link(self : Self) -> String {
  html_body_element_a_link_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_a_link_ffi(
  obj : JsValue,
  a_link : JsValue,
) -> Unit = "(obj, aLink) => { obj.aLink = aLink; }"

///|
/// [HTMLBodyElement.aLink](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/aLink)
impl THTMLBodyElement with set_a_link(self : Self, a_link : String) -> Unit {
  html_body_element_set_a_link_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(a_link),
  )
}

///|
extern "js" fn html_body_element_bg_color_ffi(obj : JsValue) -> String = "(obj) => obj.bgColor"

///|
/// [HTMLBodyElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/bgColor)
impl THTMLBodyElement with bg_color(self : Self) -> String {
  html_body_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
/// [HTMLBodyElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/bgColor)
impl THTMLBodyElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_body_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}

///|
extern "js" fn html_body_element_background_ffi(obj : JsValue) -> String = "(obj) => obj.background"

///|
/// [HTMLBodyElement.background](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/background)
impl THTMLBodyElement with background(self : Self) -> String {
  html_body_element_background_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_background_ffi(
  obj : JsValue,
  background : JsValue,
) -> Unit = "(obj, background) => { obj.background = background; }"

///|
/// [HTMLBodyElement.background](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/background)
impl THTMLBodyElement with set_background(self : Self, background : String) -> Unit {
  html_body_element_set_background_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(background),
  )
}

///|
extern "js" fn html_body_element_onafterprint_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onafterprint"

///|
/// [HTMLBodyElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onafterprint)
impl THTMLBodyElement with onafterprint(self : Self) -> EventHandler {
  html_body_element_onafterprint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
/// [HTMLBodyElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onafterprint)
impl THTMLBodyElement with set_onafterprint(
  self : Self,
  onafterprint : EventHandler,
) -> Unit {
  html_body_element_set_onafterprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onafterprint),
  )
}

///|
extern "js" fn html_body_element_onbeforeprint_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onbeforeprint"

///|
/// [HTMLBodyElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onbeforeprint)
impl THTMLBodyElement with onbeforeprint(self : Self) -> EventHandler {
  html_body_element_onbeforeprint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
/// [HTMLBodyElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onbeforeprint)
impl THTMLBodyElement with set_onbeforeprint(
  self : Self,
  onbeforeprint : EventHandler,
) -> Unit {
  html_body_element_set_onbeforeprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeprint),
  )
}

///|
extern "js" fn html_body_element_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandler = "(obj) => obj.onbeforeunload"

///|
/// [HTMLBodyElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onbeforeunload)
impl THTMLBodyElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  html_body_element_onbeforeunload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
/// [HTMLBodyElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onbeforeunload)
impl THTMLBodyElement with set_onbeforeunload(
  self : Self,
  onbeforeunload : OnBeforeUnloadEventHandler,
) -> Unit {
  html_body_element_set_onbeforeunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeunload),
  )
}

///|
extern "js" fn html_body_element_onhashchange_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onhashchange"

///|
/// [HTMLBodyElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onhashchange)
impl THTMLBodyElement with onhashchange(self : Self) -> EventHandler {
  html_body_element_onhashchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
/// [HTMLBodyElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onhashchange)
impl THTMLBodyElement with set_onhashchange(
  self : Self,
  onhashchange : EventHandler,
) -> Unit {
  html_body_element_set_onhashchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onhashchange),
  )
}

///|
extern "js" fn html_body_element_onlanguagechange_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onlanguagechange"

///|
/// [HTMLBodyElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onlanguagechange)
impl THTMLBodyElement with onlanguagechange(self : Self) -> EventHandler {
  html_body_element_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
/// [HTMLBodyElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onlanguagechange)
impl THTMLBodyElement with set_onlanguagechange(
  self : Self,
  onlanguagechange : EventHandler,
) -> Unit {
  html_body_element_set_onlanguagechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onlanguagechange),
  )
}

///|
extern "js" fn html_body_element_onmessage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessage"

///|
/// [HTMLBodyElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onmessage)
impl THTMLBodyElement with onmessage(self : Self) -> EventHandler {
  html_body_element_onmessage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
/// [HTMLBodyElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onmessage)
impl THTMLBodyElement with set_onmessage(self : Self, onmessage : EventHandler) -> Unit {
  html_body_element_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessage),
  )
}

///|
extern "js" fn html_body_element_onmessageerror_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onmessageerror"

///|
/// [HTMLBodyElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onmessageerror)
impl THTMLBodyElement with onmessageerror(self : Self) -> EventHandler {
  html_body_element_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
/// [HTMLBodyElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onmessageerror)
impl THTMLBodyElement with set_onmessageerror(
  self : Self,
  onmessageerror : EventHandler,
) -> Unit {
  html_body_element_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}

///|
extern "js" fn html_body_element_onoffline_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onoffline"

///|
/// [HTMLBodyElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onoffline)
impl THTMLBodyElement with onoffline(self : Self) -> EventHandler {
  html_body_element_onoffline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
/// [HTMLBodyElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onoffline)
impl THTMLBodyElement with set_onoffline(self : Self, onoffline : EventHandler) -> Unit {
  html_body_element_set_onoffline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onoffline),
  )
}

///|
extern "js" fn html_body_element_ononline_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ononline"

///|
/// [HTMLBodyElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/ononline)
impl THTMLBodyElement with ononline(self : Self) -> EventHandler {
  html_body_element_ononline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
/// [HTMLBodyElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/ononline)
impl THTMLBodyElement with set_ononline(self : Self, ononline : EventHandler) -> Unit {
  html_body_element_set_ononline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ononline),
  )
}

///|
extern "js" fn html_body_element_onpagehide_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpagehide"

///|
/// [HTMLBodyElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpagehide)
impl THTMLBodyElement with onpagehide(self : Self) -> EventHandler {
  html_body_element_onpagehide_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
/// [HTMLBodyElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpagehide)
impl THTMLBodyElement with set_onpagehide(
  self : Self,
  onpagehide : EventHandler,
) -> Unit {
  html_body_element_set_onpagehide_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagehide),
  )
}

///|
extern "js" fn html_body_element_onpagereveal_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onpagereveal"

///|
/// [HTMLBodyElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpagereveal)
impl THTMLBodyElement with onpagereveal(self : Self) -> EventHandler {
  html_body_element_onpagereveal_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
/// [HTMLBodyElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpagereveal)
impl THTMLBodyElement with set_onpagereveal(
  self : Self,
  onpagereveal : EventHandler,
) -> Unit {
  html_body_element_set_onpagereveal_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagereveal),
  )
}

///|
extern "js" fn html_body_element_onpageshow_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpageshow"

///|
/// [HTMLBodyElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpageshow)
impl THTMLBodyElement with onpageshow(self : Self) -> EventHandler {
  html_body_element_onpageshow_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
/// [HTMLBodyElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpageshow)
impl THTMLBodyElement with set_onpageshow(
  self : Self,
  onpageshow : EventHandler,
) -> Unit {
  html_body_element_set_onpageshow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpageshow),
  )
}

///|
extern "js" fn html_body_element_onpageswap_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpageswap"

///|
/// [HTMLBodyElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpageswap)
impl THTMLBodyElement with onpageswap(self : Self) -> EventHandler {
  html_body_element_onpageswap_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
/// [HTMLBodyElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpageswap)
impl THTMLBodyElement with set_onpageswap(
  self : Self,
  onpageswap : EventHandler,
) -> Unit {
  html_body_element_set_onpageswap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpageswap),
  )
}

///|
extern "js" fn html_body_element_onpopstate_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpopstate"

///|
/// [HTMLBodyElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpopstate)
impl THTMLBodyElement with onpopstate(self : Self) -> EventHandler {
  html_body_element_onpopstate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
/// [HTMLBodyElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpopstate)
impl THTMLBodyElement with set_onpopstate(
  self : Self,
  onpopstate : EventHandler,
) -> Unit {
  html_body_element_set_onpopstate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpopstate),
  )
}

///|
extern "js" fn html_body_element_onrejectionhandled_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onrejectionhandled"

///|
/// [HTMLBodyElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onrejectionhandled)
impl THTMLBodyElement with onrejectionhandled(self : Self) -> EventHandler {
  html_body_element_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
/// [HTMLBodyElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onrejectionhandled)
impl THTMLBodyElement with set_onrejectionhandled(
  self : Self,
  onrejectionhandled : EventHandler,
) -> Unit {
  html_body_element_set_onrejectionhandled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onrejectionhandled),
  )
}

///|
extern "js" fn html_body_element_onstorage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onstorage"

///|
/// [HTMLBodyElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onstorage)
impl THTMLBodyElement with onstorage(self : Self) -> EventHandler {
  html_body_element_onstorage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
/// [HTMLBodyElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onstorage)
impl THTMLBodyElement with set_onstorage(self : Self, onstorage : EventHandler) -> Unit {
  html_body_element_set_onstorage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onstorage),
  )
}

///|
extern "js" fn html_body_element_onunhandledrejection_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onunhandledrejection"

///|
/// [HTMLBodyElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onunhandledrejection)
impl THTMLBodyElement with onunhandledrejection(self : Self) -> EventHandler {
  html_body_element_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
/// [HTMLBodyElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onunhandledrejection)
impl THTMLBodyElement with set_onunhandledrejection(
  self : Self,
  onunhandledrejection : EventHandler,
) -> Unit {
  html_body_element_set_onunhandledrejection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunhandledrejection),
  )
}

///|
extern "js" fn html_body_element_onunload_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onunload"

///|
/// [HTMLBodyElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onunload)
impl THTMLBodyElement with onunload(self : Self) -> EventHandler {
  html_body_element_onunload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_body_element_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

///|
/// [HTMLBodyElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onunload)
impl THTMLBodyElement with set_onunload(self : Self, onunload : EventHandler) -> Unit {
  html_body_element_set_onunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunload),
  )
}
