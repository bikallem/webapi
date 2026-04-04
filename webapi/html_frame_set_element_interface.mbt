// Do not edit. This file is generated.
// MoonBit type: HTMLFrameSetElement
// Specifications: html.idl

///|
/// [HTMLFrameSetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement)
#external
pub type HTMLFrameSetElement

///|
pub impl TJsValue for HTMLFrameSetElement with to_js(self : HTMLFrameSetElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLFrameSetElement with from_js_any(value : JsAny) -> HTMLFrameSetElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLFrameSetElement] HTMLFrameSetElement::into(
  self : HTMLFrameSetElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLFrameSetElement] HTMLFrameSetElement::unsafe_into(
  self : HTMLFrameSetElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLFrameSetElement with constructor_name() {
  "HTMLFrameSetElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLFrameSetElement + HasConstructor] HTMLFrameSetElement::try_into(
  self : HTMLFrameSetElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
pub fn HTMLFrameSetElement::new() -> HTMLFrameSetElement {
  html_frame_set_element_new_ffi()
}

///|
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
  set_onunhandledrejection(
    self : Self,
    onunhandledrejection : (Event) -> JsValue,
  ) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, onunload : (Event) -> JsValue) -> Unit = _
}

///|
/// [HTMLFrameSetElement.cols](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/cols)
impl THTMLFrameSetElement with cols(self : Self) -> String {
  html_frame_set_element_cols_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.cols](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/cols)
impl THTMLFrameSetElement with set_cols(self : Self, cols : String) -> Unit {
  html_frame_set_element_set_cols_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cols),
  )
}

///|
/// [HTMLFrameSetElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/rows)
impl THTMLFrameSetElement with rows(self : Self) -> String {
  html_frame_set_element_rows_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/rows)
impl THTMLFrameSetElement with set_rows(self : Self, rows : String) -> Unit {
  html_frame_set_element_set_rows_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rows),
  )
}

///|
/// [HTMLFrameSetElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onafterprint)
impl THTMLFrameSetElement with onafterprint(self : Self) -> EventHandler {
  html_frame_set_element_onafterprint_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onafterprint)
impl THTMLFrameSetElement with set_onafterprint(
  self : Self,
  onafterprint : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onafterprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onafterprint)),
  )
}

///|
/// [HTMLFrameSetElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onbeforeprint)
impl THTMLFrameSetElement with onbeforeprint(self : Self) -> EventHandler {
  html_frame_set_element_onbeforeprint_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onbeforeprint)
impl THTMLFrameSetElement with set_onbeforeprint(
  self : Self,
  onbeforeprint : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onbeforeprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforeprint)),
  )
}

///|
/// [HTMLFrameSetElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onbeforeunload)
impl THTMLFrameSetElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  html_frame_set_element_onbeforeunload_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onbeforeunload)
impl THTMLFrameSetElement with set_onbeforeunload(
  self : Self,
  onbeforeunload : (Event) -> String,
) -> Unit {
  html_frame_set_element_set_onbeforeunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(on_before_unload_event_handler_non_null_ffi(onbeforeunload)),
  )
}

///|
/// [HTMLFrameSetElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onhashchange)
impl THTMLFrameSetElement with onhashchange(self : Self) -> EventHandler {
  html_frame_set_element_onhashchange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onhashchange)
impl THTMLFrameSetElement with set_onhashchange(
  self : Self,
  onhashchange : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onhashchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onhashchange)),
  )
}

///|
/// [HTMLFrameSetElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onlanguagechange)
impl THTMLFrameSetElement with onlanguagechange(self : Self) -> EventHandler {
  html_frame_set_element_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onlanguagechange)
impl THTMLFrameSetElement with set_onlanguagechange(
  self : Self,
  onlanguagechange : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onlanguagechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onlanguagechange)),
  )
}

///|
/// [HTMLFrameSetElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onmessage)
impl THTMLFrameSetElement with onmessage(self : Self) -> EventHandler {
  html_frame_set_element_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onmessage)
impl THTMLFrameSetElement with set_onmessage(
  self : Self,
  onmessage : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessage)),
  )
}

///|
/// [HTMLFrameSetElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onmessageerror)
impl THTMLFrameSetElement with onmessageerror(self : Self) -> EventHandler {
  html_frame_set_element_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onmessageerror)
impl THTMLFrameSetElement with set_onmessageerror(
  self : Self,
  onmessageerror : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)),
  )
}

///|
/// [HTMLFrameSetElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onoffline)
impl THTMLFrameSetElement with onoffline(self : Self) -> EventHandler {
  html_frame_set_element_onoffline_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onoffline)
