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
  onafterprint(self : Self) -> EventHandlerNonNull = _
  set_onafterprint(self : Self, onafterprint : EventHandlerNonNull) -> Unit = _
  onbeforeprint(self : Self) -> EventHandlerNonNull = _
  set_onbeforeprint(self : Self, onbeforeprint : EventHandlerNonNull) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandlerNonNull = _
  set_onbeforeunload(
    self : Self,
    onbeforeunload : OnBeforeUnloadEventHandlerNonNull,
  ) -> Unit = _
  onhashchange(self : Self) -> EventHandlerNonNull = _
  set_onhashchange(self : Self, onhashchange : EventHandlerNonNull) -> Unit = _
  onlanguagechange(self : Self) -> EventHandlerNonNull = _
  set_onlanguagechange(self : Self, onlanguagechange : EventHandlerNonNull) -> Unit = _
  onmessage(self : Self) -> EventHandlerNonNull = _
  set_onmessage(self : Self, onmessage : EventHandlerNonNull) -> Unit = _
  onmessageerror(self : Self) -> EventHandlerNonNull = _
  set_onmessageerror(self : Self, onmessageerror : EventHandlerNonNull) -> Unit = _
  onoffline(self : Self) -> EventHandlerNonNull = _
  set_onoffline(self : Self, onoffline : EventHandlerNonNull) -> Unit = _
  ononline(self : Self) -> EventHandlerNonNull = _
  set_ononline(self : Self, ononline : EventHandlerNonNull) -> Unit = _
  onpagehide(self : Self) -> EventHandlerNonNull = _
  set_onpagehide(self : Self, onpagehide : EventHandlerNonNull) -> Unit = _
  onpagereveal(self : Self) -> EventHandlerNonNull = _
  set_onpagereveal(self : Self, onpagereveal : EventHandlerNonNull) -> Unit = _
  onpageshow(self : Self) -> EventHandlerNonNull = _
  set_onpageshow(self : Self, onpageshow : EventHandlerNonNull) -> Unit = _
  onpageswap(self : Self) -> EventHandlerNonNull = _
  set_onpageswap(self : Self, onpageswap : EventHandlerNonNull) -> Unit = _
  onpopstate(self : Self) -> EventHandlerNonNull = _
  set_onpopstate(self : Self, onpopstate : EventHandlerNonNull) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandlerNonNull = _
  set_onrejectionhandled(self : Self, onrejectionhandled : EventHandlerNonNull) -> Unit = _
  onstorage(self : Self) -> EventHandlerNonNull = _
  set_onstorage(self : Self, onstorage : EventHandlerNonNull) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandlerNonNull = _
  set_onunhandledrejection(
    self : Self,
    onunhandledrejection : EventHandlerNonNull,
  ) -> Unit = _
  onunload(self : Self) -> EventHandlerNonNull = _
  set_onunload(self : Self, onunload : EventHandlerNonNull) -> Unit = _
}

///|
/// [HTMLBodyElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/text)
impl THTMLBodyElement with text(self : Self) -> String {
  html_body_element_text_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/text)
impl THTMLBodyElement with set_text(self : Self, text : String) -> Unit {
  html_body_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
/// [HTMLBodyElement.link](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/link)
impl THTMLBodyElement with link(self : Self) -> String {
  html_body_element_link_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.link](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/link)
impl THTMLBodyElement with set_link(self : Self, link : String) -> Unit {
  html_body_element_set_link_ffi(TJsValue::to_js(self), TJsValue::to_js(link))
}

///|
/// [HTMLBodyElement.vLink](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/vLink)
impl THTMLBodyElement with v_link(self : Self) -> String {
  html_body_element_v_link_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.vLink](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/vLink)
impl THTMLBodyElement with set_v_link(self : Self, v_link : String) -> Unit {
  html_body_element_set_v_link_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_link),
  )
}

///|
/// [HTMLBodyElement.aLink](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/aLink)
impl THTMLBodyElement with a_link(self : Self) -> String {
  html_body_element_a_link_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.aLink](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/aLink)
impl THTMLBodyElement with set_a_link(self : Self, a_link : String) -> Unit {
  html_body_element_set_a_link_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(a_link),
  )
}

///|
/// [HTMLBodyElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/bgColor)
impl THTMLBodyElement with bg_color(self : Self) -> String {
  html_body_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/bgColor)
impl THTMLBodyElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_body_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}

///|
/// [HTMLBodyElement.background](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/background)
impl THTMLBodyElement with background(self : Self) -> String {
  html_body_element_background_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.background](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/background)
impl THTMLBodyElement with set_background(self : Self, background : String) -> Unit {
  html_body_element_set_background_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(background),
  )
}

///|
/// [HTMLBodyElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onafterprint)
impl THTMLBodyElement with onafterprint(self : Self) -> EventHandlerNonNull {
  html_body_element_onafterprint_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onafterprint)
impl THTMLBodyElement with set_onafterprint(
  self : Self,
  onafterprint : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onafterprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onafterprint),
  )
}

///|
/// [HTMLBodyElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onbeforeprint)
impl THTMLBodyElement with onbeforeprint(self : Self) -> EventHandlerNonNull {
  html_body_element_onbeforeprint_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onbeforeprint)
impl THTMLBodyElement with set_onbeforeprint(
  self : Self,
  onbeforeprint : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onbeforeprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeprint),
  )
}

