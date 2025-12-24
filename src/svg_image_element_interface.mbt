///|
#external
pub type SVGImageElement

///|
pub impl TJsValue for SVGImageElement with to_js(self : SVGImageElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGImageElement] SVGImageElement::into(self : SVGImageElement) -> T = "%identity"

///|
pub impl TSVGImageElement for SVGImageElement

///|
pub impl TSVGGraphicsElement for SVGImageElement

///|
pub impl TSVGElement for SVGImageElement

///|
pub impl TElement for SVGImageElement

///|
pub impl TNode for SVGImageElement

///|
pub impl TEventTarget for SVGImageElement

///|
pub trait TSVGImageElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
  cross_origin(self : Self) -> String = _
  set_cross_origin(self : Self, cross_origin : String) -> Unit = _
  href(self : Self) -> SVGAnimatedString = _
}

///|
extern "js" fn svg_image_element_x_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.x"

///|
impl TSVGImageElement with x(self : Self) -> SVGAnimatedLength {
  svg_image_element_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_image_element_y_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.y"

///|
impl TSVGImageElement with y(self : Self) -> SVGAnimatedLength {
  svg_image_element_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_image_element_width_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.width"

///|
impl TSVGImageElement with width(self : Self) -> SVGAnimatedLength {
  svg_image_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_image_element_height_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.height"

///|
impl TSVGImageElement with height(self : Self) -> SVGAnimatedLength {
  svg_image_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_image_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio = "(obj) => obj.preserveAspectRatio"

///|
impl TSVGImageElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_image_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_image_element_cross_origin_ffi(obj : JsValue) -> String = "(obj) => obj.crossOrigin"

///|
impl TSVGImageElement with cross_origin(self : Self) -> String {
  svg_image_element_cross_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_image_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

///|
impl TSVGImageElement with set_cross_origin(self : Self, cross_origin : String) -> Unit {
  svg_image_element_set_cross_origin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cross_origin),
  )
}

///|
extern "js" fn svg_image_element_href_ffi(obj : JsValue) -> SVGAnimatedString = "(obj) => obj.href"

///|
impl TSVGImageElement with href(self : Self) -> SVGAnimatedString {
  svg_image_element_href_ffi(TJsValue::to_js(self))
}
