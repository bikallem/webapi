fn svg_geometry_element_path_length_ffi(obj: JsValue) -> SVGAnimatedNumber = "webapi_SVGGeometryElement" "get_pathLength"

fn svg_geometry_element_is_point_in_fill_ffi(obj: JsValue, point: JsValue) -> Bool = "webapi_SVGGeometryElement" "isPointInFill"

fn svg_geometry_element_is_point_in_stroke_ffi(obj: JsValue, point: JsValue) -> Bool = "webapi_SVGGeometryElement" "isPointInStroke"

fn svg_geometry_element_get_total_length_ffi(obj: JsValue) -> Float = "webapi_SVGGeometryElement" "getTotalLength"

fn svg_geometry_element_get_point_at_length_ffi(obj: JsValue, distance: JsValue) -> DOMPoint = "webapi_SVGGeometryElement" "getPointAtLength"