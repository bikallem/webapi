// Do not edit. This file is generated.
// MoonBit type: HTMLEmbedElement
// Specifications: html.idl

/// [HTMLEmbedElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement)
#external
pub type HTMLEmbedElement

pub impl TJsValue for HTMLEmbedElement with to_js(self: HTMLEmbedElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLEmbedElement with from_js_any(value : JsAny) -> HTMLEmbedElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLEmbedElement] HTMLEmbedElement::into(self : HTMLEmbedElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLEmbedElement] HTMLEmbedElement::unsafe_into(self : HTMLEmbedElement) -> T = "%identity"

pub impl HasConstructor for HTMLEmbedElement with constructor_name() { "HTMLEmbedElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLEmbedElement + HasConstructor] HTMLEmbedElement::try_into(self : HTMLEmbedElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLEmbedElement for HTMLEmbedElement

pub impl THTMLElement for HTMLEmbedElement

pub impl TElement for HTMLEmbedElement

pub impl TNode for HTMLEmbedElement

pub impl TEventTarget for HTMLEmbedElement

pub fn HTMLEmbedElement::new() -> HTMLEmbedElement {
  html_embed_element_new_ffi()
}

/// [HTMLEmbedElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement) interface.
pub trait THTMLEmbedElement: THTMLElement {
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
  height(self : Self) -> String = _
  set_height(self : Self, height : String) -> Unit = _
  get_svg_document_opt(self : Self) -> Document? = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  get_svg_document(self : Self) -> Document = _
}

/// [HTMLEmbedElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/src)
impl THTMLEmbedElement with src(self : Self) -> String {
  html_embed_element_src_ffi(TJsValue::to_js(self))
}

/// [HTMLEmbedElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/src)
impl THTMLEmbedElement with set_src(self : Self, 
src : String) -> Unit {
  html_embed_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

/// [HTMLEmbedElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/type)
impl THTMLEmbedElement with type_(self : Self) -> String {
  html_embed_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLEmbedElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/type)
impl THTMLEmbedElement with set_type_(self : Self, 
type_ : String) -> Unit {
  html_embed_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLEmbedElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/width)
impl THTMLEmbedElement with width(self : Self) -> String {
  html_embed_element_width_ffi(TJsValue::to_js(self))
}

/// [HTMLEmbedElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/width)
impl THTMLEmbedElement with set_width(self : Self, 
width : String) -> Unit {
  html_embed_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLEmbedElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/height)
impl THTMLEmbedElement with height(self : Self) -> String {
  html_embed_element_height_ffi(TJsValue::to_js(self))
}

/// [HTMLEmbedElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/height)
impl THTMLEmbedElement with set_height(self : Self, 
height : String) -> Unit {
  html_embed_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [HTMLEmbedElement.getSVGDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/getSVGDocument)
impl THTMLEmbedElement with get_svg_document_opt(self : Self) -> Document? {
  html_embed_element_get_svg_document_ffi(TJsValue::to_js(self)).to_option()
}

/// [HTMLEmbedElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/align)
impl THTMLEmbedElement with align(self : Self) -> String {
  html_embed_element_align_ffi(TJsValue::to_js(self))
}

/// [HTMLEmbedElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/align)
impl THTMLEmbedElement with set_align(self : Self, 
align : String) -> Unit {
  html_embed_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

/// [HTMLEmbedElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/name)
impl THTMLEmbedElement with name(self : Self) -> String {
  html_embed_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLEmbedElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/name)
impl THTMLEmbedElement with set_name(self : Self, 
name : String) -> Unit {
  html_embed_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

impl THTMLEmbedElement with get_svg_document(self : Self) -> Document {
  self.get_svg_document_opt().unwrap()
}

#cfg(target="js")
extern "js" fn html_embed_element_new_ffi() -> HTMLEmbedElement = "() => new HTMLEmbedElement()"

#cfg(target="js")
extern "js" fn html_embed_element_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn html_embed_element_src_ffi(obj: JsValue) -> String {
  html_embed_element_src_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_embed_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

#cfg(target="js")
extern "js" fn html_embed_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_embed_element_type_ffi(obj: JsValue) -> String {
  html_embed_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_embed_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

#cfg(target="js")
extern "js" fn html_embed_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_embed_element_width_ffi(obj: JsValue) -> String {
  html_embed_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_embed_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

#cfg(target="js")
extern "js" fn html_embed_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_embed_element_height_ffi(obj: JsValue) -> String {
  html_embed_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_embed_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

#cfg(target="js")
extern "js" fn html_embed_element_get_svg_document_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getSVGDocument()"

#cfg(target="js")
extern "js" fn html_embed_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_embed_element_align_ffi(obj: JsValue) -> String {
  html_embed_element_align_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_embed_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

#cfg(target="js")
extern "js" fn html_embed_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_embed_element_name_ffi(obj: JsValue) -> String {
  html_embed_element_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_embed_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

#cfg(target="wasm-gc")
fn html_embed_element_new_ffi() -> HTMLEmbedElement = "webapi_HTMLEmbedElement" "new"

#cfg(target="wasm-gc")
fn html_embed_element_src_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_src"

///|
#cfg(target="wasm-gc")
fn html_embed_element_src_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_embed_element_src_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_embed_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_src"

#cfg(target="wasm-gc")
fn html_embed_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_embed_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_embed_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_embed_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_type"

#cfg(target="wasm-gc")
fn html_embed_element_width_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_embed_element_width_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_embed_element_width_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_embed_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_width"

#cfg(target="wasm-gc")
fn html_embed_element_height_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_height"

///|
#cfg(target="wasm-gc")
fn html_embed_element_height_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_embed_element_height_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_embed_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_height"

#cfg(target="wasm-gc")
fn html_embed_element_get_svg_document_ffi(obj: JsValue) -> JsValue = "webapi_HTMLEmbedElement" "getSVGDocument"

#cfg(target="wasm-gc")
fn html_embed_element_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_embed_element_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_embed_element_align_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_embed_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_align"

#cfg(target="wasm-gc")
fn html_embed_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_embed_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_embed_element_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_embed_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_name"