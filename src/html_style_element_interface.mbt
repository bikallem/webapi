// Do not edit. This file is generated.
// MoonBit type: HTMLStyleElement
// Specifications: html.idl

///|
/// [HTMLStyleElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement)
#external
pub type HTMLStyleElement

///|
pub impl TJsValue for HTMLStyleElement with to_js(self : HTMLStyleElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLStyleElement with from_js_any(value : JsAny) -> HTMLStyleElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLStyleElement] HTMLStyleElement::into(
  self : HTMLStyleElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLStyleElement] HTMLStyleElement::unsafe_into(
  self : HTMLStyleElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLStyleElement with constructor_name() {
  "HTMLStyleElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLStyleElement + HasConstructor] HTMLStyleElement::try_into(
  self : HTMLStyleElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLStyleElement for HTMLStyleElement

///|
pub impl THTMLElement for HTMLStyleElement

///|
pub impl TElement for HTMLStyleElement

///|
pub impl TNode for HTMLStyleElement

///|
pub impl TEventTarget for HTMLStyleElement

///|
pub fn HTMLStyleElement::new() -> HTMLStyleElement {
  html_style_element_new_ffi()
}

///|
/// [HTMLStyleElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement) interface.
pub trait THTMLStyleElement: THTMLElement {
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  blocking(self : Self) -> DOMTokenList = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  sheet(self : Self) -> CSSStyleSheet = _
}

///|
/// [HTMLStyleElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement/disabled)
impl THTMLStyleElement with disabled(self : Self) -> Bool {
  html_style_element_disabled_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLStyleElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement/disabled)
impl THTMLStyleElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_style_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
/// [HTMLStyleElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement/media)
impl THTMLStyleElement with media(self : Self) -> String {
  html_style_element_media_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLStyleElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement/media)
impl THTMLStyleElement with set_media(self : Self, media : String) -> Unit {
  html_style_element_set_media_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(media),
  )
}

///|
/// [HTMLStyleElement.blocking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement/blocking)
impl THTMLStyleElement with blocking(self : Self) -> DOMTokenList {
  html_style_element_blocking_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLStyleElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement/type)
impl THTMLStyleElement with type_(self : Self) -> String {
  html_style_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLStyleElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement/type)
impl THTMLStyleElement with set_type_(self : Self, type_ : String) -> Unit {
  html_style_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
/// [HTMLStyleElement.sheet](https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement/sheet)
impl THTMLStyleElement with sheet(self : Self) -> CSSStyleSheet {
  html_style_element_sheet_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_style_element_new_ffi() -> HTMLStyleElement = "() => new HTMLStyleElement()"

///|
#cfg(target="js")
extern "js" fn html_style_element_disabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn html_style_element_disabled_ffi(obj : JsValue) -> Bool {
  html_style_element_disabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_style_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
#cfg(target="js")
extern "js" fn html_style_element_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn html_style_element_media_ffi(obj : JsValue) -> String {
  html_style_element_media_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_style_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
#cfg(target="js")
extern "js" fn html_style_element_blocking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.blocking"

///|
#cfg(target="js")
fn html_style_element_blocking_ffi(obj : JsValue) -> DOMTokenList {
  html_style_element_blocking_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_style_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_style_element_type_ffi(obj : JsValue) -> String {
  html_style_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_style_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
#cfg(target="js")
extern "js" fn html_style_element_sheet_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sheet"

///|
#cfg(target="js")
fn html_style_element_sheet_ffi(obj : JsValue) -> CSSStyleSheet {
  html_style_element_sheet_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_style_element_new_ffi() -> HTMLStyleElement = "webapi_HTMLStyleElement" "new"

///|
#cfg(target="wasm-gc")
fn html_style_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLStyleElement" "get_disabled"

///|
#cfg(target="wasm-gc")
fn html_style_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "webapi_HTMLStyleElement" "set_disabled"

///|
#cfg(target="wasm-gc")
fn html_style_element_media_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLStyleElement" "get_media"

///|
#cfg(target="wasm-gc")
fn html_style_element_media_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_style_element_media_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_style_element_set_media_ffi(obj : JsValue, media : JsValue) -> Unit = "webapi_HTMLStyleElement" "set_media"

///|
#cfg(target="wasm-gc")
fn html_style_element_blocking_ffi(obj : JsValue) -> DOMTokenList = "webapi_HTMLStyleElement" "get_blocking"

///|
#cfg(target="wasm-gc")
fn html_style_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLStyleElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_style_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_style_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_style_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLStyleElement" "set_type"

///|
#cfg(target="wasm-gc")
fn html_style_element_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "webapi_HTMLStyleElement" "get_sheet"
