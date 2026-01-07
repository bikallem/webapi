// Do not edit. This file is generated.
// MoonBit type: SVGStyleElement
// Specifications: SVG.idl

///|
/// [SVGStyleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement)
#external
pub type SVGStyleElement

///|
pub impl TJsValue for SVGStyleElement with to_js(self : SVGStyleElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGStyleElement] SVGStyleElement::into(self : SVGStyleElement) -> T = "%identity"

///|
pub impl TSVGStyleElement for SVGStyleElement

///|
pub impl TSVGElement for SVGStyleElement

///|
pub impl TElement for SVGStyleElement

///|
pub impl TNode for SVGStyleElement

///|
pub impl TEventTarget for SVGStyleElement

///|
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

///|
extern "js" fn svg_style_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
/// [SVGStyleElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/type)
impl TSVGStyleElement with type_(self : Self) -> String {
  svg_style_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_style_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
/// [SVGStyleElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/type)
impl TSVGStyleElement with set_type_(self : Self, type_ : String) -> Unit {
  svg_style_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
extern "js" fn svg_style_element_media_ffi(obj : JsValue) -> String = "(obj) => obj.media"

///|
/// [SVGStyleElement.media](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/media)
impl TSVGStyleElement with media(self : Self) -> String {
  svg_style_element_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_style_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
/// [SVGStyleElement.media](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/media)
impl TSVGStyleElement with set_media(self : Self, media : String) -> Unit {
  svg_style_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

///|
extern "js" fn svg_style_element_title_ffi(obj : JsValue) -> String = "(obj) => obj.title"

///|
/// [SVGStyleElement.title](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/title)
impl TSVGStyleElement with title(self : Self) -> String {
  svg_style_element_title_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_style_element_set_title_ffi(
  obj : JsValue,
  title : JsValue,
) -> Unit = "(obj, title) => { obj.title = title; }"

///|
/// [SVGStyleElement.title](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/title)
impl TSVGStyleElement with set_title(self : Self, title : String) -> Unit {
  svg_style_element_set_title_ffi(TJsValue::to_js(self), TJsValue::to_js(title))
}

///|
extern "js" fn svg_style_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
/// [SVGStyleElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/disabled)
impl TSVGStyleElement with disabled(self : Self) -> Bool {
  svg_style_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_style_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
/// [SVGStyleElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/disabled)
impl TSVGStyleElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  svg_style_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn svg_style_element_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "(obj) => obj.sheet"

///|
/// [SVGStyleElement.sheet](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/sheet)
impl TSVGStyleElement with sheet(self : Self) -> CSSStyleSheet {
  svg_style_element_sheet_ffi(TJsValue::to_js(self))
}
