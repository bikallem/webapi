// Do not edit. This file is generated.
// MoonBit type: HTMLFrameSetElement
// Specifications: html.idl

///|
#external
pub type HTMLFrameSetElement

///|
pub impl TJsValue for HTMLFrameSetElement with to_js(self : HTMLFrameSetElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFrameSetElement] HTMLFrameSetElement::into(
  self : HTMLFrameSetElement,
) -> T = "%identity"

///|
pub impl THTMLFrameSetElement for HTMLFrameSetElement

///|
pub impl THTMLElement for HTMLFrameSetElement

///|
pub impl TElement for HTMLFrameSetElement

///|
pub impl TNode for HTMLFrameSetElement

///|
pub impl TEventTarget for HTMLFrameSetElement

///|
extern "js" fn html_frame_set_element_new_ffi() -> HTMLFrameSetElement = "() => new HTMLFrameSetElement()"

///|
pub fn HTMLFrameSetElement::new() -> HTMLFrameSetElement {
  html_frame_set_element_new_ffi()
}

///|
pub trait THTMLFrameSetElement: THTMLElement {
  cols(self : Self) -> String = _
  set_cols(self : Self, cols : String) -> Unit = _
  rows(self : Self) -> String = _
  set_rows(self : Self, rows : String) -> Unit = _
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
extern "js" fn html_frame_set_element_cols_ffi(obj : JsValue) -> String = "(obj) => obj.cols"

///|
impl THTMLFrameSetElement with cols(self : Self) -> String {
  html_frame_set_element_cols_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_cols_ffi(
  obj : JsValue,
  cols : JsValue,
) -> Unit = "(obj, cols) => { obj.cols = cols; }"

///|
impl THTMLFrameSetElement with set_cols(self : Self, cols : String) -> Unit {
  html_frame_set_element_set_cols_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cols),
  )
}

///|
extern "js" fn html_frame_set_element_rows_ffi(obj : JsValue) -> String = "(obj) => obj.rows"

///|
impl THTMLFrameSetElement with rows(self : Self) -> String {
  html_frame_set_element_rows_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_rows_ffi(
  obj : JsValue,
  rows : JsValue,
) -> Unit = "(obj, rows) => { obj.rows = rows; }"

///|
impl THTMLFrameSetElement with set_rows(self : Self, rows : String) -> Unit {
  html_frame_set_element_set_rows_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rows),
  )
}

///|
extern "js" fn html_frame_set_element_onafterprint_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onafterprint"

///|
impl THTMLFrameSetElement with onafterprint(self : Self) -> EventHandler {
  html_frame_set_element_onafterprint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
impl THTMLFrameSetElement with set_onafterprint(
  self : Self,
  onafterprint : EventHandler,
) -> Unit {
  html_frame_set_element_set_onafterprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onafterprint),
  )
}

///|
extern "js" fn html_frame_set_element_onbeforeprint_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onbeforeprint"

///|
impl THTMLFrameSetElement with onbeforeprint(self : Self) -> EventHandler {
  html_frame_set_element_onbeforeprint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
impl THTMLFrameSetElement with set_onbeforeprint(
  self : Self,
  onbeforeprint : EventHandler,
) -> Unit {
  html_frame_set_element_set_onbeforeprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeprint),
  )
}

///|
extern "js" fn html_frame_set_element_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandler = "(obj) => obj.onbeforeunload"

///|
impl THTMLFrameSetElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  html_frame_set_element_onbeforeunload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
impl THTMLFrameSetElement with set_onbeforeunload(
  self : Self,
  onbeforeunload : OnBeforeUnloadEventHandler,
) -> Unit {
  html_frame_set_element_set_onbeforeunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeunload),
  )
}

///|
extern "js" fn html_frame_set_element_onhashchange_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onhashchange"

///|
impl THTMLFrameSetElement with onhashchange(self : Self) -> EventHandler {
  html_frame_set_element_onhashchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
impl THTMLFrameSetElement with set_onhashchange(
  self : Self,
  onhashchange : EventHandler,
) -> Unit {
  html_frame_set_element_set_onhashchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onhashchange),
  )
}

///|
extern "js" fn html_frame_set_element_onlanguagechange_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onlanguagechange"

///|
impl THTMLFrameSetElement with onlanguagechange(self : Self) -> EventHandler {
  html_frame_set_element_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
impl THTMLFrameSetElement with set_onlanguagechange(
  self : Self,
  onlanguagechange : EventHandler,
) -> Unit {
  html_frame_set_element_set_onlanguagechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onlanguagechange),
  )
}

///|
extern "js" fn html_frame_set_element_onmessage_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onmessage"

///|
impl THTMLFrameSetElement with onmessage(self : Self) -> EventHandler {
  html_frame_set_element_onmessage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
impl THTMLFrameSetElement with set_onmessage(
  self : Self,
  onmessage : EventHandler,
) -> Unit {
  html_frame_set_element_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessage),
  )
}

///|
extern "js" fn html_frame_set_element_onmessageerror_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onmessageerror"

