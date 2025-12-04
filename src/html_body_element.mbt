// Auto-generated MoonBit bindings for HTMLBodyElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLBodyElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   // also has obsolete members
// };
// 
// partial interface HTMLBodyElement {
//   [CEReactions, Reflect] attribute [LegacyNullToEmptyString] DOMString text;
//   [CEReactions, Reflect] attribute [LegacyNullToEmptyString] DOMString link;
//   [CEReactions, Reflect] attribute [LegacyNullToEmptyString] DOMString vLink;
//   [CEReactions, Reflect] attribute [LegacyNullToEmptyString] DOMString aLink;
//   [CEReactions, Reflect] attribute [LegacyNullToEmptyString] DOMString bgColor;
//   [CEReactions, Reflect] attribute DOMString background;
// };
// 
// interface mixin WindowEventHandlers {
//   attribute EventHandler onafterprint;
//   attribute EventHandler onbeforeprint;
//   attribute OnBeforeUnloadEventHandler onbeforeunload;
//   attribute EventHandler onhashchange;
//   attribute EventHandler onlanguagechange;
//   attribute EventHandler onmessage;
//   attribute EventHandler onmessageerror;
//   attribute EventHandler onoffline;
//   attribute EventHandler ononline;
//   attribute EventHandler onpagehide;
//   attribute EventHandler onpagereveal;
//   attribute EventHandler onpageshow;
//   attribute EventHandler onpageswap;
//   attribute EventHandler onpopstate;
//   attribute EventHandler onrejectionhandled;
//   attribute EventHandler onstorage;
//   attribute EventHandler onunhandledrejection;
//   attribute EventHandler onunload;
// };

///|
#external
pub type HTMLBodyElement

///|
pub trait THTMLBodyElement: TJsValue + THTMLElement {
  text(self : Self) -> String = _
  set_text(self : Self, value : String) -> Unit = _
  link(self : Self) -> String = _
  set_link(self : Self, value : String) -> Unit = _
  v_link(self : Self) -> String = _
  set_v_link(self : Self, value : String) -> Unit = _
  a_link(self : Self) -> String = _
  set_a_link(self : Self, value : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, value : String) -> Unit = _
  background(self : Self) -> String = _
  set_background(self : Self, value : String) -> Unit = _
  onafterprint(self : Self) -> EventHandler = _
  set_onafterprint(self : Self, value : EventHandler) -> Unit = _
  onbeforeprint(self : Self) -> EventHandler = _
  set_onbeforeprint(self : Self, value : EventHandler) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler = _
  set_onbeforeunload(self : Self, value : OnBeforeUnloadEventHandler) -> Unit = _
  onhashchange(self : Self) -> EventHandler = _
  set_onhashchange(self : Self, value : EventHandler) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, value : EventHandler) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, value : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, value : EventHandler) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, value : EventHandler) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, value : EventHandler) -> Unit = _
  onpagehide(self : Self) -> EventHandler = _
  set_onpagehide(self : Self, value : EventHandler) -> Unit = _
  onpagereveal(self : Self) -> EventHandler = _
  set_onpagereveal(self : Self, value : EventHandler) -> Unit = _
  onpageshow(self : Self) -> EventHandler = _
  set_onpageshow(self : Self, value : EventHandler) -> Unit = _
  onpageswap(self : Self) -> EventHandler = _
  set_onpageswap(self : Self, value : EventHandler) -> Unit = _
  onpopstate(self : Self) -> EventHandler = _
  set_onpopstate(self : Self, value : EventHandler) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, value : EventHandler) -> Unit = _
  onstorage(self : Self) -> EventHandler = _
  set_onstorage(self : Self, value : EventHandler) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(self : Self, value : EventHandler) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, value : EventHandler) -> Unit = _
}

///|
pub impl TEventTarget for HTMLBodyElement

///|
pub impl TNode for HTMLBodyElement

///|
pub impl TElement for HTMLBodyElement

///|
pub impl THTMLElement for HTMLBodyElement

///|
pub impl THTMLBodyElement for HTMLBodyElement

///|
pub impl TJsValue for HTMLBodyElement with to_js(self : HTMLBodyElement) -> JsValue = "%identity"

