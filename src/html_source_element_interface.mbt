// Do not edit. This file is generated.
// MoonBit type: HTMLSourceElement
// Specifications: html.idl

/// [HTMLSourceElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement)
#external
pub type HTMLSourceElement

pub impl TJsValue for HTMLSourceElement with to_js(self: HTMLSourceElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLSourceElement with from_js_any(value : JsAny) -> HTMLSourceElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLSourceElement] HTMLSourceElement::into(self : HTMLSourceElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLSourceElement] HTMLSourceElement::unsafe_into(self : HTMLSourceElement) -> T = "%identity"

pub impl HasConstructor for HTMLSourceElement with constructor_name() { "HTMLSourceElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLSourceElement + HasConstructor] HTMLSourceElement::try_into(self : HTMLSourceElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLSourceElement for HTMLSourceElement

pub impl THTMLElement for HTMLSourceElement

pub impl TElement for HTMLSourceElement

pub impl TNode for HTMLSourceElement

pub impl TEventTarget for HTMLSourceElement

pub fn HTMLSourceElement::new() -> HTMLSourceElement {
  html_source_element_new_ffi()
}

/// [HTMLSourceElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement) interface.
pub trait THTMLSourceElement: THTMLElement {
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  srcset(self : Self) -> String = _
  set_srcset(self : Self, srcset : String) -> Unit = _
  sizes(self : Self) -> String = _
  set_sizes(self : Self, sizes : String) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  width(self : Self) -> UInt = _
  set_width(self : Self, width : UInt) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, height : UInt) -> Unit = _
}

/// [HTMLSourceElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/src)
impl THTMLSourceElement with src(self : Self) -> String {
  html_source_element_src_ffi(TJsValue::to_js(self))
}

