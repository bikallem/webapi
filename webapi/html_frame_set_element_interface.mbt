// Do not edit. This file is generated.
// MoonBit type: HTMLFrameSetElement
// Specifications: html.idl

/// [HTMLFrameSetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement)
#external
pub type HTMLFrameSetElement

pub impl TJsValue for HTMLFrameSetElement with to_js(self: HTMLFrameSetElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLFrameSetElement with from_js_any(value : JsAny) -> HTMLFrameSetElement = "%identity"

pub fn[T: THTMLFrameSetElement] HTMLFrameSetElement::into(self : HTMLFrameSetElement) -> T = "%identity"

pub impl THTMLFrameSetElement for HTMLFrameSetElement

pub impl THTMLElement for HTMLFrameSetElement

pub impl TElement for HTMLFrameSetElement

pub impl TNode for HTMLFrameSetElement

pub impl TEventTarget for HTMLFrameSetElement

pub fn HTMLFrameSetElement::new() -> HTMLFrameSetElement {
  html_frame_set_element_new_ffi()
}

/// [HTMLFrameSetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement) interface.
pub trait THTMLFrameSetElement: THTMLElement {
  cols(self : Self) -> String = _
  set_cols(self : Self, cols : String) -> Unit = _
  rows(self : Self) -> String = _
  set_rows(self : Self, rows : String) -> Unit = _
  onafterprint(self : Self) -> EventHandler = _
  set_onafterprint(self : Self, onafterprint : (Event) -> JsValue) -> Unit = _
  onbeforeprint(self : Self) -> EventHandler = _
  set_onbeforeprint(self : Self, onbeforeprint : (Event) -> JsValue) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler = _
  set_onbeforeunload(self : Self, onbeforeunload : (Event) -> String) -> Unit = _
  onhashchange(self : Self) -> EventHandler = _
  set_onhashchange(self : Self, onhashchange : (Event) -> JsValue) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, onlanguagechange : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, onoffline : (Event) -> JsValue) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, ononline : (Event) -> JsValue) -> Unit = _
  onpagehide(self : Self) -> EventHandler = _
  set_onpagehide(self : Self, onpagehide : (Event) -> JsValue) -> Unit = _
  onpagereveal(self : Self) -> EventHandler = _
  set_onpagereveal(self : Self, onpagereveal : (Event) -> JsValue) -> Unit = _
  onpageshow(self : Self) -> EventHandler = _
  set_onpageshow(self : Self, onpageshow : (Event) -> JsValue) -> Unit = _
  onpageswap(self : Self) -> EventHandler = _
  set_onpageswap(self : Self, onpageswap : (Event) -> JsValue) -> Unit = _
  onpopstate(self : Self) -> EventHandler = _
  set_onpopstate(self : Self, onpopstate : (Event) -> JsValue) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, onrejectionhandled : (Event) -> JsValue) -> Unit = _
  onstorage(self : Self) -> EventHandler = _
  set_onstorage(self : Self, onstorage : (Event) -> JsValue) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(self : Self, onunhandledrejection : (Event) -> JsValue) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, onunload : (Event) -> JsValue) -> Unit = _
}

/// [HTMLFrameSetElement.cols](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/cols)
impl THTMLFrameSetElement with cols(self : Self) -> String {
  html_frame_set_element_cols_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.cols](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/cols)
impl THTMLFrameSetElement with set_cols(self : Self, 
cols : String) -> Unit {
  html_frame_set_element_set_cols_ffi(TJsValue::to_js(self), TJsValue::to_js(cols))
}

/// [HTMLFrameSetElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/rows)
impl THTMLFrameSetElement with rows(self : Self) -> String {
  html_frame_set_element_rows_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/rows)
impl THTMLFrameSetElement with set_rows(self : Self, 
rows : String) -> Unit {
  html_frame_set_element_set_rows_ffi(TJsValue::to_js(self), TJsValue::to_js(rows))
}

/// [HTMLFrameSetElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onafterprint)
impl THTMLFrameSetElement with onafterprint(self : Self) -> EventHandler {
  html_frame_set_element_onafterprint_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onafterprint)
impl THTMLFrameSetElement with set_onafterprint(self : Self, 
onafterprint : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onafterprint_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onafterprint)))
}

/// [HTMLFrameSetElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onbeforeprint)
impl THTMLFrameSetElement with onbeforeprint(self : Self) -> EventHandler {
  html_frame_set_element_onbeforeprint_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onbeforeprint)
impl THTMLFrameSetElement with set_onbeforeprint(self : Self, 
onbeforeprint : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onbeforeprint_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onbeforeprint)))
}

/// [HTMLFrameSetElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onbeforeunload)
impl THTMLFrameSetElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  html_frame_set_element_onbeforeunload_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onbeforeunload)
impl THTMLFrameSetElement with set_onbeforeunload(self : Self, 
onbeforeunload : (Event) -> String) -> Unit {
  html_frame_set_element_set_onbeforeunload_ffi(TJsValue::to_js(self), TJsValue::to_js(on_before_unload_event_handler_non_null_ffi(onbeforeunload)))
}