///|
fn html_body_element_text_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "text"

///|
impl THTMLBodyElement with text(self : Self) -> String {
  html_body_element_text_ffi(self.to_js())
}

///|
fn html_body_element_set_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_text"

///|
impl THTMLBodyElement with set_text(self : Self, value : String) -> Unit {
  html_body_element_set_text_ffi(self.to_js(), value)
}

///|
fn html_body_element_link_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "link"

///|
impl THTMLBodyElement with link(self : Self) -> String {
  html_body_element_link_ffi(self.to_js())
}

///|
fn html_body_element_set_link_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_link"

///|
impl THTMLBodyElement with set_link(self : Self, value : String) -> Unit {
  html_body_element_set_link_ffi(self.to_js(), value)
}

///|
fn html_body_element_v_link_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "vLink"

///|
impl THTMLBodyElement with v_link(self : Self) -> String {
  html_body_element_v_link_ffi(self.to_js())
}

///|
fn html_body_element_set_v_link_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_vLink"

///|
impl THTMLBodyElement with set_v_link(self : Self, value : String) -> Unit {
  html_body_element_set_v_link_ffi(self.to_js(), value)
}

///|
fn html_body_element_a_link_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "aLink"

///|
impl THTMLBodyElement with a_link(self : Self) -> String {
  html_body_element_a_link_ffi(self.to_js())
}

///|
fn html_body_element_set_a_link_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_aLink"

///|
impl THTMLBodyElement with set_a_link(self : Self, value : String) -> Unit {
  html_body_element_set_a_link_ffi(self.to_js(), value)
}

///|
fn html_body_element_bg_color_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "bgColor"

///|
impl THTMLBodyElement with bg_color(self : Self) -> String {
  html_body_element_bg_color_ffi(self.to_js())
}

///|
fn html_body_element_set_bg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_bgColor"

///|
impl THTMLBodyElement with set_bg_color(self : Self, value : String) -> Unit {
  html_body_element_set_bg_color_ffi(self.to_js(), value)
}

///|
fn html_body_element_background_ffi(obj : JsValue) -> String = "webapi_HTMLBodyElement" "background"

///|
impl THTMLBodyElement with background(self : Self) -> String {
  html_body_element_background_ffi(self.to_js())
}

///|
fn html_body_element_set_background_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLBodyElement" "set_background"

///|
impl THTMLBodyElement with set_background(self : Self, value : String) -> Unit {
  html_body_element_set_background_ffi(self.to_js(), value)
}

///|
fn html_body_element_onafterprint_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onafterprint"

