// Do not edit. This file is generated.
// MoonBit type: HTMLFrameElement
// Specifications: html.idl

///|
/// [HTMLFrameElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement)
#external
pub type HTMLFrameElement

///|
pub impl TJsValue for HTMLFrameElement with to_js(self : HTMLFrameElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLFrameElement with from_js_any(value : JsAny) -> HTMLFrameElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLFrameElement] HTMLFrameElement::into(
  self : HTMLFrameElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLFrameElement] HTMLFrameElement::unsafe_into(
  self : HTMLFrameElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLFrameElement with constructor_name() {
  "HTMLFrameElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLFrameElement + HasConstructor] HTMLFrameElement::try_into(
  self : HTMLFrameElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLFrameElement for HTMLFrameElement

///|
pub impl THTMLElement for HTMLFrameElement

///|
pub impl TElement for HTMLFrameElement

///|
pub impl TNode for HTMLFrameElement

///|
pub impl TEventTarget for HTMLFrameElement

///|
pub fn HTMLFrameElement::new() -> HTMLFrameElement {
  html_frame_element_new_ffi()
}

///|
/// [HTMLFrameElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement) interface.
pub trait THTMLFrameElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  scrolling(self : Self) -> String = _
  set_scrolling(self : Self, scrolling : String) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  frame_border(self : Self) -> String = _
  set_frame_border(self : Self, frame_border : String) -> Unit = _
  long_desc(self : Self) -> String = _
  set_long_desc(self : Self, long_desc : String) -> Unit = _
  no_resize(self : Self) -> Bool = _
  set_no_resize(self : Self, no_resize : Bool) -> Unit = _
  content_document(self : Self) -> Document = _
  content_window(self : Self) -> WindowProxy = _
  margin_height(self : Self) -> String = _
  set_margin_height(self : Self, margin_height : String) -> Unit = _
  margin_width(self : Self) -> String = _
  set_margin_width(self : Self, margin_width : String) -> Unit = _
}

///|
/// [HTMLFrameElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/name)
impl THTMLFrameElement with name(self : Self) -> String {
  html_frame_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/name)
impl THTMLFrameElement with set_name(self : Self, name : String) -> Unit {
  html_frame_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLFrameElement.scrolling](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/scrolling)
impl THTMLFrameElement with scrolling(self : Self) -> String {
  html_frame_element_scrolling_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.scrolling](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/scrolling)
impl THTMLFrameElement with set_scrolling(self : Self, scrolling : String) -> Unit {
  html_frame_element_set_scrolling_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scrolling),
  )
}

///|
/// [HTMLFrameElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/src)
impl THTMLFrameElement with src(self : Self) -> String {
  html_frame_element_src_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/src)
impl THTMLFrameElement with set_src(self : Self, src : String) -> Unit {
  html_frame_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
/// [HTMLFrameElement.frameBorder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/frameBorder)
impl THTMLFrameElement with frame_border(self : Self) -> String {
  html_frame_element_frame_border_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.frameBorder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/frameBorder)
impl THTMLFrameElement with set_frame_border(self : Self, frame_border : String) -> Unit {
  html_frame_element_set_frame_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(frame_border),
  )
}

///|
/// [HTMLFrameElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/longDesc)
impl THTMLFrameElement with long_desc(self : Self) -> String {
  html_frame_element_long_desc_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/longDesc)
impl THTMLFrameElement with set_long_desc(self : Self, long_desc : String) -> Unit {
  html_frame_element_set_long_desc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(long_desc),
  )
}

///|
/// [HTMLFrameElement.noResize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/noResize)
impl THTMLFrameElement with no_resize(self : Self) -> Bool {
  html_frame_element_no_resize_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.noResize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/noResize)
impl THTMLFrameElement with set_no_resize(self : Self, no_resize : Bool) -> Unit {
  html_frame_element_set_no_resize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(no_resize),
  )
}

///|
/// [HTMLFrameElement.contentDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/contentDocument)
impl THTMLFrameElement with content_document(self : Self) -> Document {
  html_frame_element_content_document_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.contentWindow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/contentWindow)
impl THTMLFrameElement with content_window(self : Self) -> WindowProxy {
  html_frame_element_content_window_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.marginHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/marginHeight)
impl THTMLFrameElement with margin_height(self : Self) -> String {
  html_frame_element_margin_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.marginHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/marginHeight)
impl THTMLFrameElement with set_margin_height(
  self : Self,
  margin_height : String,
) -> Unit {
  html_frame_element_set_margin_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_height),
  )
}

///|
/// [HTMLFrameElement.marginWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/marginWidth)
impl THTMLFrameElement with margin_width(self : Self) -> String {
  html_frame_element_margin_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLFrameElement.marginWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/marginWidth)
impl THTMLFrameElement with set_margin_width(self : Self, margin_width : String) -> Unit {
  html_frame_element_set_margin_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_width),
  )
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_new_ffi() -> HTMLFrameElement = "() => new HTMLFrameElement()"