impl THTMLFrameSetElement with set_onoffline(
  self : Self,
  onoffline : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onoffline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onoffline)),
  )
}

///|
/// [HTMLFrameSetElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/ononline)
impl THTMLFrameSetElement with ononline(self : Self) -> EventHandler {
  html_frame_set_element_ononline_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.ononline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/ononline)
impl THTMLFrameSetElement with set_ononline(
  self : Self,
  ononline : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_ononline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ononline)),
  )
}

///|
/// [HTMLFrameSetElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpagehide)
impl THTMLFrameSetElement with onpagehide(self : Self) -> EventHandler {
  html_frame_set_element_onpagehide_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpagehide)
impl THTMLFrameSetElement with set_onpagehide(
  self : Self,
  onpagehide : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onpagehide_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpagehide)),
  )
}

///|
/// [HTMLFrameSetElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpagereveal)
impl THTMLFrameSetElement with onpagereveal(self : Self) -> EventHandler {
  html_frame_set_element_onpagereveal_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpagereveal)
impl THTMLFrameSetElement with set_onpagereveal(
  self : Self,
  onpagereveal : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onpagereveal_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpagereveal)),
  )
}

///|
/// [HTMLFrameSetElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpageshow)
impl THTMLFrameSetElement with onpageshow(self : Self) -> EventHandler {
  html_frame_set_element_onpageshow_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpageshow)
impl THTMLFrameSetElement with set_onpageshow(
  self : Self,
  onpageshow : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onpageshow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpageshow)),
  )
}

///|
/// [HTMLFrameSetElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpageswap)
impl THTMLFrameSetElement with onpageswap(self : Self) -> EventHandler {
  html_frame_set_element_onpageswap_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpageswap)
impl THTMLFrameSetElement with set_onpageswap(
  self : Self,
  onpageswap : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onpageswap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpageswap)),
  )
}

///|
/// [HTMLFrameSetElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpopstate)
impl THTMLFrameSetElement with onpopstate(self : Self) -> EventHandler {
  html_frame_set_element_onpopstate_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onpopstate)
impl THTMLFrameSetElement with set_onpopstate(
  self : Self,
  onpopstate : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onpopstate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpopstate)),
  )
}

///|
/// [HTMLFrameSetElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onrejectionhandled)
impl THTMLFrameSetElement with onrejectionhandled(self : Self) -> EventHandler {
  html_frame_set_element_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onrejectionhandled)
impl THTMLFrameSetElement with set_onrejectionhandled(
  self : Self,
  onrejectionhandled : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onrejectionhandled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onrejectionhandled)),
  )
}

///|
/// [HTMLFrameSetElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onstorage)
impl THTMLFrameSetElement with onstorage(self : Self) -> EventHandler {
  html_frame_set_element_onstorage_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onstorage)
impl THTMLFrameSetElement with set_onstorage(
  self : Self,
  onstorage : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onstorage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onstorage)),
  )
}

///|
/// [HTMLFrameSetElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onunhandledrejection)
impl THTMLFrameSetElement with onunhandledrejection(self : Self) -> EventHandler {
  html_frame_set_element_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onunhandledrejection)
impl THTMLFrameSetElement with set_onunhandledrejection(
  self : Self,
  onunhandledrejection : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onunhandledrejection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onunhandledrejection)),
  )
}

///|
/// [HTMLFrameSetElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onunload)
impl THTMLFrameSetElement with onunload(self : Self) -> EventHandler {
  html_frame_set_element_onunload_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameSetElement.onunload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement/onunload)
impl THTMLFrameSetElement with set_onunload(
  self : Self,
  onunload : (Event) -> JsValue,
) -> Unit {
  html_frame_set_element_set_onunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onunload)),
  )
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_new_ffi() -> HTMLFrameSetElement = "() => new HTMLFrameSetElement()"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_cols_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cols"