///|
impl THTMLBodyElement with onafterprint(self : Self) -> EventHandler {
  html_body_element_onafterprint_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onafterprint_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onafterprint"

///|
impl THTMLBodyElement with set_onafterprint(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onafterprint_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onbeforeprint_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onbeforeprint"

///|
impl THTMLBodyElement with onbeforeprint(self : Self) -> EventHandler {
  html_body_element_onbeforeprint_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onbeforeprint_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onbeforeprint"

///|
impl THTMLBodyElement with set_onbeforeprint(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onbeforeprint_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onbeforeunload_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onbeforeunload"

///|
impl THTMLBodyElement with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  html_body_element_onbeforeunload_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onbeforeunload_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onbeforeunload"

///|
impl THTMLBodyElement with set_onbeforeunload(
  self : Self,
  value : OnBeforeUnloadEventHandler,
) -> Unit {
  html_body_element_set_onbeforeunload_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onhashchange_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onhashchange"

///|
impl THTMLBodyElement with onhashchange(self : Self) -> EventHandler {
  html_body_element_onhashchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onhashchange_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onhashchange"

///|
impl THTMLBodyElement with set_onhashchange(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onhashchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onlanguagechange_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onlanguagechange"

///|
impl THTMLBodyElement with onlanguagechange(self : Self) -> EventHandler {
  html_body_element_onlanguagechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onlanguagechange_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onlanguagechange"

///|
impl THTMLBodyElement with set_onlanguagechange(
  self : Self,
  value : EventHandler,
) -> Unit {
  html_body_element_set_onlanguagechange_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_body_element_onmessage_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onmessage"

///|
impl THTMLBodyElement with onmessage(self : Self) -> EventHandler {
  html_body_element_onmessage_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onmessage_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_onmessage"

///|
impl THTMLBodyElement with set_onmessage(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onmessage_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onmessageerror_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onmessageerror"

///|
impl THTMLBodyElement with onmessageerror(self : Self) -> EventHandler {
  html_body_element_onmessageerror_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onmessageerror_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onmessageerror"

///|
impl THTMLBodyElement with set_onmessageerror(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onmessageerror_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onoffline_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onoffline"

///|
impl THTMLBodyElement with onoffline(self : Self) -> EventHandler {
  html_body_element_onoffline_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onoffline_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_onoffline"

///|
impl THTMLBodyElement with set_onoffline(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onoffline_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_ononline_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "ononline"

///|
impl THTMLBodyElement with ononline(self : Self) -> EventHandler {
  html_body_element_ononline_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_ononline_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_ononline"

///|
impl THTMLBodyElement with set_ononline(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_ononline_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onpagehide_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onpagehide"

///|
impl THTMLBodyElement with onpagehide(self : Self) -> EventHandler {
  html_body_element_onpagehide_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onpagehide_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_onpagehide"

///|
impl THTMLBodyElement with set_onpagehide(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onpagehide_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onpagereveal_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onpagereveal"

///|
impl THTMLBodyElement with onpagereveal(self : Self) -> EventHandler {
  html_body_element_onpagereveal_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onpagereveal_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onpagereveal"

///|
impl THTMLBodyElement with set_onpagereveal(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onpagereveal_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onpageshow_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onpageshow"

///|
impl THTMLBodyElement with onpageshow(self : Self) -> EventHandler {
  html_body_element_onpageshow_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onpageshow_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_onpageshow"

///|
impl THTMLBodyElement with set_onpageshow(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onpageshow_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onpageswap_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onpageswap"

///|
impl THTMLBodyElement with onpageswap(self : Self) -> EventHandler {
  html_body_element_onpageswap_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onpageswap_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_onpageswap"

///|
impl THTMLBodyElement with set_onpageswap(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onpageswap_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onpopstate_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onpopstate"

///|
impl THTMLBodyElement with onpopstate(self : Self) -> EventHandler {
  html_body_element_onpopstate_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onpopstate_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_onpopstate"

///|
impl THTMLBodyElement with set_onpopstate(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onpopstate_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onrejectionhandled_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onrejectionhandled"

///|
impl THTMLBodyElement with onrejectionhandled(self : Self) -> EventHandler {
  html_body_element_onrejectionhandled_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onrejectionhandled_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onrejectionhandled"

///|
impl THTMLBodyElement with set_onrejectionhandled(
  self : Self,
  value : EventHandler,
) -> Unit {
  html_body_element_set_onrejectionhandled_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_body_element_onstorage_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onstorage"

///|
impl THTMLBodyElement with onstorage(self : Self) -> EventHandler {
  html_body_element_onstorage_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onstorage_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_onstorage"

///|
impl THTMLBodyElement with set_onstorage(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onstorage_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_body_element_onunhandledrejection_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onunhandledrejection"

///|
impl THTMLBodyElement with onunhandledrejection(self : Self) -> EventHandler {
  html_body_element_onunhandledrejection_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onunhandledrejection_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLBodyElement" "set_onunhandledrejection"

///|
impl THTMLBodyElement with set_onunhandledrejection(
  self : Self,
  value : EventHandler,
) -> Unit {
  html_body_element_set_onunhandledrejection_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_body_element_onunload_ffi(obj : JsValue) -> JsValue = "webapi_HTMLBodyElement" "onunload"

///|
impl THTMLBodyElement with onunload(self : Self) -> EventHandler {
  html_body_element_onunload_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_body_element_set_onunload_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLBodyElement" "set_onunload"

///|
impl THTMLBodyElement with set_onunload(self : Self, value : EventHandler) -> Unit {
  html_body_element_set_onunload_ffi(self.to_js(), TJsValue::to_js(value))
}
