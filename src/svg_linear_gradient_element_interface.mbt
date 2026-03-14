// Do not edit. This file is generated.
// MoonBit type: SVGLinearGradientElement
// Specifications: SVG.idl

/// [SVGLinearGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement)
#external
pub type SVGLinearGradientElement

pub impl TJsValue for SVGLinearGradientElement with to_js(self: SVGLinearGradientElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGLinearGradientElement with from_js_any(value : JsAny) -> SVGLinearGradientElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGLinearGradientElement] SVGLinearGradientElement::into(self : SVGLinearGradientElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGLinearGradientElement] SVGLinearGradientElement::unsafe_into(self : SVGLinearGradientElement) -> T = "%identity"

pub impl HasConstructor for SVGLinearGradientElement with constructor_name() { "SVGLinearGradientElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGLinearGradientElement + HasConstructor] SVGLinearGradientElement::try_into(self : SVGLinearGradientElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGLinearGradientElement for SVGLinearGradientElement

pub impl TSVGGradientElement for SVGLinearGradientElement

pub impl TSVGElement for SVGLinearGradientElement

pub impl TElement for SVGLinearGradientElement

pub impl TNode for SVGLinearGradientElement

pub impl TEventTarget for SVGLinearGradientElement

/// [SVGLinearGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement) interface.
pub trait TSVGLinearGradientElement: TSVGGradientElement {
  x1(self : Self) -> SVGAnimatedLength = _
  y1(self : Self) -> SVGAnimatedLength = _
  x2(self : Self) -> SVGAnimatedLength = _
  y2(self : Self) -> SVGAnimatedLength = _
}

/// [SVGLinearGradientElement.x1](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement/x1)
impl TSVGLinearGradientElement with x1(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_x1_ffi(TJsValue::to_js(self))
}

/// [SVGLinearGradientElement.y1](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement/y1)
impl TSVGLinearGradientElement with y1(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_y1_ffi(TJsValue::to_js(self))
}

/// [SVGLinearGradientElement.x2](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement/x2)
impl TSVGLinearGradientElement with x2(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_x2_ffi(TJsValue::to_js(self))
}

/// [SVGLinearGradientElement.y2](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement/y2)
impl TSVGLinearGradientElement with y2(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_y2_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_linear_gradient_element_x1_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x1"

///|
#cfg(target="js")
fn svg_linear_gradient_element_x1_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_linear_gradient_element_x1_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_linear_gradient_element_y1_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y1"

///|
#cfg(target="js")
fn svg_linear_gradient_element_y1_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_linear_gradient_element_y1_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_linear_gradient_element_x2_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x2"

///|
#cfg(target="js")
fn svg_linear_gradient_element_x2_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_linear_gradient_element_x2_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_linear_gradient_element_y2_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y2"

///|
#cfg(target="js")
fn svg_linear_gradient_element_y2_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_linear_gradient_element_y2_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_linear_gradient_element_x1_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGLinearGradientElement" "get_x1"

#cfg(target="wasm-gc")
fn svg_linear_gradient_element_y1_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGLinearGradientElement" "get_y1"

#cfg(target="wasm-gc")
fn svg_linear_gradient_element_x2_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGLinearGradientElement" "get_x2"

#cfg(target="wasm-gc")
fn svg_linear_gradient_element_y2_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGLinearGradientElement" "get_y2"