///|
#cfg(target="js")
fn html_frame_set_element_cols_ffi(obj : JsValue) -> String {
  html_frame_set_element_cols_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_cols_ffi(
  obj : JsValue,
  cols : JsValue,
) -> Unit = "(obj, cols) => { obj.cols = cols; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_rows_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rows"

///|
#cfg(target="js")
fn html_frame_set_element_rows_ffi(obj : JsValue) -> String {
  html_frame_set_element_rows_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_rows_ffi(
  obj : JsValue,
  rows : JsValue,
) -> Unit = "(obj, rows) => { obj.rows = rows; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onafterprint_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onafterprint"

///|
#cfg(target="js")
fn html_frame_set_element_onafterprint_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onafterprint_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onbeforeprint_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onbeforeprint"

///|
#cfg(target="js")
fn html_frame_set_element_onbeforeprint_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onbeforeprint_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onbeforeunload_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onbeforeunload"

///|
#cfg(target="js")
fn html_frame_set_element_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandler {
  html_frame_set_element_onbeforeunload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onhashchange_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onhashchange"

///|
#cfg(target="js")
fn html_frame_set_element_onhashchange_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onhashchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onlanguagechange_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onlanguagechange"

///|
#cfg(target="js")
fn html_frame_set_element_onlanguagechange_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onlanguagechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onmessage_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn html_frame_set_element_onmessage_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onmessage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onmessageerror_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessageerror"

///|
#cfg(target="js")
fn html_frame_set_element_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onoffline_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onoffline"

///|
#cfg(target="js")
fn html_frame_set_element_onoffline_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onoffline_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_ononline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ononline"

///|
#cfg(target="js")
fn html_frame_set_element_ononline_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_ononline_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onpagehide_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpagehide"

///|
#cfg(target="js")
fn html_frame_set_element_onpagehide_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpagehide_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onpagereveal_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpagereveal"

///|
#cfg(target="js")
fn html_frame_set_element_onpagereveal_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpagereveal_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onpageshow_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpageshow"

///|
#cfg(target="js")
fn html_frame_set_element_onpageshow_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpageshow_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onpageswap_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpageswap"

///|
#cfg(target="js")
fn html_frame_set_element_onpageswap_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpageswap_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onpopstate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onpopstate"

///|
#cfg(target="js")
fn html_frame_set_element_onpopstate_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpopstate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onrejectionhandled_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onrejectionhandled"

///|
#cfg(target="js")
fn html_frame_set_element_onrejectionhandled_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onrejectionhandled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onstorage_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onstorage"

///|
#cfg(target="js")
fn html_frame_set_element_onstorage_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onstorage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onunhandledrejection_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onunhandledrejection"

///|
#cfg(target="js")
fn html_frame_set_element_onunhandledrejection_ffi(
  obj : JsValue,
) -> EventHandler {
  html_frame_set_element_onunhandledrejection_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_onunload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onunload"

///|
#cfg(target="js")
fn html_frame_set_element_onunload_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onunload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_set_element_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_new_ffi() -> HTMLFrameSetElement = "webapi_HTMLFrameSetElement" "new"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_cols_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_cols"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_cols_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_set_element_cols_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_cols_ffi(obj : JsValue, cols : JsValue) -> Unit = "webapi_HTMLFrameSetElement" "set_cols"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_rows_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_rows"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_rows_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_set_element_rows_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_rows_ffi(obj : JsValue, rows : JsValue) -> Unit = "webapi_HTMLFrameSetElement" "set_rows"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onafterprint_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onafterprint"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onafterprint_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onafterprint_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onafterprint"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onbeforeprint_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onbeforeprint"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onbeforeprint_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onbeforeprint_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onbeforeprint"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onbeforeunload_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onbeforeunload"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandler {
  html_frame_set_element_onbeforeunload_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onbeforeunload"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onhashchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onhashchange"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onhashchange_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onhashchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onhashchange"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onlanguagechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onlanguagechange"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onlanguagechange_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onlanguagechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onlanguagechange"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onmessage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onmessage_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onmessage_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onmessage"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onmessageerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onmessageerror"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onmessageerror"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onoffline_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onoffline"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onoffline_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onoffline_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onoffline"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_ononline_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_ononline"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_ononline_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_ononline_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_ononline"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpagehide_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onpagehide"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpagehide_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpagehide_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onpagehide"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpagereveal_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onpagereveal"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpagereveal_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpagereveal_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onpagereveal"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpageshow_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onpageshow"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpageshow_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpageshow_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onpageshow"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpageswap_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onpageswap"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpageswap_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpageswap_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onpageswap"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpopstate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onpopstate"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onpopstate_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onpopstate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onpopstate"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onrejectionhandled_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onrejectionhandled"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onrejectionhandled_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onrejectionhandled_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onrejectionhandled"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onstorage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onstorage"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onstorage_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onstorage_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onstorage"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onunhandledrejection_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_HTMLFrameSetElement" "get_onunhandledrejection"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onunhandledrejection_ffi(
  obj : JsValue,
) -> EventHandler {
  html_frame_set_element_onunhandledrejection_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onunhandledrejection"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onunload_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameSetElement" "get_onunload"

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_onunload_ffi(obj : JsValue) -> EventHandler {
  html_frame_set_element_onunload_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_set_element_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "webapi_HTMLFrameSetElement" "set_onunload"
