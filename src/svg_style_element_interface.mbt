// Do not edit. This file is generated.
// MoonBit type: SVGStyleElement
// Specifications: SVG.idl

/// [SVGStyleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement)
#external
pub type SVGStyleElement

pub impl TJsValue for SVGStyleElement with to_js(self: SVGStyleElement) -> JsValue = "%identity"

pub fn[T: TSVGStyleElement] SVGStyleElement::into(self : SVGStyleElement) -> T = "%identity"

pub impl TSVGStyleElement for SVGStyleElement

pub impl TSVGElement for SVGStyleElement

pub impl TElement for SVGStyleElement

pub impl TNode for SVGStyleElement

pub impl TEventTarget for SVGStyleElement

/// [SVGStyleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement) interface.
pub trait TSVGStyleElement: TSVGElement {
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  title(self : Self) -> String = _
  set_title(self : Self, title : String) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  sheet(self : Self) -> CSSStyleSheet = _
}

/// [SVGStyleElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/type)
impl TSVGStyleElement with type_(self : Self) -> String {
  svg_style_element_type_ffi(TJsValue::to_js(self))
}

/// [SVGStyleElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/type)
impl TSVGStyleElement with set_type_(self : Self, 
type_ : String) -> Unit {
  svg_style_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [SVGStyleElement.media](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/media)
impl TSVGStyleElement with media(self : Self) -> String {
  svg_style_element_media_ffi(TJsValue::to_js(self))
}

/// [SVGStyleElement.media](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/media)
impl TSVGStyleElement with set_media(self : Self, 
media : String) -> Unit {
  svg_style_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

/// [SVGStyleElement.title](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/title)
impl TSVGStyleElement with title(self : Self) -> String {
  svg_style_element_title_ffi(TJsValue::to_js(self))
}

/// [SVGStyleElement.title](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/title)
impl TSVGStyleElement with set_title(self : Self, 
title : String) -> Unit {
  svg_style_element_set_title_ffi(TJsValue::to_js(self), TJsValue::to_js(title))
}

/// [SVGStyleElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/disabled)
impl TSVGStyleElement with disabled(self : Self) -> Bool {
  svg_style_element_disabled_ffi(TJsValue::to_js(self))
}

/// [SVGStyleElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/disabled)
impl TSVGStyleElement with set_disabled(self : Self, 
disabled : Bool) -> Unit {
  svg_style_element_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}

/// [SVGStyleElement.sheet](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/sheet)
impl TSVGStyleElement with sheet(self : Self) -> CSSStyleSheet {
  svg_style_element_sheet_ffi(TJsValue::to_js(self))
}