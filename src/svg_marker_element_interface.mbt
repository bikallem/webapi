// Do not edit. This file is generated.
// MoonBit type: SVGMarkerElement
// Specifications: SVG.idl

///|
/// [SVGMarkerElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement)
#external
pub type SVGMarkerElement

///|
pub impl TJsValue for SVGMarkerElement with to_js(self : SVGMarkerElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGMarkerElement with from_js_any(value : JsAny) -> SVGMarkerElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGMarkerElement] SVGMarkerElement::into(
  self : SVGMarkerElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGMarkerElement] SVGMarkerElement::unsafe_into(
  self : SVGMarkerElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGMarkerElement with constructor_name() {
  "SVGMarkerElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGMarkerElement + HasConstructor] SVGMarkerElement::try_into(
  self : SVGMarkerElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGMarkerElement for SVGMarkerElement

///|
pub impl TSVGElement for SVGMarkerElement

///|
pub impl TElement for SVGMarkerElement

///|
pub impl TNode for SVGMarkerElement

///|
pub impl TEventTarget for SVGMarkerElement

///|
pub const SVG_MARKER_ELEMENT_SVG_MARKERUNITS_UNKNOWN : UInt = 0

///|
pub const SVG_MARKER_ELEMENT_SVG_MARKERUNITS_USERSPACEONUSE : UInt = 1

///|
pub const SVG_MARKER_ELEMENT_SVG_MARKERUNITS_STROKEWIDTH : UInt = 2

///|
pub const SVG_MARKER_ELEMENT_SVG_MARKER_ORIENT_UNKNOWN : UInt = 0

///|
pub const SVG_MARKER_ELEMENT_SVG_MARKER_ORIENT_AUTO : UInt = 1

///|
pub const SVG_MARKER_ELEMENT_SVG_MARKER_ORIENT_ANGLE : UInt = 2

///|
pub const SVG_MARKER_ELEMENT_SVG_MARKER_ORIENT_AUTO_START_REVERSE : UInt = 3

///|
/// [SVGMarkerElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement) interface.
pub trait TSVGMarkerElement: TSVGElement {
  ref_x(self : Self) -> SVGAnimatedLength = _
  ref_y(self : Self) -> SVGAnimatedLength = _
  marker_units(self : Self) -> SVGAnimatedEnumeration = _
  marker_width(self : Self) -> SVGAnimatedLength = _
  marker_height(self : Self) -> SVGAnimatedLength = _
  orient_type(self : Self) -> SVGAnimatedEnumeration = _
  orient_angle(self : Self) -> SVGAnimatedAngle = _
  orient(self : Self) -> String = _
  set_orient(self : Self, orient : String) -> Unit = _
  set_orient_to_auto(self : Self) -> Unit = _
  set_orient_to_angle(self : Self, angle : &TSVGAngle) -> Unit = _
  view_box(self : Self) -> SVGAnimatedRect = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
}

///|
/// [SVGMarkerElement.refX](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/refX)
impl TSVGMarkerElement with ref_x(self : Self) -> SVGAnimatedLength {
  svg_marker_element_ref_x_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.refY](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/refY)
impl TSVGMarkerElement with ref_y(self : Self) -> SVGAnimatedLength {
  svg_marker_element_ref_y_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.markerUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/markerUnits)
impl TSVGMarkerElement with marker_units(self : Self) -> SVGAnimatedEnumeration {
  svg_marker_element_marker_units_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.markerWidth](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/markerWidth)
impl TSVGMarkerElement with marker_width(self : Self) -> SVGAnimatedLength {
  svg_marker_element_marker_width_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.markerHeight](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/markerHeight)
impl TSVGMarkerElement with marker_height(self : Self) -> SVGAnimatedLength {
  svg_marker_element_marker_height_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.orientType](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/orientType)
impl TSVGMarkerElement with orient_type(self : Self) -> SVGAnimatedEnumeration {
  svg_marker_element_orient_type_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.orientAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/orientAngle)
impl TSVGMarkerElement with orient_angle(self : Self) -> SVGAnimatedAngle {
  svg_marker_element_orient_angle_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.orient](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/orient)
impl TSVGMarkerElement with orient(self : Self) -> String {
  svg_marker_element_orient_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.orient](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/orient)
impl TSVGMarkerElement with set_orient(self : Self, orient : String) -> Unit {
  svg_marker_element_set_orient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(orient),
  )
}

///|
/// [SVGMarkerElement.setOrientToAuto](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/setOrientToAuto)
impl TSVGMarkerElement with set_orient_to_auto(self : Self) -> Unit {
  svg_marker_element_set_orient_to_auto_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.setOrientToAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/setOrientToAngle)
impl TSVGMarkerElement with set_orient_to_angle(self : Self, angle : &TSVGAngle) -> Unit {
  svg_marker_element_set_orient_to_angle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(angle),
  )
}

