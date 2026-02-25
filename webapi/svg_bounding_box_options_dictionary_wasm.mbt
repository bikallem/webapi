///|
fn svg_bounding_box_options_ffi(
  fill : JsValue,
  stroke : JsValue,
  markers : JsValue,
  clipped : JsValue,
) -> SVGBoundingBoxOptions = "webapi_SVGBoundingBoxOptions" "new"

///|
fn svg_bounding_box_options_empty_ffi() -> SVGBoundingBoxOptions = "webapi_Dictionary" "empty"

///|
fn svg_bounding_box_options_get_fill_ffi(obj : JsValue) -> JsValue = "webapi_SVGBoundingBoxOptions" "get_fill"

///|
fn svg_bounding_box_options_get_stroke_ffi(obj : JsValue) -> JsValue = "webapi_SVGBoundingBoxOptions" "get_stroke"

///|
fn svg_bounding_box_options_get_markers_ffi(obj : JsValue) -> JsValue = "webapi_SVGBoundingBoxOptions" "get_markers"

///|
fn svg_bounding_box_options_get_clipped_ffi(obj : JsValue) -> JsValue = "webapi_SVGBoundingBoxOptions" "get_clipped"
