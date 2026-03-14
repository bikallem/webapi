// Do not edit. This file is generated.
// MoonBit type: SVGTextPositioningElement
// Specifications: SVG.idl

/// [SVGTextPositioningElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement)
#external
pub type SVGTextPositioningElement

pub impl TJsValue for SVGTextPositioningElement with to_js(self: SVGTextPositioningElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGTextPositioningElement with from_js_any(value : JsAny) -> SVGTextPositioningElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGTextPositioningElement] SVGTextPositioningElement::into(self : SVGTextPositioningElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGTextPositioningElement] SVGTextPositioningElement::unsafe_into(self : SVGTextPositioningElement) -> T = "%identity"

pub impl HasConstructor for SVGTextPositioningElement with constructor_name() { "SVGTextPositioningElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGTextPositioningElement + HasConstructor] SVGTextPositioningElement::try_into(self : SVGTextPositioningElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGTextPositioningElement for SVGTextPositioningElement

pub impl TSVGTextContentElement for SVGTextPositioningElement

pub impl TSVGGraphicsElement for SVGTextPositioningElement

pub impl TSVGElement for SVGTextPositioningElement

pub impl TElement for SVGTextPositioningElement

pub impl TNode for SVGTextPositioningElement

pub impl TEventTarget for SVGTextPositioningElement

/// [SVGTextPositioningElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement) interface.
pub trait TSVGTextPositioningElement: TSVGTextContentElement {
  x(self : Self) -> SVGAnimatedLengthList = _
  y(self : Self) -> SVGAnimatedLengthList = _
  dx(self : Self) -> SVGAnimatedLengthList = _
  dy(self : Self) -> SVGAnimatedLengthList = _
  rotate(self : Self) -> SVGAnimatedNumberList = _
}

/// [SVGTextPositioningElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/x)
impl TSVGTextPositioningElement with x(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_x_ffi(TJsValue::to_js(self))
}

/// [SVGTextPositioningElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/y)
impl TSVGTextPositioningElement with y(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_y_ffi(TJsValue::to_js(self))
}

/// [SVGTextPositioningElement.dx](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/dx)
impl TSVGTextPositioningElement with dx(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dx_ffi(TJsValue::to_js(self))
}

/// [SVGTextPositioningElement.dy](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/dy)
impl TSVGTextPositioningElement with dy(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dy_ffi(TJsValue::to_js(self))
}

/// [SVGTextPositioningElement.rotate](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/rotate)
impl TSVGTextPositioningElement with rotate(self : Self) -> SVGAnimatedNumberList {
  svg_text_positioning_element_rotate_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_text_positioning_element_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn svg_text_positioning_element_x_ffi(obj: JsValue) -> SVGAnimatedLengthList {
  svg_text_positioning_element_x_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_text_positioning_element_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn svg_text_positioning_element_y_ffi(obj: JsValue) -> SVGAnimatedLengthList {
  svg_text_positioning_element_y_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_text_positioning_element_dx_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.dx"

///|
#cfg(target="js")
fn svg_text_positioning_element_dx_ffi(obj: JsValue) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dx_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_text_positioning_element_dy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.dy"

///|
#cfg(target="js")
fn svg_text_positioning_element_dy_ffi(obj: JsValue) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dy_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_text_positioning_element_rotate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rotate"

///|
#cfg(target="js")
fn svg_text_positioning_element_rotate_ffi(obj: JsValue) -> SVGAnimatedNumberList {
  svg_text_positioning_element_rotate_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_text_positioning_element_x_ffi(obj: JsValue) -> SVGAnimatedLengthList = "webapi_SVGTextPositioningElement" "get_x"

#cfg(target="wasm-gc")
fn svg_text_positioning_element_y_ffi(obj: JsValue) -> SVGAnimatedLengthList = "webapi_SVGTextPositioningElement" "get_y"

#cfg(target="wasm-gc")
fn svg_text_positioning_element_dx_ffi(obj: JsValue) -> SVGAnimatedLengthList = "webapi_SVGTextPositioningElement" "get_dx"

#cfg(target="wasm-gc")
fn svg_text_positioning_element_dy_ffi(obj: JsValue) -> SVGAnimatedLengthList = "webapi_SVGTextPositioningElement" "get_dy"

#cfg(target="wasm-gc")
fn svg_text_positioning_element_rotate_ffi(obj: JsValue) -> SVGAnimatedNumberList = "webapi_SVGTextPositioningElement" "get_rotate"