/// [HTMLSourceElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/src)
impl THTMLSourceElement with set_src(self : Self, 
src : String) -> Unit {
  html_source_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

/// [HTMLSourceElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/type)
impl THTMLSourceElement with type_(self : Self) -> String {
  html_source_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLSourceElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/type)
impl THTMLSourceElement with set_type_(self : Self, 
type_ : String) -> Unit {
  html_source_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLSourceElement.srcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/srcset)
impl THTMLSourceElement with srcset(self : Self) -> String {
  html_source_element_srcset_ffi(TJsValue::to_js(self))
}

/// [HTMLSourceElement.srcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/srcset)
impl THTMLSourceElement with set_srcset(self : Self, 
srcset : String) -> Unit {
  html_source_element_set_srcset_ffi(TJsValue::to_js(self), TJsValue::to_js(srcset))
}

/// [HTMLSourceElement.sizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/sizes)
impl THTMLSourceElement with sizes(self : Self) -> String {
  html_source_element_sizes_ffi(TJsValue::to_js(self))
}

/// [HTMLSourceElement.sizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/sizes)
impl THTMLSourceElement with set_sizes(self : Self, 
sizes : String) -> Unit {
  html_source_element_set_sizes_ffi(TJsValue::to_js(self), TJsValue::to_js(sizes))
}

/// [HTMLSourceElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/media)
impl THTMLSourceElement with media(self : Self) -> String {
  html_source_element_media_ffi(TJsValue::to_js(self))
}

/// [HTMLSourceElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/media)
impl THTMLSourceElement with set_media(self : Self, 
media : String) -> Unit {
  html_source_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

/// [HTMLSourceElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/width)
impl THTMLSourceElement with width(self : Self) -> UInt {
  html_source_element_width_ffi(TJsValue::to_js(self))
}

/// [HTMLSourceElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/width)
impl THTMLSourceElement with set_width(self : Self, 
width : UInt) -> Unit {
  html_source_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLSourceElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/height)
impl THTMLSourceElement with height(self : Self) -> UInt {
  html_source_element_height_ffi(TJsValue::to_js(self))
}

/// [HTMLSourceElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/height)
impl THTMLSourceElement with set_height(self : Self, 
height : UInt) -> Unit {
  html_source_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

#cfg(target="js")
extern "js" fn html_source_element_new_ffi() -> HTMLSourceElement = "() => new HTMLSourceElement()"

#cfg(target="js")
extern "js" fn html_source_element_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn html_source_element_src_ffi(obj: JsValue) -> String {
  html_source_element_src_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_source_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

#cfg(target="js")
extern "js" fn html_source_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_source_element_type_ffi(obj: JsValue) -> String {
  html_source_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_source_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

#cfg(target="js")
extern "js" fn html_source_element_srcset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.srcset"

///|
#cfg(target="js")
fn html_source_element_srcset_ffi(obj: JsValue) -> String {
  html_source_element_srcset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_source_element_set_srcset_ffi(obj: JsValue, srcset: JsValue) -> Unit = "(obj, srcset) => { obj.srcset = srcset; }"

#cfg(target="js")
extern "js" fn html_source_element_sizes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sizes"

///|
#cfg(target="js")
fn html_source_element_sizes_ffi(obj: JsValue) -> String {
  html_source_element_sizes_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_source_element_set_sizes_ffi(obj: JsValue, sizes: JsValue) -> Unit = "(obj, sizes) => { obj.sizes = sizes; }"

#cfg(target="js")
extern "js" fn html_source_element_media_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn html_source_element_media_ffi(obj: JsValue) -> String {
  html_source_element_media_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_source_element_set_media_ffi(obj: JsValue, media: JsValue) -> Unit = "(obj, media) => { obj.media = media; }"

#cfg(target="js")
extern "js" fn html_source_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_source_element_width_ffi(obj: JsValue) -> UInt {
  html_source_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_source_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

#cfg(target="js")
extern "js" fn html_source_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_source_element_height_ffi(obj: JsValue) -> UInt {
  html_source_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_source_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

#cfg(target="wasm-gc")
fn html_source_element_new_ffi() -> HTMLSourceElement = "webapi_HTMLSourceElement" "new"

#cfg(target="wasm-gc")
fn html_source_element_src_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_src"

///|
#cfg(target="wasm-gc")
fn html_source_element_src_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_source_element_src_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_source_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "webapi_HTMLSourceElement" "set_src"

#cfg(target="wasm-gc")
fn html_source_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_source_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_source_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_source_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLSourceElement" "set_type"

#cfg(target="wasm-gc")
fn html_source_element_srcset_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_srcset"

///|
#cfg(target="wasm-gc")
fn html_source_element_srcset_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_source_element_srcset_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_source_element_set_srcset_ffi(obj: JsValue, srcset: JsValue) -> Unit = "webapi_HTMLSourceElement" "set_srcset"

#cfg(target="wasm-gc")
fn html_source_element_sizes_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_sizes"

///|
#cfg(target="wasm-gc")
fn html_source_element_sizes_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_source_element_sizes_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_source_element_set_sizes_ffi(obj: JsValue, sizes: JsValue) -> Unit = "webapi_HTMLSourceElement" "set_sizes"

#cfg(target="wasm-gc")
fn html_source_element_media_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_media"

///|
#cfg(target="wasm-gc")
fn html_source_element_media_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_source_element_media_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_source_element_set_media_ffi(obj: JsValue, media: JsValue) -> Unit = "webapi_HTMLSourceElement" "set_media"

#cfg(target="wasm-gc")
fn html_source_element_width_ffi(obj: JsValue) -> UInt = "webapi_HTMLSourceElement" "get_width"

#cfg(target="wasm-gc")
fn html_source_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_HTMLSourceElement" "set_width"

#cfg(target="wasm-gc")
fn html_source_element_height_ffi(obj: JsValue) -> UInt = "webapi_HTMLSourceElement" "get_height"

#cfg(target="wasm-gc")
fn html_source_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_HTMLSourceElement" "set_height"