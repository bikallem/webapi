// Do not edit. This file is generated.
// MoonBit type: HTMLMetaElement
// Specifications: html.idl

///|
/// [HTMLMetaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement)
#external
pub type HTMLMetaElement

///|
pub impl TJsValue for HTMLMetaElement with to_js(self : HTMLMetaElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLMetaElement with from_js_any(value : JsAny) -> HTMLMetaElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLMetaElement] HTMLMetaElement::into(self : HTMLMetaElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLMetaElement] HTMLMetaElement::unsafe_into(
  self : HTMLMetaElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLMetaElement with constructor_name() {
  "HTMLMetaElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLMetaElement + HasConstructor] HTMLMetaElement::try_into(
  self : HTMLMetaElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLMetaElement for HTMLMetaElement

///|
pub impl THTMLElement for HTMLMetaElement

///|
pub impl TElement for HTMLMetaElement

///|
pub impl TNode for HTMLMetaElement

///|
pub impl TEventTarget for HTMLMetaElement

///|
pub fn HTMLMetaElement::new() -> HTMLMetaElement {
  html_meta_element_new_ffi()
}

///|
/// [HTMLMetaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement) interface.
pub trait THTMLMetaElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  http_equiv(self : Self) -> String = _
  set_http_equiv(self : Self, http_equiv : String) -> Unit = _
  content(self : Self) -> String = _
  set_content(self : Self, content : String) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  scheme(self : Self) -> String = _
  set_scheme(self : Self, scheme : String) -> Unit = _
}

///|
/// [HTMLMetaElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/name)
impl THTMLMetaElement with name(self : Self) -> String {
  html_meta_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMetaElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/name)
impl THTMLMetaElement with set_name(self : Self, name : String) -> Unit {
  html_meta_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLMetaElement.httpEquiv](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/httpEquiv)
impl THTMLMetaElement with http_equiv(self : Self) -> String {
  html_meta_element_http_equiv_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMetaElement.httpEquiv](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/httpEquiv)
impl THTMLMetaElement with set_http_equiv(self : Self, http_equiv : String) -> Unit {
  html_meta_element_set_http_equiv_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(http_equiv),
  )
}

///|
/// [HTMLMetaElement.content](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/content)
impl THTMLMetaElement with content(self : Self) -> String {
  html_meta_element_content_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMetaElement.content](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/content)
impl THTMLMetaElement with set_content(self : Self, content : String) -> Unit {
  html_meta_element_set_content_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(content),
  )
}

///|
/// [HTMLMetaElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/media)
impl THTMLMetaElement with media(self : Self) -> String {
  html_meta_element_media_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMetaElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/media)
impl THTMLMetaElement with set_media(self : Self, media : String) -> Unit {
  html_meta_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

///|
/// [HTMLMetaElement.scheme](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/scheme)
impl THTMLMetaElement with scheme(self : Self) -> String {
  html_meta_element_scheme_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMetaElement.scheme](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/scheme)
impl THTMLMetaElement with set_scheme(self : Self, scheme : String) -> Unit {
  html_meta_element_set_scheme_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scheme),
  )
}

///|
#cfg(target="js")
extern "js" fn html_meta_element_new_ffi() -> HTMLMetaElement = "() => new HTMLMetaElement()"

///|
#cfg(target="js")
extern "js" fn html_meta_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_meta_element_name_ffi(obj : JsValue) -> String {
  html_meta_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meta_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn html_meta_element_http_equiv_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.httpEquiv"

///|
#cfg(target="js")
fn html_meta_element_http_equiv_ffi(obj : JsValue) -> String {
  html_meta_element_http_equiv_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meta_element_set_http_equiv_ffi(
  obj : JsValue,
  http_equiv : JsValue,
) -> Unit = "(obj, httpEquiv) => { obj.httpEquiv = httpEquiv; }"

///|
#cfg(target="js")
extern "js" fn html_meta_element_content_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.content"

///|
#cfg(target="js")
fn html_meta_element_content_ffi(obj : JsValue) -> String {
  html_meta_element_content_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meta_element_set_content_ffi(
  obj : JsValue,
  content : JsValue,
) -> Unit = "(obj, content) => { obj.content = content; }"

///|
#cfg(target="js")
extern "js" fn html_meta_element_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn html_meta_element_media_ffi(obj : JsValue) -> String {
  html_meta_element_media_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meta_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
#cfg(target="js")
extern "js" fn html_meta_element_scheme_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scheme"

///|
#cfg(target="js")
fn html_meta_element_scheme_ffi(obj : JsValue) -> String {
  html_meta_element_scheme_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meta_element_set_scheme_ffi(
  obj : JsValue,
  scheme : JsValue,
) -> Unit = "(obj, scheme) => { obj.scheme = scheme; }"

///|
#cfg(target="wasm-gc")
fn html_meta_element_new_ffi() -> HTMLMetaElement = "webapi_HTMLMetaElement" "new"

///|
#cfg(target="wasm-gc")
fn html_meta_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_meta_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_meta_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_meta_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLMetaElement" "set_name"

///|
#cfg(target="wasm-gc")
fn html_meta_element_http_equiv_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_httpEquiv"

///|
#cfg(target="wasm-gc")
fn html_meta_element_http_equiv_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_meta_element_http_equiv_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_meta_element_set_http_equiv_ffi(
  obj : JsValue,
  http_equiv : JsValue,
) -> Unit = "webapi_HTMLMetaElement" "set_httpEquiv"

///|
#cfg(target="wasm-gc")
fn html_meta_element_content_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_content"

///|
#cfg(target="wasm-gc")
fn html_meta_element_content_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_meta_element_content_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_meta_element_set_content_ffi(obj : JsValue, content : JsValue) -> Unit = "webapi_HTMLMetaElement" "set_content"

///|
#cfg(target="wasm-gc")
fn html_meta_element_media_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_media"

///|
#cfg(target="wasm-gc")
fn html_meta_element_media_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_meta_element_media_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_meta_element_set_media_ffi(obj : JsValue, media : JsValue) -> Unit = "webapi_HTMLMetaElement" "set_media"

///|
#cfg(target="wasm-gc")
fn html_meta_element_scheme_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_scheme"

///|
#cfg(target="wasm-gc")
fn html_meta_element_scheme_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_meta_element_scheme_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_meta_element_set_scheme_ffi(obj : JsValue, scheme : JsValue) -> Unit = "webapi_HTMLMetaElement" "set_scheme"
