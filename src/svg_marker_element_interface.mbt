///|
#external
pub type SVGMarkerElement

///|
pub impl TJsValue for SVGMarkerElement with to_js(self : SVGMarkerElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGMarkerElement] SVGMarkerElement::into(
  self : SVGMarkerElement,
) -> T = "%identity"

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
extern "js" fn svg_marker_element_ref_x_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.refX"

///|
impl TSVGMarkerElement with ref_x(self : Self) -> SVGAnimatedLength {
  svg_marker_element_ref_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_ref_y_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.refY"

///|
impl TSVGMarkerElement with ref_y(self : Self) -> SVGAnimatedLength {
  svg_marker_element_ref_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_marker_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration = "(obj) => obj.markerUnits"

///|
impl TSVGMarkerElement with marker_units(self : Self) -> SVGAnimatedEnumeration {
  svg_marker_element_marker_units_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_marker_width_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.markerWidth"

///|
impl TSVGMarkerElement with marker_width(self : Self) -> SVGAnimatedLength {
  svg_marker_element_marker_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_marker_height_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.markerHeight"

///|
impl TSVGMarkerElement with marker_height(self : Self) -> SVGAnimatedLength {
  svg_marker_element_marker_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_orient_type_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration = "(obj) => obj.orientType"

///|
impl TSVGMarkerElement with orient_type(self : Self) -> SVGAnimatedEnumeration {
  svg_marker_element_orient_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_orient_angle_ffi(
  obj : JsValue,
) -> SVGAnimatedAngle = "(obj) => obj.orientAngle"

///|
impl TSVGMarkerElement with orient_angle(self : Self) -> SVGAnimatedAngle {
  svg_marker_element_orient_angle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_orient_ffi(obj : JsValue) -> String = "(obj) => obj.orient"

///|
impl TSVGMarkerElement with orient(self : Self) -> String {
  svg_marker_element_orient_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_set_orient_ffi(
  obj : JsValue,
  orient : JsValue,
) -> Unit = "(obj, orient) => { obj.orient = orient; }"

///|
impl TSVGMarkerElement with set_orient(self : Self, orient : String) -> Unit {
  svg_marker_element_set_orient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(orient),
  )
}

///|
extern "js" fn svg_marker_element_set_orient_to_auto_ffi(obj : JsValue) -> Unit = "(obj) => obj.setOrientToAuto(obj)"

///|
impl TSVGMarkerElement with set_orient_to_auto(self : Self) -> Unit {
  svg_marker_element_set_orient_to_auto_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_set_orient_to_angle_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "(obj, angle) => obj.setOrientToAngle(obj, angle)"

///|
impl TSVGMarkerElement with set_orient_to_angle(self : Self, angle : &TSVGAngle) -> Unit {
  svg_marker_element_set_orient_to_angle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(angle),
  )
}

///|
extern "js" fn svg_marker_element_view_box_ffi(
  obj : JsValue,
) -> SVGAnimatedRect = "(obj) => obj.viewBox"

///|
impl TSVGMarkerElement with view_box(self : Self) -> SVGAnimatedRect {
  svg_marker_element_view_box_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_marker_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio = "(obj) => obj.preserveAspectRatio"

///|
impl TSVGMarkerElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_marker_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}