///|
impl THTMLFrameSetElement with onmessageerror(self : Self) -> EventHandler {
  html_frame_set_element_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
impl THTMLFrameSetElement with set_onmessageerror(
  self : Self,
  onmessageerror : EventHandler,
) -> Unit {
  html_frame_set_element_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}

///|
extern "js" fn html_frame_set_element_onoffline_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onoffline"

///|
impl THTMLFrameSetElement with onoffline(self : Self) -> EventHandler {
  html_frame_set_element_onoffline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
impl THTMLFrameSetElement with set_onoffline(
  self : Self,
  onoffline : EventHandler,
) -> Unit {
  html_frame_set_element_set_onoffline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onoffline),
  )
}

///|
extern "js" fn html_frame_set_element_ononline_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.ononline"

///|
impl THTMLFrameSetElement with ononline(self : Self) -> EventHandler {
  html_frame_set_element_ononline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
impl THTMLFrameSetElement with set_ononline(
  self : Self,
  ononline : EventHandler,
) -> Unit {
  html_frame_set_element_set_ononline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ononline),
  )
}

///|
extern "js" fn html_frame_set_element_onpagehide_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onpagehide"

///|
impl THTMLFrameSetElement with onpagehide(self : Self) -> EventHandler {
  html_frame_set_element_onpagehide_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
impl THTMLFrameSetElement with set_onpagehide(
  self : Self,
  onpagehide : EventHandler,
) -> Unit {
  html_frame_set_element_set_onpagehide_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagehide),
  )
}

///|
extern "js" fn html_frame_set_element_onpagereveal_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onpagereveal"

///|
impl THTMLFrameSetElement with onpagereveal(self : Self) -> EventHandler {
  html_frame_set_element_onpagereveal_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
impl THTMLFrameSetElement with set_onpagereveal(
  self : Self,
  onpagereveal : EventHandler,
) -> Unit {
  html_frame_set_element_set_onpagereveal_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagereveal),
  )
}

///|
extern "js" fn html_frame_set_element_onpageshow_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onpageshow"

///|
impl THTMLFrameSetElement with onpageshow(self : Self) -> EventHandler {
  html_frame_set_element_onpageshow_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
impl THTMLFrameSetElement with set_onpageshow(
  self : Self,
  onpageshow : EventHandler,
) -> Unit {
  html_frame_set_element_set_onpageshow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpageshow),
  )
}

///|
extern "js" fn html_frame_set_element_onpageswap_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onpageswap"

///|
impl THTMLFrameSetElement with onpageswap(self : Self) -> EventHandler {
  html_frame_set_element_onpageswap_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
impl THTMLFrameSetElement with set_onpageswap(
  self : Self,
  onpageswap : EventHandler,
) -> Unit {
  html_frame_set_element_set_onpageswap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpageswap),
  )
}

///|
extern "js" fn html_frame_set_element_onpopstate_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onpopstate"

///|
impl THTMLFrameSetElement with onpopstate(self : Self) -> EventHandler {
  html_frame_set_element_onpopstate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
impl THTMLFrameSetElement with set_onpopstate(
  self : Self,
  onpopstate : EventHandler,
) -> Unit {
  html_frame_set_element_set_onpopstate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpopstate),
  )
}

///|
extern "js" fn html_frame_set_element_onrejectionhandled_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onrejectionhandled"

///|
impl THTMLFrameSetElement with onrejectionhandled(self : Self) -> EventHandler {
  html_frame_set_element_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
impl THTMLFrameSetElement with set_onrejectionhandled(
  self : Self,
  onrejectionhandled : EventHandler,
) -> Unit {
  html_frame_set_element_set_onrejectionhandled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onrejectionhandled),
  )
}

///|
extern "js" fn html_frame_set_element_onstorage_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onstorage"

///|
impl THTMLFrameSetElement with onstorage(self : Self) -> EventHandler {
  html_frame_set_element_onstorage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
impl THTMLFrameSetElement with set_onstorage(
  self : Self,
  onstorage : EventHandler,
) -> Unit {
  html_frame_set_element_set_onstorage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onstorage),
  )
}

///|
extern "js" fn html_frame_set_element_onunhandledrejection_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onunhandledrejection"

///|
impl THTMLFrameSetElement with onunhandledrejection(self : Self) -> EventHandler {
  html_frame_set_element_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
impl THTMLFrameSetElement with set_onunhandledrejection(
  self : Self,
  onunhandledrejection : EventHandler,
) -> Unit {
  html_frame_set_element_set_onunhandledrejection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunhandledrejection),
  )
}

///|
extern "js" fn html_frame_set_element_onunload_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onunload"

///|
impl THTMLFrameSetElement with onunload(self : Self) -> EventHandler {
  html_frame_set_element_onunload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_set_element_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

///|
impl THTMLFrameSetElement with set_onunload(
  self : Self,
  onunload : EventHandler,
) -> Unit {
  html_frame_set_element_set_onunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunload),
  )
}
