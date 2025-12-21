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
pub trait TSVGMarkerElement: TSVGElement {
  set_orient_to_auto(self : Self) -> Unit = _
  set_orient_to_angle(self : Self, angle : &TSVGAngle) -> Unit = _
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