///|
/// [SVGMarkerElement.viewBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/viewBox)
impl TSVGMarkerElement with view_box(self : Self) -> SVGAnimatedRect {
  svg_marker_element_view_box_ffi(TJsValue::to_js(self))
}

///|
/// [SVGMarkerElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement/preserveAspectRatio)
impl TSVGMarkerElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_marker_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_ref_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.refX"

///|
#cfg(target="js")
fn svg_marker_element_ref_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_marker_element_ref_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_ref_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.refY"

///|
#cfg(target="js")
fn svg_marker_element_ref_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_marker_element_ref_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_marker_units_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.markerUnits"

///|
#cfg(target="js")
fn svg_marker_element_marker_units_ffi(obj : JsValue) -> SVGAnimatedEnumeration {
  svg_marker_element_marker_units_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_marker_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.markerWidth"

///|
#cfg(target="js")
fn svg_marker_element_marker_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_marker_element_marker_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_marker_height_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.markerHeight"

///|
#cfg(target="js")
fn svg_marker_element_marker_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_marker_element_marker_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_orient_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.orientType"

///|
#cfg(target="js")
fn svg_marker_element_orient_type_ffi(obj : JsValue) -> SVGAnimatedEnumeration {
  svg_marker_element_orient_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_orient_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.orientAngle"

///|
#cfg(target="js")
fn svg_marker_element_orient_angle_ffi(obj : JsValue) -> SVGAnimatedAngle {
  svg_marker_element_orient_angle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_orient_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.orient"

///|
#cfg(target="js")
fn svg_marker_element_orient_ffi(obj : JsValue) -> String {
  svg_marker_element_orient_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_set_orient_ffi(
  obj : JsValue,
  orient : JsValue,
) -> Unit = "(obj, orient) => { obj.orient = orient; }"

///|
#cfg(target="js")
extern "js" fn svg_marker_element_set_orient_to_auto_ffi(obj : JsValue) -> Unit = "(obj) => obj.setOrientToAuto()"

///|
#cfg(target="js")
extern "js" fn svg_marker_element_set_orient_to_angle_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "(obj, angle) => obj.setOrientToAngle(angle)"

///|
#cfg(target="js")
extern "js" fn svg_marker_element_view_box_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
#cfg(target="js")
fn svg_marker_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect {
  svg_marker_element_view_box_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_marker_element_preserve_aspect_ratio_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
#cfg(target="js")
fn svg_marker_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio {
  svg_marker_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_marker_element_ref_x_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGMarkerElement" "get_refX"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_ref_y_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGMarkerElement" "get_refY"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_marker_units_ffi(obj : JsValue) -> SVGAnimatedEnumeration = "webapi_SVGMarkerElement" "get_markerUnits"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_marker_width_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGMarkerElement" "get_markerWidth"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_marker_height_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGMarkerElement" "get_markerHeight"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_orient_type_ffi(obj : JsValue) -> SVGAnimatedEnumeration = "webapi_SVGMarkerElement" "get_orientType"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_orient_angle_ffi(obj : JsValue) -> SVGAnimatedAngle = "webapi_SVGMarkerElement" "get_orientAngle"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_orient_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGMarkerElement" "get_orient"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_orient_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_marker_element_orient_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svg_marker_element_set_orient_ffi(obj : JsValue, orient : JsValue) -> Unit = "webapi_SVGMarkerElement" "set_orient"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_set_orient_to_auto_ffi(obj : JsValue) -> Unit = "webapi_SVGMarkerElement" "setOrientToAuto"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_set_orient_to_angle_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "webapi_SVGMarkerElement" "setOrientToAngle"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect = "webapi_SVGMarkerElement" "get_viewBox"

///|
#cfg(target="wasm-gc")
fn svg_marker_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio = "webapi_SVGMarkerElement" "get_preserveAspectRatio"
