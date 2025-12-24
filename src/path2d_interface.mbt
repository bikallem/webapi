///|
#external
pub type Path2D

///|
pub impl TJsValue for Path2D with to_js(self : Path2D) -> JsValue = "%identity"

///|
pub fn[T : TPath2D] Path2D::into(self : Path2D) -> T = "%identity"

///|
pub impl TPath2D for Path2D

///|
pub(open) trait TPath2DNewPath {
  to_js(self : Self) -> JsValue
}

///|
pub impl TPath2DNewPath for Path2D with to_js(self : Path2D) -> JsValue = "%identity"

///|
pub impl TPath2DNewPath for String with to_js(self : String) -> JsValue = "%identity"

///|
extern "js" fn path2d_new_ffi(path : JsValue) -> Path2D = "(path) => new Path2D(path)"

///|
pub fn Path2D::new(path? : &TPath2DNewPath) -> Path2D {
  path2d_new_ffi(
    match path {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub(open) trait TPath2DRoundRectRadii {
  to_js(self : Self) -> JsValue
}

///|
pub impl TPath2DRoundRectRadii for Double with to_js(self : Double) -> JsValue = "%identity"

///|
pub impl TPath2DRoundRectRadii for DOMPointInit with to_js(self : DOMPointInit) -> JsValue = "%identity"

///|
pub(open) trait TPath2DRoundRectRadii2 {
  to_js(self : Self) -> JsValue
}

///|
pub impl TPath2DRoundRectRadii2 for Double with to_js(self : Double) -> JsValue = "%identity"

///|
pub impl TPath2DRoundRectRadii2 for DOMPointInit with to_js(self : DOMPointInit) -> JsValue = "%identity"

///|
pub impl TPath2DRoundRectRadii for Array[Path2DRoundRectRadii2] with to_js(
  self : Array[Path2DRoundRectRadii2],
) -> JsValue = "%identity"

///|
pub trait TPath2D: TJsValue {
  add_path(self : Self, path : &TPath2D, transform? : DOMMatrix2DInit) -> Unit = _
  close_path(self : Self) -> Unit = _
  move_to(self : Self, x : Double, y : Double) -> Unit = _
  line_to(self : Self, x : Double, y : Double) -> Unit = _
  quadratic_curve_to(
    self : Self,
    cpx : Double,
    cpy : Double,
    x : Double,
    y : Double,
  ) -> Unit = _
  bezier_curve_to(
    self : Self,
    cp1x : Double,
    cp1y : Double,
    cp2x : Double,
    cp2y : Double,
    x : Double,
    y : Double,
  ) -> Unit = _
  arc_to(
    self : Self,
    x1 : Double,
    y1 : Double,
    x2 : Double,
    y2 : Double,
    radius : Double,
  ) -> Unit = _
  rect(self : Self, x : Double, y : Double, w : Double, h : Double) -> Unit = _
  round_rect(
    self : Self,
    x : Double,
    y : Double,
    w : Double,
    h : Double,
    radii? : &TPath2DRoundRectRadii,
  ) -> Unit = _
  arc(
    self : Self,
    x : Double,
    y : Double,
    radius : Double,
    start_angle : Double,
    end_angle : Double,
    counterclockwise? : Bool,
  ) -> Unit = _
  ellipse(
    self : Self,
    x : Double,
    y : Double,
    radius_x : Double,
    radius_y : Double,
    rotation : Double,
    start_angle : Double,
    end_angle : Double,
    counterclockwise? : Bool,
  ) -> Unit = _
}

///|
extern "js" fn path2d_add_path_ffi(
  obj : JsValue,
  path : JsValue,
  transform : JsValue,
) -> Unit = "(obj, path, transform) => obj.addPath(obj, path, transform)"

///|
impl TPath2D with add_path(
  self : Self,
  path : &TPath2D,
  transform? : DOMMatrix2DInit = DOMMatrix2DInit::empty(),
) -> Unit {
  path2d_add_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(path),
    TJsValue::to_js(transform),
  )
}

///|
extern "js" fn path2d_close_path_ffi(obj : JsValue) -> Unit = "(obj) => obj.closePath(obj)"

///|
impl TPath2D with close_path(self : Self) -> Unit {
  path2d_close_path_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn path2d_move_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.moveTo(obj, x, y)"

///|
impl TPath2D with move_to(self : Self, x : Double, y : Double) -> Unit {
  path2d_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn path2d_line_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.lineTo(obj, x, y)"

///|
impl TPath2D with line_to(self : Self, x : Double, y : Double) -> Unit {
  path2d_line_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn path2d_quadratic_curve_to_ffi(
  obj : JsValue,
  cpx : JsValue,
  cpy : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, cpx, cpy, x, y) => obj.quadraticCurveTo(obj, cpx, cpy, x, y)"

///|
impl TPath2D with quadratic_curve_to(
  self : Self,
  cpx : Double,
  cpy : Double,
  x : Double,
  y : Double,
) -> Unit {
  path2d_quadratic_curve_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cpx),
    TJsValue::to_js(cpy),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn path2d_bezier_curve_to_ffi(
  obj : JsValue,
  cp1x : JsValue,
  cp1y : JsValue,
  cp2x : JsValue,
  cp2y : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, cp1x, cp1y, cp2x, cp2y, x, y) => obj.bezierCurveTo(obj, cp1x, cp1y, cp2x, cp2y, x, y)"

///|
impl TPath2D with bezier_curve_to(
  self : Self,
  cp1x : Double,
  cp1y : Double,
  cp2x : Double,
  cp2y : Double,
  x : Double,
  y : Double,
) -> Unit {
  path2d_bezier_curve_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cp1x),
    TJsValue::to_js(cp1y),
    TJsValue::to_js(cp2x),
    TJsValue::to_js(cp2y),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn path2d_arc_to_ffi(
  obj : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  x2 : JsValue,
  y2 : JsValue,
  radius : JsValue,
) -> Unit = "(obj, x1, y1, x2, y2, radius) => obj.arcTo(obj, x1, y1, x2, y2, radius)"

///|
impl TPath2D with arc_to(
  self : Self,
  x1 : Double,
  y1 : Double,
  x2 : Double,
  y2 : Double,
  radius : Double,
) -> Unit {
  path2d_arc_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
    TJsValue::to_js(x2),
    TJsValue::to_js(y2),
    TJsValue::to_js(radius),
  )
}

///|
extern "js" fn path2d_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "(obj, x, y, w, h) => obj.rect(obj, x, y, w, h)"

///|
impl TPath2D with rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  path2d_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
extern "js" fn path2d_round_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
  radii : JsValue,
) -> Unit = "(obj, x, y, w, h, radii) => obj.roundRect(obj, x, y, w, h, radii)"

///|
impl TPath2D with round_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
  radii? : &TPath2DRoundRectRadii = 0,
) -> Unit {
  path2d_round_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
    radii.to_js(),
  )
}

///|
extern "js" fn path2d_arc_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "(obj, x, y, radius, start_angle, end_angle, counterclockwise) => obj.arc(obj, x, y, radius, start_angle, end_angle, counterclockwise)"

///|
impl TPath2D with arc(
  self : Self,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise? : Bool = false,
) -> Unit {
  path2d_arc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(radius),
    TJsValue::to_js(start_angle),
    TJsValue::to_js(end_angle),
    TJsValue::to_js(counterclockwise),
  )
}

///|
extern "js" fn path2d_ellipse_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius_x : JsValue,
  radius_y : JsValue,
  rotation : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "(obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => obj.ellipse(obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)"

///|
impl TPath2D with ellipse(
  self : Self,
  x : Double,
  y : Double,
  radius_x : Double,
  radius_y : Double,
  rotation : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise? : Bool = false,
) -> Unit {
  path2d_ellipse_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(radius_x),
    TJsValue::to_js(radius_y),
    TJsValue::to_js(rotation),
    TJsValue::to_js(start_angle),
    TJsValue::to_js(end_angle),
    TJsValue::to_js(counterclockwise),
  )
}
