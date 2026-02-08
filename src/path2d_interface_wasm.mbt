///|
fn path2d_new_ffi(path : JsValue) -> Path2D = "webapi_Path2D" "new"

///|
fn path2d_add_path_ffi(
  obj : JsValue,
  path : JsValue,
  transform : JsValue,
) -> Unit = "webapi_Path2D" "addPath"

///|
fn path2d_close_path_ffi(obj : JsValue) -> Unit = "webapi_Path2D" "closePath"

///|
fn path2d_move_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Path2D" "moveTo"

///|
fn path2d_line_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Path2D" "lineTo"

///|
fn path2d_quadratic_curve_to_ffi(
  obj : JsValue,
  cpx : JsValue,
  cpy : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_Path2D" "quadraticCurveTo"

///|
fn path2d_bezier_curve_to_ffi(
  obj : JsValue,
  cp1x : JsValue,
  cp1y : JsValue,
  cp2x : JsValue,
  cp2y : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_Path2D" "bezierCurveTo"

///|
fn path2d_arc_to_ffi(
  obj : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  x2 : JsValue,
  y2 : JsValue,
  radius : JsValue,
) -> Unit = "webapi_Path2D" "arcTo"

///|
fn path2d_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_Path2D" "rect"

///|
fn path2d_round_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
  radii : JsValue,
) -> Unit = "webapi_Path2D" "roundRect"

///|
fn path2d_arc_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "webapi_Path2D" "arc"

///|
fn path2d_ellipse_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius_x : JsValue,
  radius_y : JsValue,
  rotation : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "webapi_Path2D" "ellipse"
