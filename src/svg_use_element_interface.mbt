// Do not edit. This file is generated.
// MoonBit type: SVGUseElement
// Specifications: SVG.idl

/// [SVGUseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement)
#external
pub type SVGUseElement

pub impl TJsValue for SVGUseElement with to_js(self: SVGUseElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGUseElement with from_js_any(value : JsAny) -> SVGUseElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGUseElement] SVGUseElement::into(self : SVGUseElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGUseElement] SVGUseElement::unsafe_into(self : SVGUseElement) -> T = "%identity"

pub impl HasConstructor for SVGUseElement with constructor_name() { "SVGUseElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGUseElement + HasConstructor] SVGUseElement::try_into(self : SVGUseElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGUseElement for SVGUseElement

pub impl TSVGGraphicsElement for SVGUseElement

pub impl TSVGElement for SVGUseElement

pub impl TElement for SVGUseElement

pub impl TNode for SVGUseElement

pub impl TEventTarget for SVGUseElement

/// [SVGUseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement) interface.
pub trait TSVGUseElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  instance_root(self : Self) -> SVGElement = _
  animated_instance_root(self : Self) -> SVGElement = _
  href(self : Self) -> SVGAnimatedString = _
}

/// [SVGUseElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/x)
impl TSVGUseElement with x(self : Self) -> SVGAnimatedLength {
  svg_use_element_x_ffi(TJsValue::to_js(self))
}

/// [SVGUseElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/y)
impl TSVGUseElement with y(self : Self) -> SVGAnimatedLength {
  svg_use_element_y_ffi(TJsValue::to_js(self))
}

/// [SVGUseElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/width)
impl TSVGUseElement with width(self : Self) -> SVGAnimatedLength {
  svg_use_element_width_ffi(TJsValue::to_js(self))
}

/// [SVGUseElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/height)
impl TSVGUseElement with height(self : Self) -> SVGAnimatedLength {
  svg_use_element_height_ffi(TJsValue::to_js(self))
}

/// [SVGUseElement.instanceRoot](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/instanceRoot)
impl TSVGUseElement with instance_root(self : Self) -> SVGElement {
  svg_use_element_instance_root_ffi(TJsValue::to_js(self))
}

/// [SVGUseElement.animatedInstanceRoot](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/animatedInstanceRoot)
impl TSVGUseElement with animated_instance_root(self : Self) -> SVGElement {
  svg_use_element_animated_instance_root_ffi(TJsValue::to_js(self))
}

/// [SVGUseElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement/href)
impl TSVGUseElement with href(self : Self) -> SVGAnimatedString {
  svg_use_element_href_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_use_element_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn svg_use_element_x_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_use_element_x_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_use_element_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn svg_use_element_y_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_use_element_y_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_use_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn svg_use_element_width_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_use_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_use_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn svg_use_element_height_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_use_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_use_element_instance_root_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.instanceRoot"

///|
#cfg(target="js")
fn svg_use_element_instance_root_ffi(obj: JsValue) -> SVGElement {
  svg_use_element_instance_root_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_use_element_animated_instance_root_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.animatedInstanceRoot"

///|
#cfg(target="js")
fn svg_use_element_animated_instance_root_ffi(obj: JsValue) -> SVGElement {
  svg_use_element_animated_instance_root_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_use_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn svg_use_element_href_ffi(obj: JsValue) -> SVGAnimatedString {
  svg_use_element_href_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_use_element_x_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGUseElement" "get_x"

#cfg(target="wasm-gc")
fn svg_use_element_y_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGUseElement" "get_y"

#cfg(target="wasm-gc")
fn svg_use_element_width_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGUseElement" "get_width"

#cfg(target="wasm-gc")
fn svg_use_element_height_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGUseElement" "get_height"

#cfg(target="wasm-gc")
fn svg_use_element_instance_root_ffi(obj: JsValue) -> SVGElement = "webapi_SVGUseElement" "get_instanceRoot"

#cfg(target="wasm-gc")
fn svg_use_element_animated_instance_root_ffi(obj: JsValue) -> SVGElement = "webapi_SVGUseElement" "get_animatedInstanceRoot"

#cfg(target="wasm-gc")
fn svg_use_element_href_ffi(obj: JsValue) -> SVGAnimatedString = "webapi_SVGUseElement" "get_href"