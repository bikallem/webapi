// Do not edit. This file is generated.
// MoonBit type: HTMLHRElement
// Specifications: html.idl

/// [HTMLHRElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement)
#external
pub type HTMLHRElement

pub impl TJsValue for HTMLHRElement with to_js(self: HTMLHRElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLHRElement with from_js_any(value : JsAny) -> HTMLHRElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLHRElement] HTMLHRElement::into(self : HTMLHRElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLHRElement] HTMLHRElement::unsafe_into(self : HTMLHRElement) -> T = "%identity"

pub impl HasConstructor for HTMLHRElement with constructor_name() { "HTMLHRElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLHRElement + HasConstructor] HTMLHRElement::try_into(self : HTMLHRElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLHRElement for HTMLHRElement

pub impl THTMLElement for HTMLHRElement

pub impl TElement for HTMLHRElement

pub impl TNode for HTMLHRElement

pub impl TEventTarget for HTMLHRElement

pub fn HTMLHRElement::new() -> HTMLHRElement {
  htmlhr_element_new_ffi()
}

/// [HTMLHRElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement) interface.
pub trait THTMLHRElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  color(self : Self) -> String = _
  set_color(self : Self, color : String) -> Unit = _
  no_shade(self : Self) -> Bool = _
  set_no_shade(self : Self, no_shade : Bool) -> Unit = _
  size(self : Self) -> String = _
  set_size(self : Self, size : String) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
}

/// [HTMLHRElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/align)
impl THTMLHRElement with align(self : Self) -> String {
  htmlhr_element_align_ffi(TJsValue::to_js(self))
}

/// [HTMLHRElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/align)
impl THTMLHRElement with set_align(self : Self, 
align : String) -> Unit {
  htmlhr_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

/// [HTMLHRElement.color](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/color)
impl THTMLHRElement with color(self : Self) -> String {
  htmlhr_element_color_ffi(TJsValue::to_js(self))
}

/// [HTMLHRElement.color](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/color)
impl THTMLHRElement with set_color(self : Self, 
color : String) -> Unit {
  htmlhr_element_set_color_ffi(TJsValue::to_js(self), TJsValue::to_js(color))
}

/// [HTMLHRElement.noShade](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/noShade)
impl THTMLHRElement with no_shade(self : Self) -> Bool {
  htmlhr_element_no_shade_ffi(TJsValue::to_js(self))
}

/// [HTMLHRElement.noShade](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/noShade)
impl THTMLHRElement with set_no_shade(self : Self, 
no_shade : Bool) -> Unit {
  htmlhr_element_set_no_shade_ffi(TJsValue::to_js(self), TJsValue::to_js(no_shade))
}

/// [HTMLHRElement.size](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/size)
impl THTMLHRElement with size(self : Self) -> String {
  htmlhr_element_size_ffi(TJsValue::to_js(self))
}

/// [HTMLHRElement.size](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/size)
impl THTMLHRElement with set_size(self : Self, 
size : String) -> Unit {
  htmlhr_element_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}

/// [HTMLHRElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/width)
impl THTMLHRElement with width(self : Self) -> String {
  htmlhr_element_width_ffi(TJsValue::to_js(self))
}

/// [HTMLHRElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement/width)
impl THTMLHRElement with set_width(self : Self, 
width : String) -> Unit {
  htmlhr_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

#cfg(target="js")
extern "js" fn htmlhr_element_new_ffi() -> HTMLHRElement = "() => new HTMLHRElement()"

#cfg(target="js")
extern "js" fn htmlhr_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn htmlhr_element_align_ffi(obj: JsValue) -> String {
  htmlhr_element_align_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn htmlhr_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

#cfg(target="js")
extern "js" fn htmlhr_element_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.color"

///|
#cfg(target="js")
fn htmlhr_element_color_ffi(obj: JsValue) -> String {
  htmlhr_element_color_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn htmlhr_element_set_color_ffi(obj: JsValue, color: JsValue) -> Unit = "(obj, color) => { obj.color = color; }"

#cfg(target="js")
extern "js" fn htmlhr_element_no_shade_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.noShade"

///|
#cfg(target="js")
fn htmlhr_element_no_shade_ffi(obj: JsValue) -> Bool {
  htmlhr_element_no_shade_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn htmlhr_element_set_no_shade_ffi(obj: JsValue, no_shade: JsValue) -> Unit = "(obj, noShade) => { obj.noShade = noShade; }"

#cfg(target="js")
extern "js" fn htmlhr_element_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn htmlhr_element_size_ffi(obj: JsValue) -> String {
  htmlhr_element_size_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn htmlhr_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "(obj, size) => { obj.size = size; }"

#cfg(target="js")
extern "js" fn htmlhr_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn htmlhr_element_width_ffi(obj: JsValue) -> String {
  htmlhr_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn htmlhr_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

#cfg(target="wasm-gc")
fn htmlhr_element_new_ffi() -> HTMLHRElement = "webapi_HTMLHRElement" "new"

#cfg(target="wasm-gc")
fn htmlhr_element_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLHRElement" "get_align"

///|
#cfg(target="wasm-gc")
fn htmlhr_element_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(htmlhr_element_align_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn htmlhr_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "webapi_HTMLHRElement" "set_align"

#cfg(target="wasm-gc")
fn htmlhr_element_color_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLHRElement" "get_color"

///|
#cfg(target="wasm-gc")
fn htmlhr_element_color_ffi(obj: JsValue) -> String {
  jsvalue_to_string(htmlhr_element_color_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn htmlhr_element_set_color_ffi(obj: JsValue, color: JsValue) -> Unit = "webapi_HTMLHRElement" "set_color"

#cfg(target="wasm-gc")
fn htmlhr_element_no_shade_ffi(obj: JsValue) -> Bool = "webapi_HTMLHRElement" "get_noShade"

#cfg(target="wasm-gc")
fn htmlhr_element_set_no_shade_ffi(obj: JsValue, no_shade: JsValue) -> Unit = "webapi_HTMLHRElement" "set_noShade"

#cfg(target="wasm-gc")
fn htmlhr_element_size_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLHRElement" "get_size"

///|
#cfg(target="wasm-gc")
fn htmlhr_element_size_ffi(obj: JsValue) -> String {
  jsvalue_to_string(htmlhr_element_size_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn htmlhr_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "webapi_HTMLHRElement" "set_size"

#cfg(target="wasm-gc")
fn htmlhr_element_width_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLHRElement" "get_width"

///|
#cfg(target="wasm-gc")
fn htmlhr_element_width_ffi(obj: JsValue) -> String {
  jsvalue_to_string(htmlhr_element_width_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn htmlhr_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_HTMLHRElement" "set_width"