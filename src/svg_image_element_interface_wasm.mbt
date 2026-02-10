fn svg_image_element_x_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGImageElement" "get_x"

fn svg_image_element_y_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGImageElement" "get_y"

fn svg_image_element_width_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGImageElement" "get_width"

fn svg_image_element_height_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGImageElement" "get_height"

fn svg_image_element_preserve_aspect_ratio_ffi(obj: JsValue) -> SVGAnimatedPreserveAspectRatio = "webapi_SVGImageElement" "get_preserveAspectRatio"

fn svg_image_element_cross_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGImageElement" "get_crossOrigin"

///|
fn svg_image_element_cross_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_image_element_cross_origin_ffi_wasm(obj))
}

fn svg_image_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "webapi_SVGImageElement" "set_crossOrigin"

fn svg_image_element_href_ffi(obj: JsValue) -> SVGAnimatedString = "webapi_SVGImageElement" "get_href"