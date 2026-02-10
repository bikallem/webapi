extern "js" fn path2d_new_ffi(path: JsValue) -> Path2D = "(path) => new Path2D(path)"

extern "js" fn path2d_add_path_ffi(obj: JsValue, path: JsValue, transform: JsValue) -> Unit = "(obj, path, transform) => obj.addPath(path, transform)"

extern "js" fn path2d_close_path_ffi(obj: JsValue) -> Unit = "(obj) => obj.closePath()"

extern "js" fn path2d_move_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.moveTo(x, y)"

extern "js" fn path2d_line_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.lineTo(x, y)"

extern "js" fn path2d_quadratic_curve_to_ffi(obj: JsValue, cpx: JsValue, cpy: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, cpx, cpy, x, y) => obj.quadraticCurveTo(cpx, cpy, x, y)"

extern "js" fn path2d_bezier_curve_to_ffi(obj: JsValue, cp1x: JsValue, cp1y: JsValue, cp2x: JsValue, cp2y: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, cp1x, cp1y, cp2x, cp2y, x, y) => obj.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)"

extern "js" fn path2d_arc_to_ffi(obj: JsValue, x1: JsValue, y1: JsValue, x2: JsValue, y2: JsValue, radius: JsValue) -> Unit = "(obj, x1, y1, x2, y2, radius) => obj.arcTo(x1, y1, x2, y2, radius)"

extern "js" fn path2d_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.rect(x, y, w, h)"

extern "js" fn path2d_round_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue, radii: JsValue) -> Unit = "(obj, x, y, w, h, radii) => obj.roundRect(x, y, w, h, radii)"

extern "js" fn path2d_arc_ffi(obj: JsValue, x: JsValue, y: JsValue, radius: JsValue, start_angle: JsValue, end_angle: JsValue, counterclockwise: JsValue) -> Unit = "(obj, x, y, radius, start_angle, end_angle, counterclockwise) => obj.arc(x, y, radius, start_angle, end_angle, counterclockwise)"

extern "js" fn path2d_ellipse_ffi(obj: JsValue, x: JsValue, y: JsValue, radius_x: JsValue, radius_y: JsValue, rotation: JsValue, start_angle: JsValue, end_angle: JsValue, counterclockwise: JsValue) -> Unit = "(obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => obj.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)"