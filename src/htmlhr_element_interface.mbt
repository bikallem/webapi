// Do not edit. This file is generated.
// MoonBit type: HTMLHRElement
// Specifications: html.idl

/// [HTMLHRElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement)
#external
pub type HTMLHRElement

pub impl TJsValue for HTMLHRElement with to_js(self: HTMLHRElement) -> JsValue = "%identity"

pub fn[T: THTMLHRElement] HTMLHRElement::into(self : HTMLHRElement) -> T = "%identity"

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