///|
#cfg(target="js")
extern "js" fn html_frame_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_frame_element_name_ffi(obj : JsValue) -> String {
  html_frame_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn html_frame_element_scrolling_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrolling"

///|
#cfg(target="js")
fn html_frame_element_scrolling_ffi(obj : JsValue) -> String {
  html_frame_element_scrolling_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "(obj, scrolling) => { obj.scrolling = scrolling; }"

///|
#cfg(target="js")
extern "js" fn html_frame_element_src_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn html_frame_element_src_ffi(obj : JsValue) -> String {
  html_frame_element_src_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
#cfg(target="js")
extern "js" fn html_frame_element_frame_border_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.frameBorder"

///|
#cfg(target="js")
fn html_frame_element_frame_border_ffi(obj : JsValue) -> String {
  html_frame_element_frame_border_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "(obj, frameBorder) => { obj.frameBorder = frameBorder; }"

///|
#cfg(target="js")
extern "js" fn html_frame_element_long_desc_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.longDesc"

///|
#cfg(target="js")
fn html_frame_element_long_desc_ffi(obj : JsValue) -> String {
  html_frame_element_long_desc_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "(obj, longDesc) => { obj.longDesc = longDesc; }"

///|
#cfg(target="js")
extern "js" fn html_frame_element_no_resize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.noResize"

///|
#cfg(target="js")
fn html_frame_element_no_resize_ffi(obj : JsValue) -> Bool {
  html_frame_element_no_resize_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_set_no_resize_ffi(
  obj : JsValue,
  no_resize : JsValue,
) -> Unit = "(obj, noResize) => { obj.noResize = noResize; }"

///|
#cfg(target="js")
extern "js" fn html_frame_element_content_document_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentDocument"

///|
#cfg(target="js")
fn html_frame_element_content_document_ffi(obj : JsValue) -> Document {
  html_frame_element_content_document_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_content_window_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentWindow"

///|
#cfg(target="js")
fn html_frame_element_content_window_ffi(obj : JsValue) -> WindowProxy {
  html_frame_element_content_window_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_margin_height_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.marginHeight"

///|
#cfg(target="js")
fn html_frame_element_margin_height_ffi(obj : JsValue) -> String {
  html_frame_element_margin_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "(obj, marginHeight) => { obj.marginHeight = marginHeight; }"

///|
#cfg(target="js")
extern "js" fn html_frame_element_margin_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.marginWidth"

///|
#cfg(target="js")
fn html_frame_element_margin_width_ffi(obj : JsValue) -> String {
  html_frame_element_margin_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "(obj, marginWidth) => { obj.marginWidth = marginWidth; }"

///|
#cfg(target="wasm-gc")
fn html_frame_element_new_ffi() -> HTMLFrameElement = "webapi_HTMLFrameElement" "new"

///|
#cfg(target="wasm-gc")
fn html_frame_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_frame_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLFrameElement" "set_name"

///|
#cfg(target="wasm-gc")
fn html_frame_element_scrolling_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_scrolling"

///|
#cfg(target="wasm-gc")
fn html_frame_element_scrolling_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_element_scrolling_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "webapi_HTMLFrameElement" "set_scrolling"

///|
#cfg(target="wasm-gc")
fn html_frame_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_src"

///|
#cfg(target="wasm-gc")
fn html_frame_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_element_src_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLFrameElement" "set_src"

///|
#cfg(target="wasm-gc")
fn html_frame_element_frame_border_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_frameBorder"

///|
#cfg(target="wasm-gc")
fn html_frame_element_frame_border_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_element_frame_border_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "webapi_HTMLFrameElement" "set_frameBorder"

///|
#cfg(target="wasm-gc")
fn html_frame_element_long_desc_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_longDesc"

///|
#cfg(target="wasm-gc")
fn html_frame_element_long_desc_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_element_long_desc_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "webapi_HTMLFrameElement" "set_longDesc"

///|
#cfg(target="wasm-gc")
fn html_frame_element_no_resize_ffi(obj : JsValue) -> Bool = "webapi_HTMLFrameElement" "get_noResize"

///|
#cfg(target="wasm-gc")
fn html_frame_element_set_no_resize_ffi(
  obj : JsValue,
  no_resize : JsValue,
) -> Unit = "webapi_HTMLFrameElement" "set_noResize"

///|
#cfg(target="wasm-gc")
fn html_frame_element_content_document_ffi(obj : JsValue) -> Document = "webapi_HTMLFrameElement" "get_contentDocument"

///|
#cfg(target="wasm-gc")
fn html_frame_element_content_window_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_contentWindow"

///|
#cfg(target="wasm-gc")
fn html_frame_element_content_window_ffi(obj : JsValue) -> WindowProxy {
  html_frame_element_content_window_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_frame_element_margin_height_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_marginHeight"

///|
#cfg(target="wasm-gc")
fn html_frame_element_margin_height_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_element_margin_height_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "webapi_HTMLFrameElement" "set_marginHeight"

///|
#cfg(target="wasm-gc")
fn html_frame_element_margin_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_marginWidth"

///|
#cfg(target="wasm-gc")
fn html_frame_element_margin_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_frame_element_margin_width_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "webapi_HTMLFrameElement" "set_marginWidth"