/// [HTMLFrameSetElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onhashchange)
impl THTMLFrameSetElement with onhashchange(self : Self) -> EventHandler {
  html_frame_set_element_onhashchange_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onhashchange)
impl THTMLFrameSetElement with set_onhashchange(self : Self, 
onhashchange : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onhashchange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onhashchange)))
}

/// [HTMLFrameSetElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onlanguagechange)
impl THTMLFrameSetElement with onlanguagechange(self : Self) -> EventHandler {
  html_frame_set_element_onlanguagechange_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onlanguagechange)
impl THTMLFrameSetElement with set_onlanguagechange(self : Self, 
onlanguagechange : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onlanguagechange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onlanguagechange)))
}

/// [HTMLFrameSetElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onmessage)
impl THTMLFrameSetElement with onmessage(self : Self) -> EventHandler {
  html_frame_set_element_onmessage_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onmessage)
impl THTMLFrameSetElement with set_onmessage(self : Self, 
onmessage : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessage)))
}

/// [HTMLFrameSetElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onmessageerror)
impl THTMLFrameSetElement with onmessageerror(self : Self) -> EventHandler {
  html_frame_set_element_onmessageerror_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onmessageerror)
impl THTMLFrameSetElement with set_onmessageerror(self : Self, 
onmessageerror : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onmessageerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)))
}

/// [HTMLFrameSetElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onoffline)
impl THTMLFrameSetElement with onoffline(self : Self) -> EventHandler {
  html_frame_set_element_onoffline_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onoffline)
impl THTMLFrameSetElement with set_onoffline(self : Self, 
onoffline : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onoffline_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onoffline)))
}

/// [HTMLFrameSetElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/ononline)
impl THTMLFrameSetElement with ononline(self : Self) -> EventHandler {
  html_frame_set_element_ononline_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/ononline)
impl THTMLFrameSetElement with set_ononline(self : Self, 
ononline : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_ononline_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(ononline)))
}

/// [HTMLFrameSetElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpagehide)
impl THTMLFrameSetElement with onpagehide(self : Self) -> EventHandler {
  html_frame_set_element_onpagehide_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpagehide)
impl THTMLFrameSetElement with set_onpagehide(self : Self, 
onpagehide : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onpagehide_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpagehide)))
}

/// [HTMLFrameSetElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpagereveal)
impl THTMLFrameSetElement with onpagereveal(self : Self) -> EventHandler {
  html_frame_set_element_onpagereveal_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpagereveal)
impl THTMLFrameSetElement with set_onpagereveal(self : Self, 
onpagereveal : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onpagereveal_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpagereveal)))
}

/// [HTMLFrameSetElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpageshow)
impl THTMLFrameSetElement with onpageshow(self : Self) -> EventHandler {
  html_frame_set_element_onpageshow_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpageshow)
impl THTMLFrameSetElement with set_onpageshow(self : Self, 
onpageshow : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onpageshow_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpageshow)))
}

/// [HTMLFrameSetElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpageswap)
impl THTMLFrameSetElement with onpageswap(self : Self) -> EventHandler {
  html_frame_set_element_onpageswap_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpageswap)
impl THTMLFrameSetElement with set_onpageswap(self : Self, 
onpageswap : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onpageswap_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpageswap)))
}

/// [HTMLFrameSetElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpopstate)
impl THTMLFrameSetElement with onpopstate(self : Self) -> EventHandler {
  html_frame_set_element_onpopstate_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpopstate)
impl THTMLFrameSetElement with set_onpopstate(self : Self, 
onpopstate : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onpopstate_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onpopstate)))
}

/// [HTMLFrameSetElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onrejectionhandled)
impl THTMLFrameSetElement with onrejectionhandled(self : Self) -> EventHandler {
  html_frame_set_element_onrejectionhandled_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onrejectionhandled)
impl THTMLFrameSetElement with set_onrejectionhandled(self : Self, 
onrejectionhandled : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onrejectionhandled_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onrejectionhandled)))
}

/// [HTMLFrameSetElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onstorage)
impl THTMLFrameSetElement with onstorage(self : Self) -> EventHandler {
  html_frame_set_element_onstorage_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onstorage)
impl THTMLFrameSetElement with set_onstorage(self : Self, 
onstorage : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onstorage_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onstorage)))
}

/// [HTMLFrameSetElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onunhandledrejection)
impl THTMLFrameSetElement with onunhandledrejection(self : Self) -> EventHandler {
  html_frame_set_element_onunhandledrejection_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onunhandledrejection)
impl THTMLFrameSetElement with set_onunhandledrejection(self : Self, 
onunhandledrejection : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onunhandledrejection_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onunhandledrejection)))
}

/// [HTMLFrameSetElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onunload)
impl THTMLFrameSetElement with onunload(self : Self) -> EventHandler {
  html_frame_set_element_onunload_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameSetElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onunload)
impl THTMLFrameSetElement with set_onunload(self : Self, 
onunload : (Event) -> JsValue) -> Unit {
  html_frame_set_element_set_onunload_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onunload)))
}