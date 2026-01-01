// Do not edit. This file is generated.
// MoonBit type: SVGScriptElement
// Specifications: SVG.idl

///|
#external
pub type SVGScriptElement

///|
pub impl TJsValue for SVGScriptElement with to_js(self : SVGScriptElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGScriptElement] SVGScriptElement::into(
  self : SVGScriptElement,
) -> T = "%identity"

///|
pub impl TSVGScriptElement for SVGScriptElement

///|
pub impl TSVGElement for SVGScriptElement

///|
pub impl TElement for SVGScriptElement

///|
pub impl TNode for SVGScriptElement

///|
pub impl TEventTarget for SVGScriptElement

///|
pub trait TSVGScriptElement: TSVGElement {
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  cross_origin(self : Self) -> String = _
  set_cross_origin(self : Self, cross_origin : String) -> Unit = _
  href(self : Self) -> SVGAnimatedString = _
}

///|
extern "js" fn svg_script_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl TSVGScriptElement with type_(self : Self) -> String {
  svg_script_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_script_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type_; }"

///|
impl TSVGScriptElement with set_type_(self : Self, type_ : String) -> Unit {
  svg_script_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
extern "js" fn svg_script_element_cross_origin_ffi(obj : JsValue) -> String = "(obj) => obj.crossOrigin"

///|
impl TSVGScriptElement with cross_origin(self : Self) -> String {
  svg_script_element_cross_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_script_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = cross_origin; }"

///|
impl TSVGScriptElement with set_cross_origin(self : Self, cross_origin : String) -> Unit {
  svg_script_element_set_cross_origin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cross_origin),
  )
}

///|
extern "js" fn svg_script_element_href_ffi(obj : JsValue) -> SVGAnimatedString = "(obj) => obj.href"

///|
impl TSVGScriptElement with href(self : Self) -> SVGAnimatedString {
  svg_script_element_href_ffi(TJsValue::to_js(self))
}
