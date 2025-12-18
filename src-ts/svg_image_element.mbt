// Auto-generated MoonBit bindings for SVGImageElement

// Do not edit manually

///|
#external
pub type SVGImageElement

///|
pub trait TSVGImageElement: TJsValue {
  x(self : Self) -> JsValue = _
  y(self : Self) -> JsValue = _
  width(self : Self) -> JsValue = _
  height(self : Self) -> JsValue = _
  preserve_aspect_ratio(self : Self) -> JsValue = _
  cross_origin(self : Self) -> String? = _
  set_cross_origin(self : Self, value : String) -> Unit = _
  href(self : Self) -> JsValue = _
}

///|
pub impl TSVGImageElement for SVGImageElement

///|
pub impl TJsValue for SVGImageElement with to_js(self : SVGImageElement) -> JsValue = "%identity"

///|
fn svg_image_element_x_ffi(obj : JsValue) -> JsValue = "webapi_SVGImageElement" "x"

///|
impl TSVGImageElement with x(self : Self) -> JsValue {
  svg_image_element_x_ffi(self.to_js())
}

///|
fn svg_image_element_y_ffi(obj : JsValue) -> JsValue = "webapi_SVGImageElement" "y"

///|
impl TSVGImageElement with y(self : Self) -> JsValue {
  svg_image_element_y_ffi(self.to_js())
}

///|
fn svg_image_element_width_ffi(obj : JsValue) -> JsValue = "webapi_SVGImageElement" "width"

///|
impl TSVGImageElement with width(self : Self) -> JsValue {
  svg_image_element_width_ffi(self.to_js())
}

///|
fn svg_image_element_height_ffi(obj : JsValue) -> JsValue = "webapi_SVGImageElement" "height"

///|
impl TSVGImageElement with height(self : Self) -> JsValue {
  svg_image_element_height_ffi(self.to_js())
}

///|
fn svg_image_element_preserve_aspect_ratio_ffi(obj : JsValue) -> JsValue = "webapi_SVGImageElement" "preserveAspectRatio"

///|
impl TSVGImageElement with preserve_aspect_ratio(self : Self) -> JsValue {
  svg_image_element_preserve_aspect_ratio_ffi(self.to_js())
}

///|
fn svg_image_element_cross_origin_ffi(obj : JsValue) -> JsValue = "webapi_SVGImageElement" "crossOrigin"

///|
impl TSVGImageElement with cross_origin(self : Self) -> String? {
  svg_image_element_cross_origin_ffi(self.to_js()).as_option()
}

///|
fn svg_image_element_set_cross_origin_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_SVGImageElement" "set_crossOrigin"

///|
impl TSVGImageElement with set_cross_origin(self : Self, value : String) -> Unit {
  svg_image_element_set_cross_origin_ffi(self.to_js(), value)
}

///|
fn svg_image_element_href_ffi(obj : JsValue) -> JsValue = "webapi_SVGImageElement" "href"

///|
impl TSVGImageElement with href(self : Self) -> JsValue {
  svg_image_element_href_ffi(self.to_js())
}
