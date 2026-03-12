extern "js" fn svg_bounding_box_options_ffi(fill: JsValue, stroke: JsValue, markers: JsValue, clipped: JsValue) -> SVGBoundingBoxOptions = 
#|(fill, stroke, markers, clipped) => {
#|  const obj = {};
#|  if (fill !== undefined) obj.fill = fill;
#|  if (stroke !== undefined) obj.stroke = stroke;
#|  if (markers !== undefined) obj.markers = markers;
#|  if (clipped !== undefined) obj.clipped = clipped;
#|  return obj;
#|}

extern "js" fn svg_bounding_box_options_empty_ffi() -> SVGBoundingBoxOptions = "() => {}"

extern "js" fn svg_bounding_box_options_get_fill_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fill"

extern "js" fn svg_bounding_box_options_get_stroke_ffi(obj: JsValue) -> JsValue = "(obj) => obj.stroke"

extern "js" fn svg_bounding_box_options_get_markers_ffi(obj: JsValue) -> JsValue = "(obj) => obj.markers"

extern "js" fn svg_bounding_box_options_get_clipped_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clipped"