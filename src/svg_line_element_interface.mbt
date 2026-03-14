// Do not edit. This file is generated.
// MoonBit type: SVGLineElement
// Specifications: SVG.idl

/// [SVGLineElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement)
#external
pub type SVGLineElement

pub impl TJsValue for SVGLineElement with to_js(self: SVGLineElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGLineElement with from_js_any(value : JsAny) -> SVGLineElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGLineElement] SVGLineElement::into(self : SVGLineElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGLineElement] SVGLineElement::unsafe_into(self : SVGLineElement) -> T = "%identity"

pub impl HasConstructor for SVGLineElement with constructor_name() { "SVGLineElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGLineElement + HasConstructor] SVGLineElement::try_into(self : SVGLineElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGLineElement for SVGLineElement

pub impl TSVGGeometryElement for SVGLineElement

pub impl TSVGGraphicsElement for SVGLineElement

pub impl TSVGElement for SVGLineElement

pub impl TElement for SVGLineElement

pub impl TNode for SVGLineElement

pub impl TEventTarget for SVGLineElement

/// [SVGLineElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement) interface.
pub trait TSVGLineElement: TSVGGeometryElement {
  x1(self : Self) -> SVGAnimatedLength = _
  y1(self : Self) -> SVGAnimatedLength = _
  x2(self : Self) -> SVGAnimatedLength = _
  y2(self : Self) -> SVGAnimatedLength = _
}

/// [SVGLineElement.x1](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement/x1)
impl TSVGLineElement with x1(self : Self) -> SVGAnimatedLength {
  svg_line_element_x1_ffi(TJsValue::to_js(self))
}

/// [SVGLineElement.y1](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement/y1)
impl TSVGLineElement with y1(self : Self) -> SVGAnimatedLength {
  svg_line_element_y1_ffi(TJsValue::to_js(self))
}

/// [SVGLineElement.x2](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement/x2)
impl TSVGLineElement with x2(self : Self) -> SVGAnimatedLength {
  svg_line_element_x2_ffi(TJsValue::to_js(self))
}

/// [SVGLineElement.y2](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement/y2)
impl TSVGLineElement with y2(self : Self) -> SVGAnimatedLength {
  svg_line_element_y2_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_line_element_x1_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x1"

///|
#cfg(target="js")
fn svg_line_element_x1_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_line_element_x1_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_line_element_y1_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y1"

///|
#cfg(target="js")
fn svg_line_element_y1_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_line_element_y1_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_line_element_x2_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x2"

///|
#cfg(target="js")
fn svg_line_element_x2_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_line_element_x2_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_line_element_y2_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y2"

///|
#cfg(target="js")
fn svg_line_element_y2_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_line_element_y2_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_line_element_x1_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGLineElement" "get_x1"

#cfg(target="wasm-gc")
fn svg_line_element_y1_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGLineElement" "get_y1"

#cfg(target="wasm-gc")
fn svg_line_element_x2_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGLineElement" "get_x2"

#cfg(target="wasm-gc")
fn svg_line_element_y2_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGLineElement" "get_y2"