// Do not edit. This file is generated.
// MoonBit type: Path2D
// Specifications: html.idl

///|
/// [Path2D](https://developer.mozilla.org/en-US/docs/Web/API/Path2D)
#external
pub type Path2D

///|
pub impl TJsValue for Path2D with to_js(self : Path2D) -> JsValue = "%identity"

///|
pub impl FromJsAny for Path2D with from_js_any(value : JsAny) -> Path2D = "%identity"

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
pub impl TPath2DRoundRectRadii for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TPath2DRoundRectRadii for DOMPointInit with to_js(self : DOMPointInit) -> JsValue = "%identity"

///|
pub(open) trait TPath2DRoundRectRadii2 {
  to_js(self : Self) -> JsValue
}

///|
pub impl TPath2DRoundRectRadii2 for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TPath2DRoundRectRadii2 for DOMPointInit with to_js(self : DOMPointInit) -> JsValue = "%identity"

///|
pub impl TPath2DRoundRectRadii for Array[&TPath2DRoundRectRadii2] with to_js(
  self : Array[&TPath2DRoundRectRadii2],
) -> JsValue = "%identity"

///|
/// [Path2D](https://developer.mozilla.org/en-US/docs/Web/API/Path2D) interface.
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
/// [Path2D.addPath](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/addPath)
impl TPath2D with add_path(
  self : Self,
  path : &TPath2D,
  transform? : DOMMatrix2DInit,
) -> Unit {
  path2d_add_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(path),
    opt_to_js(transform),
  )
}

///|
/// [Path2D.closePath](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/closePath)
impl TPath2D with close_path(self : Self) -> Unit {
  path2d_close_path_ffi(TJsValue::to_js(self))
}

///|
/// [Path2D.moveTo](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/moveTo)
impl TPath2D with move_to(self : Self, x : Double, y : Double) -> Unit {
  path2d_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Path2D.lineTo](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/lineTo)
impl TPath2D with line_to(self : Self, x : Double, y : Double) -> Unit {
  path2d_line_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Path2D.quadraticCurveTo](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/quadraticCurveTo)
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
/// [Path2D.bezierCurveTo](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/bezierCurveTo)
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
/// [Path2D.arcTo](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/arcTo)
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
/// [Path2D.rect](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/rect)
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
/// [Path2D.roundRect](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/roundRect)
impl TPath2D with round_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
  radii? : &TPath2DRoundRectRadii,
) -> Unit {
  path2d_round_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
    match radii {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [Path2D.arc](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/arc)
impl TPath2D with arc(
  self : Self,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise? : Bool,
) -> Unit {
  path2d_arc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(radius),
    TJsValue::to_js(start_angle),
    TJsValue::to_js(end_angle),
    opt_to_js(counterclockwise),
  )
}

///|
/// [Path2D.ellipse](https://developer.mozilla.org/en-US/docs/Web/API/Path2D/ellipse)
impl TPath2D with ellipse(
  self : Self,
  x : Double,
  y : Double,
  radius_x : Double,
  radius_y : Double,
  rotation : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise? : Bool,
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
    opt_to_js(counterclockwise),
  )
}
