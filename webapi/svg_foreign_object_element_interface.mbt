// Do not edit. This file is generated.
// MoonBit type: SVGForeignObjectElement
// Specifications: SVG.idl

///|
/// [SVGForeignObjectElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement)
#external
pub type SVGForeignObjectElement

///|
pub impl TJsValue for SVGForeignObjectElement with to_js(
  self : SVGForeignObjectElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGForeignObjectElement with from_js_any(value : JsAny) -> SVGForeignObjectElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGForeignObjectElement] SVGForeignObjectElement::into(
  self : SVGForeignObjectElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGForeignObjectElement] SVGForeignObjectElement::unsafe_into(
  self : SVGForeignObjectElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGForeignObjectElement with constructor_name() {
  "SVGForeignObjectElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGForeignObjectElement + HasConstructor] SVGForeignObjectElement::try_into(
  self : SVGForeignObjectElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGForeignObjectElement for SVGForeignObjectElement

///|
pub impl TSVGGraphicsElement for SVGForeignObjectElement

///|
pub impl TSVGElement for SVGForeignObjectElement

///|
pub impl TElement for SVGForeignObjectElement

///|
pub impl TNode for SVGForeignObjectElement

///|
pub impl TEventTarget for SVGForeignObjectElement

///|
/// [SVGForeignObjectElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement) interface.
pub trait TSVGForeignObjectElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
}

///|
/// [SVGForeignObjectElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement/x)
impl TSVGForeignObjectElement with x(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_x_ffi(TJsValue::to_js(self))
}

///|
/// [SVGForeignObjectElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement/y)
impl TSVGForeignObjectElement with y(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_y_ffi(TJsValue::to_js(self))
}

///|
/// [SVGForeignObjectElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement/width)
impl TSVGForeignObjectElement with width(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [SVGForeignObjectElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement/height)
impl TSVGForeignObjectElement with height(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_height_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_foreign_object_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn svg_foreign_object_element_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_foreign_object_element_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_foreign_object_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn svg_foreign_object_element_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_foreign_object_element_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_foreign_object_element_width_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn svg_foreign_object_element_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_foreign_object_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_foreign_object_element_height_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn svg_foreign_object_element_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_foreign_object_element_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_foreign_object_element_x_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGForeignObjectElement" "get_x"

///|
#cfg(target="wasm-gc")
fn svg_foreign_object_element_y_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGForeignObjectElement" "get_y"

///|
#cfg(target="wasm-gc")
fn svg_foreign_object_element_width_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGForeignObjectElement" "get_width"

///|
#cfg(target="wasm-gc")
fn svg_foreign_object_element_height_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGForeignObjectElement" "get_height"