///|
/// [HTMLBodyElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onbeforeunload)
impl THTMLBodyElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandlerNonNull {
  html_body_element_onbeforeunload_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onbeforeunload)
impl THTMLBodyElement with set_onbeforeunload(
  self : Self,
  onbeforeunload : OnBeforeUnloadEventHandlerNonNull,
) -> Unit {
  html_body_element_set_onbeforeunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeunload),
  )
}

///|
/// [HTMLBodyElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onhashchange)
impl THTMLBodyElement with onhashchange(self : Self) -> EventHandlerNonNull {
  html_body_element_onhashchange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onhashchange)
impl THTMLBodyElement with set_onhashchange(
  self : Self,
  onhashchange : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onhashchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onhashchange),
  )
}

///|
/// [HTMLBodyElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onlanguagechange)
impl THTMLBodyElement with onlanguagechange(self : Self) -> EventHandlerNonNull {
  html_body_element_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onlanguagechange)
impl THTMLBodyElement with set_onlanguagechange(
  self : Self,
  onlanguagechange : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onlanguagechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onlanguagechange),
  )
}

///|
/// [HTMLBodyElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onmessage)
impl THTMLBodyElement with onmessage(self : Self) -> EventHandlerNonNull {
  html_body_element_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onmessage)
impl THTMLBodyElement with set_onmessage(
  self : Self,
  onmessage : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessage),
  )
}

///|
/// [HTMLBodyElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onmessageerror)
impl THTMLBodyElement with onmessageerror(self : Self) -> EventHandlerNonNull {
  html_body_element_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onmessageerror)
impl THTMLBodyElement with set_onmessageerror(
  self : Self,
  onmessageerror : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}

///|
/// [HTMLBodyElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onoffline)
impl THTMLBodyElement with onoffline(self : Self) -> EventHandlerNonNull {
  html_body_element_onoffline_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onoffline)
impl THTMLBodyElement with set_onoffline(
  self : Self,
  onoffline : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onoffline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onoffline),
  )
}

///|
/// [HTMLBodyElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/ononline)
impl THTMLBodyElement with ononline(self : Self) -> EventHandlerNonNull {
  html_body_element_ononline_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/ononline)
impl THTMLBodyElement with set_ononline(
  self : Self,
  ononline : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_ononline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ononline),
  )
}

///|
/// [HTMLBodyElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpagehide)
impl THTMLBodyElement with onpagehide(self : Self) -> EventHandlerNonNull {
  html_body_element_onpagehide_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpagehide)
impl THTMLBodyElement with set_onpagehide(
  self : Self,
  onpagehide : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onpagehide_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagehide),
  )
}

///|
/// [HTMLBodyElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpagereveal)
impl THTMLBodyElement with onpagereveal(self : Self) -> EventHandlerNonNull {
  html_body_element_onpagereveal_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpagereveal)
impl THTMLBodyElement with set_onpagereveal(
  self : Self,
  onpagereveal : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onpagereveal_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagereveal),
  )
}

///|
/// [HTMLBodyElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpageshow)
impl THTMLBodyElement with onpageshow(self : Self) -> EventHandlerNonNull {
  html_body_element_onpageshow_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpageshow)
impl THTMLBodyElement with set_onpageshow(
  self : Self,
  onpageshow : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onpageshow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpageshow),
  )
}

///|
/// [HTMLBodyElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpageswap)
impl THTMLBodyElement with onpageswap(self : Self) -> EventHandlerNonNull {
  html_body_element_onpageswap_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpageswap)
impl THTMLBodyElement with set_onpageswap(
  self : Self,
  onpageswap : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onpageswap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpageswap),
  )
}

///|
/// [HTMLBodyElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpopstate)
impl THTMLBodyElement with onpopstate(self : Self) -> EventHandlerNonNull {
  html_body_element_onpopstate_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onpopstate)
impl THTMLBodyElement with set_onpopstate(
  self : Self,
  onpopstate : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onpopstate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpopstate),
  )
}

///|
/// [HTMLBodyElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onrejectionhandled)
impl THTMLBodyElement with onrejectionhandled(self : Self) -> EventHandlerNonNull {
  html_body_element_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onrejectionhandled)
impl THTMLBodyElement with set_onrejectionhandled(
  self : Self,
  onrejectionhandled : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onrejectionhandled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onrejectionhandled),
  )
}

///|
/// [HTMLBodyElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onstorage)
impl THTMLBodyElement with onstorage(self : Self) -> EventHandlerNonNull {
  html_body_element_onstorage_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onstorage)
impl THTMLBodyElement with set_onstorage(
  self : Self,
  onstorage : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onstorage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onstorage),
  )
}

///|
/// [HTMLBodyElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onunhandledrejection)
impl THTMLBodyElement with onunhandledrejection(self : Self) -> EventHandlerNonNull {
  html_body_element_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onunhandledrejection)
impl THTMLBodyElement with set_onunhandledrejection(
  self : Self,
  onunhandledrejection : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onunhandledrejection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunhandledrejection),
  )
}

///|
/// [HTMLBodyElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onunload)
impl THTMLBodyElement with onunload(self : Self) -> EventHandlerNonNull {
  html_body_element_onunload_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBodyElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement/onunload)
impl THTMLBodyElement with set_onunload(
  self : Self,
  onunload : EventHandlerNonNull,
) -> Unit {
  html_body_element_set_onunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunload),
  )
}
