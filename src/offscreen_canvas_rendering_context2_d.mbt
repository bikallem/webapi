// Auto-generated MoonBit bindings for OffscreenCanvasRenderingContext2D

// Do not edit manually

///|
#external
pub type OffscreenCanvasRenderingContext2D

///|
pub trait TOffscreenCanvasRenderingContext2D: TJsValue {
  canvas(self : Self) -> OffscreenCanvas = _
  global_alpha(self : Self) -> Double = _
  set_global_alpha(self : Self, value : Double) -> Unit = _
  global_composite_operation(self : Self) -> String = _
  set_global_composite_operation(self : Self, value : String) -> Unit = _
  image_smoothing_enabled(self : Self) -> Bool = _
  set_image_smoothing_enabled(self : Self, value : Bool) -> Unit = _
  image_smoothing_quality(self : Self) -> ImageSmoothingQuality = _
  set_image_smoothing_quality(self : Self, value : ImageSmoothingQuality) -> Unit = _
  stroke_style(self : Self) -> StrokeStyle = _
  set_stroke_style(self : Self, value : &TStrokeStyle) -> Unit = _
  fill_style(self : Self) -> FillStyle = _
  set_fill_style(self : Self, value : &TFillStyle) -> Unit = _
  shadow_offset_x(self : Self) -> Double = _
  set_shadow_offset_x(self : Self, value : Double) -> Unit = _
  shadow_offset_y(self : Self) -> Double = _
  set_shadow_offset_y(self : Self, value : Double) -> Unit = _
  shadow_blur(self : Self) -> Double = _
  set_shadow_blur(self : Self, value : Double) -> Unit = _
  shadow_color(self : Self) -> String = _
  set_shadow_color(self : Self, value : String) -> Unit = _
  filter(self : Self) -> String = _
  set_filter(self : Self, value : String) -> Unit = _
  line_width(self : Self) -> Double = _
  set_line_width(self : Self, value : Double) -> Unit = _
  line_cap(self : Self) -> CanvasLineCap = _
  set_line_cap(self : Self, value : CanvasLineCap) -> Unit = _
  line_join(self : Self) -> CanvasLineJoin = _
  set_line_join(self : Self, value : CanvasLineJoin) -> Unit = _
  miter_limit(self : Self) -> Double = _
  set_miter_limit(self : Self, value : Double) -> Unit = _
  line_dash_offset(self : Self) -> Double = _
  set_line_dash_offset(self : Self, value : Double) -> Unit = _
  lang(self : Self) -> String = _
  set_lang(self : Self, value : String) -> Unit = _
  font(self : Self) -> String = _
  set_font(self : Self, value : String) -> Unit = _
  text_align(self : Self) -> CanvasTextAlign = _
  set_text_align(self : Self, value : CanvasTextAlign) -> Unit = _
  text_baseline(self : Self) -> CanvasTextBaseline = _
  set_text_baseline(self : Self, value : CanvasTextBaseline) -> Unit = _
  direction(self : Self) -> CanvasDirection = _
  set_direction(self : Self, value : CanvasDirection) -> Unit = _
  letter_spacing(self : Self) -> String = _
  set_letter_spacing(self : Self, value : String) -> Unit = _
  font_kerning(self : Self) -> CanvasFontKerning = _
  set_font_kerning(self : Self, value : CanvasFontKerning) -> Unit = _
  font_stretch(self : Self) -> CanvasFontStretch = _
  set_font_stretch(self : Self, value : CanvasFontStretch) -> Unit = _
  font_variant_caps(self : Self) -> CanvasFontVariantCaps = _
  set_font_variant_caps(self : Self, value : CanvasFontVariantCaps) -> Unit = _
  text_rendering(self : Self) -> CanvasTextRendering = _
  set_text_rendering(self : Self, value : CanvasTextRendering) -> Unit = _
  word_spacing(self : Self) -> String = _
  set_word_spacing(self : Self, value : String) -> Unit = _
  get_context_attributes(self : Self) -> CanvasRenderingContext2DSettings = _
  save(self : Self) -> Unit = _
  restore(self : Self) -> Unit = _
  reset(self : Self) -> Unit = _
  is_context_lost(self : Self) -> Bool = _
  scale(self : Self, x : Double, y : Double) -> Unit = _
  rotate(self : Self, angle : Double) -> Unit = _
  translate(self : Self, x : Double, y : Double) -> Unit = _
  transform(
    self : Self,
    a : Double,
    b : Double,
    c : Double,
    d : Double,
    e : Double,
    f : Double,
  ) -> Unit = _
  get_transform(self : Self) -> JsValue = _
  set_transform(
    self : Self,
    a : Double,
    b : Double,
    c : Double,
    d : Double,
    e : Double,
    f : Double,
  ) -> Unit = _
  set_transform2(self : Self, transform? : DOMMatrix2DInit) -> Unit = _
  reset_transform(self : Self) -> Unit = _
  create_linear_gradient(
    self : Self,
    x0 : Double,
    y0 : Double,
    x1 : Double,
    y1 : Double,
  ) -> CanvasGradient = _
  create_radial_gradient(
    self : Self,
    x0 : Double,
    y0 : Double,
    r0 : Double,
    x1 : Double,
    y1 : Double,
    r1 : Double,
  ) -> CanvasGradient = _
  create_conic_gradient(
    self : Self,
    start_angle : Double,
    x : Double,
    y : Double,
  ) -> CanvasGradient = _
  create_pattern(self : Self, image : &TCanvasImageSource, repetition : String) -> CanvasPattern? = _
  clear_rect(self : Self, x : Double, y : Double, w : Double, h : Double) -> Unit = _
  fill_rect(self : Self, x : Double, y : Double, w : Double, h : Double) -> Unit = _
  stroke_rect(self : Self, x : Double, y : Double, w : Double, h : Double) -> Unit = _
  begin_path(self : Self) -> Unit = _
  fill(self : Self, fill_rule? : CanvasFillRule) -> Unit = _
  fill2(self : Self, path : JsValue, fill_rule? : CanvasFillRule) -> Unit = _
  stroke(self : Self) -> Unit = _
  stroke2(self : Self, path : JsValue) -> Unit = _
  clip(self : Self, fill_rule? : CanvasFillRule) -> Unit = _
  clip2(self : Self, path : JsValue, fill_rule? : CanvasFillRule) -> Unit = _
  is_point_in_path(
    self : Self,
    x : Double,
    y : Double,
    fill_rule? : CanvasFillRule,
  ) -> Bool = _
  is_point_in_path2(
    self : Self,
    path : JsValue,
    x : Double,
    y : Double,
    fill_rule? : CanvasFillRule,
  ) -> Bool = _
  is_point_in_stroke(self : Self, x : Double, y : Double) -> Bool = _
  is_point_in_stroke2(self : Self, path : JsValue, x : Double, y : Double) -> Bool = _
  fill_text(
    self : Self,
    text : String,
    x : Double,
    y : Double,
    max_width? : Double,
  ) -> Unit = _
  stroke_text(
    self : Self,
    text : String,
    x : Double,
    y : Double,
    max_width? : Double,
  ) -> Unit = _
  measure_text(self : Self, text : String) -> JsValue = _
  draw_image(self : Self, image : &TCanvasImageSource, dx : Double, dy : Double) -> Unit = _
  draw_image2(
    self : Self,
    image : &TCanvasImageSource,
    dx : Double,
    dy : Double,
    dw : Double,
    dh : Double,
  ) -> Unit = _
  draw_image3(
    self : Self,
    image : &TCanvasImageSource,
    sx : Double,
    sy : Double,
    sw : Double,
    sh : Double,
    dx : Double,
    dy : Double,
    dw : Double,
    dh : Double,
  ) -> Unit = _
  create_image_data(
    self : Self,
    sw : Int,
    sh : Int,
    settings? : ImageDataSettings,
  ) -> ImageData = _
  create_image_data2(self : Self, image_data : ImageData) -> ImageData = _
  get_image_data(
    self : Self,
    sx : Int,
    sy : Int,
    sw : Int,
    sh : Int,
    settings? : ImageDataSettings,
  ) -> ImageData = _
  put_image_data(self : Self, image_data : ImageData, dx : Int, dy : Int) -> Unit = _
  put_image_data2(
    self : Self,
    image_data : ImageData,
    dx : Int,
    dy : Int,
    dirty_x : Int,
    dirty_y : Int,
    dirty_width : Int,
    dirty_height : Int,
  ) -> Unit = _
  set_line_dash(self : Self, segments : Array[Double]) -> Unit = _
  get_line_dash(self : Self) -> Array[Double] = _
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
    radii? : &TRoundRectRadiiArg,
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
pub impl TOffscreenCanvasRenderingContext2D for OffscreenCanvasRenderingContext2D

///|
pub impl TJsValue for OffscreenCanvasRenderingContext2D with to_js(
  self : OffscreenCanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
fn offscreen_canvas_rendering_context2_d_get_context_attributes_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "getContextAttributes"

///|
impl TOffscreenCanvasRenderingContext2D with get_context_attributes(self : Self) -> CanvasRenderingContext2DSettings {
  offscreen_canvas_rendering_context2_d_get_context_attributes_ffi(
    TJsValue::to_js(self),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_save_ffi(obj : JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "save"

///|
impl TOffscreenCanvasRenderingContext2D with save(self : Self) -> Unit {
  offscreen_canvas_rendering_context2_d_save_ffi(TJsValue::to_js(self))
}

///|
fn offscreen_canvas_rendering_context2_d_restore_ffi(obj : JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "restore"

///|
impl TOffscreenCanvasRenderingContext2D with restore(self : Self) -> Unit {
  offscreen_canvas_rendering_context2_d_restore_ffi(TJsValue::to_js(self))
}

///|
fn offscreen_canvas_rendering_context2_d_reset_ffi(obj : JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "reset"

///|
impl TOffscreenCanvasRenderingContext2D with reset(self : Self) -> Unit {
  offscreen_canvas_rendering_context2_d_reset_ffi(TJsValue::to_js(self))
}

///|
fn offscreen_canvas_rendering_context2_d_is_context_lost_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "isContextLost"

///|
impl TOffscreenCanvasRenderingContext2D with is_context_lost(self : Self) -> Bool {
  offscreen_canvas_rendering_context2_d_is_context_lost_ffi(
    TJsValue::to_js(self),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_scale_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "scale"

///|
impl TOffscreenCanvasRenderingContext2D with scale(
  self : Self,
  x : Double,
  y : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_scale_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_rotate_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "rotate"

///|
impl TOffscreenCanvasRenderingContext2D with rotate(self : Self, angle : Double) -> Unit {
  offscreen_canvas_rendering_context2_d_rotate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(angle),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_translate_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "translate"

///|
impl TOffscreenCanvasRenderingContext2D with translate(
  self : Self,
  x : Double,
  y : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_translate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_transform_ffi(
  obj : JsValue,
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "transform"

///|
impl TOffscreenCanvasRenderingContext2D with transform(
  self : Self,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_transform_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(a),
    TJsValue::to_js(b),
    TJsValue::to_js(c),
    TJsValue::to_js(d),
    TJsValue::to_js(e),
    TJsValue::to_js(f),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_get_transform_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "getTransform"

///|
impl TOffscreenCanvasRenderingContext2D with get_transform(self : Self) -> JsValue {
  offscreen_canvas_rendering_context2_d_get_transform_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_set_transform_ffi(
  obj : JsValue,
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "setTransform"

///|
impl TOffscreenCanvasRenderingContext2D with set_transform(
  self : Self,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_transform_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(a),
    TJsValue::to_js(b),
    TJsValue::to_js(c),
    TJsValue::to_js(d),
    TJsValue::to_js(e),
    TJsValue::to_js(f),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_set_transform_ffi2(
  obj : JsValue,
  transform : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "setTransform"

///|
impl TOffscreenCanvasRenderingContext2D with set_transform2(
  self : Self,
  transform? : DOMMatrix2DInit = DOMMatrix2DInit::empty(),
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_transform_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(transform),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_reset_transform_ffi(
  obj : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "resetTransform"

///|
impl TOffscreenCanvasRenderingContext2D with reset_transform(self : Self) -> Unit {
  offscreen_canvas_rendering_context2_d_reset_transform_ffi(
    TJsValue::to_js(self),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_create_linear_gradient_ffi(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "createLinearGradient"

///|
impl TOffscreenCanvasRenderingContext2D with create_linear_gradient(
  self : Self,
  x0 : Double,
  y0 : Double,
  x1 : Double,
  y1 : Double,
) -> CanvasGradient {
  offscreen_canvas_rendering_context2_d_create_linear_gradient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x0),
    TJsValue::to_js(y0),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_create_radial_gradient_ffi(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  r0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  r1 : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "createRadialGradient"

///|
impl TOffscreenCanvasRenderingContext2D with create_radial_gradient(
  self : Self,
  x0 : Double,
  y0 : Double,
  r0 : Double,
  x1 : Double,
  y1 : Double,
  r1 : Double,
) -> CanvasGradient {
  offscreen_canvas_rendering_context2_d_create_radial_gradient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x0),
    TJsValue::to_js(y0),
    TJsValue::to_js(r0),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
    TJsValue::to_js(r1),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_create_conic_gradient_ffi(
  obj : JsValue,
  start_angle : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "createConicGradient"

///|
impl TOffscreenCanvasRenderingContext2D with create_conic_gradient(
  self : Self,
  start_angle : Double,
  x : Double,
  y : Double,
) -> CanvasGradient {
  offscreen_canvas_rendering_context2_d_create_conic_gradient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start_angle),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_create_pattern_ffi(
  obj : JsValue,
  image : JsValue,
  repetition : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "createPattern"

///|
impl TOffscreenCanvasRenderingContext2D with create_pattern(
  self : Self,
  image : &TCanvasImageSource,
  repetition : String,
) -> CanvasPattern? {
  offscreen_canvas_rendering_context2_d_create_pattern_ffi(
    TJsValue::to_js(self),
    TCanvasImageSource::to_js(image),
    TJsValue::to_js(repetition),
  ).as_option()
}

///|
fn offscreen_canvas_rendering_context2_d_clear_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "clearRect"

///|
impl TOffscreenCanvasRenderingContext2D with clear_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_clear_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_fill_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "fillRect"

///|
impl TOffscreenCanvasRenderingContext2D with fill_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_fill_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_stroke_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "strokeRect"

///|
impl TOffscreenCanvasRenderingContext2D with stroke_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_stroke_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_begin_path_ffi(obj : JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "beginPath"

///|
impl TOffscreenCanvasRenderingContext2D with begin_path(self : Self) -> Unit {
  offscreen_canvas_rendering_context2_d_begin_path_ffi(TJsValue::to_js(self))
}

///|
fn offscreen_canvas_rendering_context2_d_fill_ffi(
  obj : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "fill"

///|
impl TOffscreenCanvasRenderingContext2D with fill(
  self : Self,
  fill_rule? : CanvasFillRule,
) -> Unit {
  let fill_rule_js = opt_to_js(fill_rule)
  offscreen_canvas_rendering_context2_d_fill_ffi(
    TJsValue::to_js(self),
    fill_rule_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_fill_ffi2(
  obj : JsValue,
  path : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "fill"

///|
impl TOffscreenCanvasRenderingContext2D with fill2(
  self : Self,
  path : JsValue,
  fill_rule? : CanvasFillRule,
) -> Unit {
  let fill_rule_js = opt_to_js(fill_rule)
  offscreen_canvas_rendering_context2_d_fill_ffi2(
    TJsValue::to_js(self),
    path,
    fill_rule_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_stroke_ffi(obj : JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "stroke"

///|
impl TOffscreenCanvasRenderingContext2D with stroke(self : Self) -> Unit {
  offscreen_canvas_rendering_context2_d_stroke_ffi(TJsValue::to_js(self))
}

///|
fn offscreen_canvas_rendering_context2_d_stroke_ffi2(
  obj : JsValue,
  path : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "stroke"

///|
impl TOffscreenCanvasRenderingContext2D with stroke2(
  self : Self,
  path : JsValue,
) -> Unit {
  offscreen_canvas_rendering_context2_d_stroke_ffi2(TJsValue::to_js(self), path)
}

///|
fn offscreen_canvas_rendering_context2_d_clip_ffi(
  obj : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "clip"

///|
impl TOffscreenCanvasRenderingContext2D with clip(
  self : Self,
  fill_rule? : CanvasFillRule,
) -> Unit {
  let fill_rule_js = opt_to_js(fill_rule)
  offscreen_canvas_rendering_context2_d_clip_ffi(
    TJsValue::to_js(self),
    fill_rule_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_clip_ffi2(
  obj : JsValue,
  path : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "clip"

///|
impl TOffscreenCanvasRenderingContext2D with clip2(
  self : Self,
  path : JsValue,
  fill_rule? : CanvasFillRule,
) -> Unit {
  let fill_rule_js = opt_to_js(fill_rule)
  offscreen_canvas_rendering_context2_d_clip_ffi2(
    TJsValue::to_js(self),
    path,
    fill_rule_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_is_point_in_path_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "isPointInPath"

///|
impl TOffscreenCanvasRenderingContext2D with is_point_in_path(
  self : Self,
  x : Double,
  y : Double,
  fill_rule? : CanvasFillRule,
) -> Bool {
  let fill_rule_js = opt_to_js(fill_rule)
  offscreen_canvas_rendering_context2_d_is_point_in_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    fill_rule_js,
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_is_point_in_path_ffi2(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "isPointInPath"

///|
impl TOffscreenCanvasRenderingContext2D with is_point_in_path2(
  self : Self,
  path : JsValue,
  x : Double,
  y : Double,
  fill_rule? : CanvasFillRule,
) -> Bool {
  let fill_rule_js = opt_to_js(fill_rule)
  offscreen_canvas_rendering_context2_d_is_point_in_path_ffi2(
    TJsValue::to_js(self),
    path,
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    fill_rule_js,
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_is_point_in_stroke_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "isPointInStroke"

///|
impl TOffscreenCanvasRenderingContext2D with is_point_in_stroke(
  self : Self,
  x : Double,
  y : Double,
) -> Bool {
  offscreen_canvas_rendering_context2_d_is_point_in_stroke_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_is_point_in_stroke_ffi2(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "isPointInStroke"

///|
impl TOffscreenCanvasRenderingContext2D with is_point_in_stroke2(
  self : Self,
  path : JsValue,
  x : Double,
  y : Double,
) -> Bool {
  offscreen_canvas_rendering_context2_d_is_point_in_stroke_ffi2(
    TJsValue::to_js(self),
    path,
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_fill_text_ffi(
  obj : JsValue,
  text : JsValue,
  x : JsValue,
  y : JsValue,
  max_width : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "fillText"

///|
impl TOffscreenCanvasRenderingContext2D with fill_text(
  self : Self,
  text : String,
  x : Double,
  y : Double,
  max_width? : Double,
) -> Unit {
  let max_width_js = opt_to_js(max_width)
  offscreen_canvas_rendering_context2_d_fill_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    max_width_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_stroke_text_ffi(
  obj : JsValue,
  text : JsValue,
  x : JsValue,
  y : JsValue,
  max_width : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "strokeText"

///|
impl TOffscreenCanvasRenderingContext2D with stroke_text(
  self : Self,
  text : String,
  x : Double,
  y : Double,
  max_width? : Double,
) -> Unit {
  let max_width_js = opt_to_js(max_width)
  offscreen_canvas_rendering_context2_d_stroke_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    max_width_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_measure_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "measureText"

///|
impl TOffscreenCanvasRenderingContext2D with measure_text(
  self : Self,
  text : String,
) -> JsValue {
  offscreen_canvas_rendering_context2_d_measure_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_draw_image_ffi(
  obj : JsValue,
  image : JsValue,
  dx : JsValue,
  dy : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "drawImage"

///|
impl TOffscreenCanvasRenderingContext2D with draw_image(
  self : Self,
  image : &TCanvasImageSource,
  dx : Double,
  dy : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_draw_image_ffi(
    TJsValue::to_js(self),
    TCanvasImageSource::to_js(image),
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_draw_image_ffi2(
  obj : JsValue,
  image : JsValue,
  dx : JsValue,
  dy : JsValue,
  dw : JsValue,
  dh : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "drawImage"

///|
impl TOffscreenCanvasRenderingContext2D with draw_image2(
  self : Self,
  image : &TCanvasImageSource,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_draw_image_ffi2(
    TJsValue::to_js(self),
    TCanvasImageSource::to_js(image),
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
    TJsValue::to_js(dw),
    TJsValue::to_js(dh),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_draw_image_ffi3(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  dx : JsValue,
  dy : JsValue,
  dw : JsValue,
  dh : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "drawImage"

///|
impl TOffscreenCanvasRenderingContext2D with draw_image3(
  self : Self,
  image : &TCanvasImageSource,
  sx : Double,
  sy : Double,
  sw : Double,
  sh : Double,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_draw_image_ffi3(
    TJsValue::to_js(self),
    TCanvasImageSource::to_js(image),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
    TJsValue::to_js(dw),
    TJsValue::to_js(dh),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_create_image_data_ffi(
  obj : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "createImageData"

///|
impl TOffscreenCanvasRenderingContext2D with create_image_data(
  self : Self,
  sw : Int,
  sh : Int,
  settings? : ImageDataSettings = ImageDataSettings::empty(),
) -> ImageData {
  offscreen_canvas_rendering_context2_d_create_image_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(settings),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_create_image_data_ffi2(
  obj : JsValue,
  image_data : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "createImageData"

///|
impl TOffscreenCanvasRenderingContext2D with create_image_data2(
  self : Self,
  image_data : ImageData,
) -> ImageData {
  offscreen_canvas_rendering_context2_d_create_image_data_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(image_data),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_get_image_data_ffi(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "getImageData"

///|
impl TOffscreenCanvasRenderingContext2D with get_image_data(
  self : Self,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  settings? : ImageDataSettings = ImageDataSettings::empty(),
) -> ImageData {
  offscreen_canvas_rendering_context2_d_get_image_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(settings),
  ).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_put_image_data_ffi(
  obj : JsValue,
  image_data : JsValue,
  dx : JsValue,
  dy : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "putImageData"

///|
impl TOffscreenCanvasRenderingContext2D with put_image_data(
  self : Self,
  image_data : ImageData,
  dx : Int,
  dy : Int,
) -> Unit {
  offscreen_canvas_rendering_context2_d_put_image_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_data),
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_put_image_data_ffi2(
  obj : JsValue,
  image_data : JsValue,
  dx : JsValue,
  dy : JsValue,
  dirty_x : JsValue,
  dirty_y : JsValue,
  dirty_width : JsValue,
  dirty_height : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "putImageData"

///|
impl TOffscreenCanvasRenderingContext2D with put_image_data2(
  self : Self,
  image_data : ImageData,
  dx : Int,
  dy : Int,
  dirty_x : Int,
  dirty_y : Int,
  dirty_width : Int,
  dirty_height : Int,
) -> Unit {
  offscreen_canvas_rendering_context2_d_put_image_data_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(image_data),
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
    TJsValue::to_js(dirty_x),
    TJsValue::to_js(dirty_y),
    TJsValue::to_js(dirty_width),
    TJsValue::to_js(dirty_height),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_set_line_dash_ffi(
  obj : JsValue,
  segments : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "setLineDash"

///|
impl TOffscreenCanvasRenderingContext2D with set_line_dash(
  self : Self,
  segments : Array[Double],
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_line_dash_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(segments),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_get_line_dash_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "getLineDash"

///|
impl TOffscreenCanvasRenderingContext2D with get_line_dash(self : Self) -> Array[
  Double,
] {
  offscreen_canvas_rendering_context2_d_get_line_dash_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_close_path_ffi(obj : JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "closePath"

///|
impl TOffscreenCanvasRenderingContext2D with close_path(self : Self) -> Unit {
  offscreen_canvas_rendering_context2_d_close_path_ffi(TJsValue::to_js(self))
}

///|
fn offscreen_canvas_rendering_context2_d_move_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "moveTo"

///|
impl TOffscreenCanvasRenderingContext2D with move_to(
  self : Self,
  x : Double,
  y : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_line_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "lineTo"

///|
impl TOffscreenCanvasRenderingContext2D with line_to(
  self : Self,
  x : Double,
  y : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_line_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_quadratic_curve_to_ffi(
  obj : JsValue,
  cpx : JsValue,
  cpy : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "quadraticCurveTo"

///|
impl TOffscreenCanvasRenderingContext2D with quadratic_curve_to(
  self : Self,
  cpx : Double,
  cpy : Double,
  x : Double,
  y : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_quadratic_curve_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cpx),
    TJsValue::to_js(cpy),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_bezier_curve_to_ffi(
  obj : JsValue,
  cp1x : JsValue,
  cp1y : JsValue,
  cp2x : JsValue,
  cp2y : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "bezierCurveTo"

///|
impl TOffscreenCanvasRenderingContext2D with bezier_curve_to(
  self : Self,
  cp1x : Double,
  cp1y : Double,
  cp2x : Double,
  cp2y : Double,
  x : Double,
  y : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_bezier_curve_to_ffi(
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
fn offscreen_canvas_rendering_context2_d_arc_to_ffi(
  obj : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  x2 : JsValue,
  y2 : JsValue,
  radius : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "arcTo"

///|
impl TOffscreenCanvasRenderingContext2D with arc_to(
  self : Self,
  x1 : Double,
  y1 : Double,
  x2 : Double,
  y2 : Double,
  radius : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_arc_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
    TJsValue::to_js(x2),
    TJsValue::to_js(y2),
    TJsValue::to_js(radius),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "rect"

///|
impl TOffscreenCanvasRenderingContext2D with rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_round_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
  radii : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "roundRect"

///|
impl TOffscreenCanvasRenderingContext2D with round_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
  radii? : &TRoundRectRadiiArg,
) -> Unit {
  let radii_js = match radii {
    Some(v) => v.to_js()
    None => JsValue::undefined()
  }
  offscreen_canvas_rendering_context2_d_round_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
    radii_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_arc_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "arc"

///|
impl TOffscreenCanvasRenderingContext2D with arc(
  self : Self,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise? : Bool,
) -> Unit {
  let counterclockwise_js = opt_to_js(counterclockwise)
  offscreen_canvas_rendering_context2_d_arc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(radius),
    TJsValue::to_js(start_angle),
    TJsValue::to_js(end_angle),
    counterclockwise_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_ellipse_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius_x : JsValue,
  radius_y : JsValue,
  rotation : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "ellipse"

///|
impl TOffscreenCanvasRenderingContext2D with ellipse(
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
  let counterclockwise_js = opt_to_js(counterclockwise)
  offscreen_canvas_rendering_context2_d_ellipse_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(radius_x),
    TJsValue::to_js(radius_y),
    TJsValue::to_js(rotation),
    TJsValue::to_js(start_angle),
    TJsValue::to_js(end_angle),
    counterclockwise_js,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_canvas_ffi(obj : JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "canvas"

///|
impl TOffscreenCanvasRenderingContext2D with canvas(self : Self) -> OffscreenCanvas {
  offscreen_canvas_rendering_context2_d_canvas_ffi(self.to_js()).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_global_alpha_ffi(
  obj : JsValue,
) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "globalAlpha"

///|
impl TOffscreenCanvasRenderingContext2D with global_alpha(self : Self) -> Double {
  offscreen_canvas_rendering_context2_d_global_alpha_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_global_alpha_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_globalAlpha"

///|
impl TOffscreenCanvasRenderingContext2D with set_global_alpha(
  self : Self,
  value : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_global_alpha_ffi(
    self.to_js(),
    value,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_global_composite_operation_ffi(
  obj : JsValue,
) -> String = "webapi_OffscreenCanvasRenderingContext2D" "globalCompositeOperation"

///|
impl TOffscreenCanvasRenderingContext2D with global_composite_operation(
  self : Self,
) -> String {
  offscreen_canvas_rendering_context2_d_global_composite_operation_ffi(
    self.to_js(),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_set_global_composite_operation_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_globalCompositeOperation"

///|
impl TOffscreenCanvasRenderingContext2D with set_global_composite_operation(
  self : Self,
  value : String,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_global_composite_operation_ffi(
    self.to_js(),
    value,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_image_smoothing_enabled_ffi(
  obj : JsValue,
) -> Bool = "webapi_OffscreenCanvasRenderingContext2D" "imageSmoothingEnabled"

///|
impl TOffscreenCanvasRenderingContext2D with image_smoothing_enabled(
  self : Self,
) -> Bool {
  offscreen_canvas_rendering_context2_d_image_smoothing_enabled_ffi(
    self.to_js(),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_set_image_smoothing_enabled_ffi(
  obj : JsValue,
  value : Bool,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_imageSmoothingEnabled"

///|
impl TOffscreenCanvasRenderingContext2D with set_image_smoothing_enabled(
  self : Self,
  value : Bool,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_image_smoothing_enabled_ffi(
    self.to_js(),
    value,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_image_smoothing_quality_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "imageSmoothingQuality"

///|
impl TOffscreenCanvasRenderingContext2D with image_smoothing_quality(
  self : Self,
) -> ImageSmoothingQuality {
  ImageSmoothingQuality::from_js(
    offscreen_canvas_rendering_context2_d_image_smoothing_quality_ffi(
      self.to_js(),
    ),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_image_smoothing_quality_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_imageSmoothingQuality"

///|
impl TOffscreenCanvasRenderingContext2D with set_image_smoothing_quality(
  self : Self,
  value : ImageSmoothingQuality,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_image_smoothing_quality_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_stroke_style_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "strokeStyle"

///|
impl TOffscreenCanvasRenderingContext2D with stroke_style(self : Self) -> StrokeStyle {
  offscreen_canvas_rendering_context2_d_stroke_style_ffi(self.to_js()).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_set_stroke_style_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_strokeStyle"

///|
impl TOffscreenCanvasRenderingContext2D with set_stroke_style(
  self : Self,
  value : &TStrokeStyle,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_stroke_style_ffi(
    self.to_js(),
    TStrokeStyle::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_fill_style_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "fillStyle"

///|
impl TOffscreenCanvasRenderingContext2D with fill_style(self : Self) -> FillStyle {
  offscreen_canvas_rendering_context2_d_fill_style_ffi(self.to_js()).unsafe_cast()
}

///|
fn offscreen_canvas_rendering_context2_d_set_fill_style_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_fillStyle"

///|
impl TOffscreenCanvasRenderingContext2D with set_fill_style(
  self : Self,
  value : &TFillStyle,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_fill_style_ffi(
    self.to_js(),
    TFillStyle::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_shadow_offset_x_ffi(
  obj : JsValue,
) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "shadowOffsetX"

///|
impl TOffscreenCanvasRenderingContext2D with shadow_offset_x(self : Self) -> Double {
  offscreen_canvas_rendering_context2_d_shadow_offset_x_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_shadow_offset_x_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_shadowOffsetX"

///|
impl TOffscreenCanvasRenderingContext2D with set_shadow_offset_x(
  self : Self,
  value : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_shadow_offset_x_ffi(
    self.to_js(),
    value,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_shadow_offset_y_ffi(
  obj : JsValue,
) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "shadowOffsetY"

///|
impl TOffscreenCanvasRenderingContext2D with shadow_offset_y(self : Self) -> Double {
  offscreen_canvas_rendering_context2_d_shadow_offset_y_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_shadow_offset_y_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_shadowOffsetY"

///|
impl TOffscreenCanvasRenderingContext2D with set_shadow_offset_y(
  self : Self,
  value : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_shadow_offset_y_ffi(
    self.to_js(),
    value,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_shadow_blur_ffi(
  obj : JsValue,
) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "shadowBlur"

///|
impl TOffscreenCanvasRenderingContext2D with shadow_blur(self : Self) -> Double {
  offscreen_canvas_rendering_context2_d_shadow_blur_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_shadow_blur_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_shadowBlur"

///|
impl TOffscreenCanvasRenderingContext2D with set_shadow_blur(
  self : Self,
  value : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_shadow_blur_ffi(self.to_js(), value)
}

///|
fn offscreen_canvas_rendering_context2_d_shadow_color_ffi(
  obj : JsValue,
) -> String = "webapi_OffscreenCanvasRenderingContext2D" "shadowColor"

///|
impl TOffscreenCanvasRenderingContext2D with shadow_color(self : Self) -> String {
  offscreen_canvas_rendering_context2_d_shadow_color_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_shadow_color_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_shadowColor"

///|
impl TOffscreenCanvasRenderingContext2D with set_shadow_color(
  self : Self,
  value : String,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_shadow_color_ffi(
    self.to_js(),
    value,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_filter_ffi(obj : JsValue) -> String = "webapi_OffscreenCanvasRenderingContext2D" "filter"

///|
impl TOffscreenCanvasRenderingContext2D with filter(self : Self) -> String {
  offscreen_canvas_rendering_context2_d_filter_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_filter_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_filter"

///|
impl TOffscreenCanvasRenderingContext2D with set_filter(
  self : Self,
  value : String,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_filter_ffi(self.to_js(), value)
}

///|
fn offscreen_canvas_rendering_context2_d_line_width_ffi(
  obj : JsValue,
) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "lineWidth"

///|
impl TOffscreenCanvasRenderingContext2D with line_width(self : Self) -> Double {
  offscreen_canvas_rendering_context2_d_line_width_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_line_width_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lineWidth"

///|
impl TOffscreenCanvasRenderingContext2D with set_line_width(
  self : Self,
  value : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_line_width_ffi(self.to_js(), value)
}

///|
fn offscreen_canvas_rendering_context2_d_line_cap_ffi(obj : JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "lineCap"

///|
impl TOffscreenCanvasRenderingContext2D with line_cap(self : Self) -> CanvasLineCap {
  CanvasLineCap::from_js(
    offscreen_canvas_rendering_context2_d_line_cap_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_line_cap_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lineCap"

///|
impl TOffscreenCanvasRenderingContext2D with set_line_cap(
  self : Self,
  value : CanvasLineCap,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_line_cap_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_line_join_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "lineJoin"

///|
impl TOffscreenCanvasRenderingContext2D with line_join(self : Self) -> CanvasLineJoin {
  CanvasLineJoin::from_js(
    offscreen_canvas_rendering_context2_d_line_join_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_line_join_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lineJoin"

///|
impl TOffscreenCanvasRenderingContext2D with set_line_join(
  self : Self,
  value : CanvasLineJoin,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_line_join_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_miter_limit_ffi(
  obj : JsValue,
) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "miterLimit"

///|
impl TOffscreenCanvasRenderingContext2D with miter_limit(self : Self) -> Double {
  offscreen_canvas_rendering_context2_d_miter_limit_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_miter_limit_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_miterLimit"

///|
impl TOffscreenCanvasRenderingContext2D with set_miter_limit(
  self : Self,
  value : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_miter_limit_ffi(self.to_js(), value)
}

///|
fn offscreen_canvas_rendering_context2_d_line_dash_offset_ffi(
  obj : JsValue,
) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "lineDashOffset"

///|
impl TOffscreenCanvasRenderingContext2D with line_dash_offset(self : Self) -> Double {
  offscreen_canvas_rendering_context2_d_line_dash_offset_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_line_dash_offset_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lineDashOffset"

///|
impl TOffscreenCanvasRenderingContext2D with set_line_dash_offset(
  self : Self,
  value : Double,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_line_dash_offset_ffi(
    self.to_js(),
    value,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_lang_ffi(obj : JsValue) -> String = "webapi_OffscreenCanvasRenderingContext2D" "lang"

///|
impl TOffscreenCanvasRenderingContext2D with lang(self : Self) -> String {
  offscreen_canvas_rendering_context2_d_lang_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_lang_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lang"

///|
impl TOffscreenCanvasRenderingContext2D with set_lang(
  self : Self,
  value : String,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_lang_ffi(self.to_js(), value)
}

///|
fn offscreen_canvas_rendering_context2_d_font_ffi(obj : JsValue) -> String = "webapi_OffscreenCanvasRenderingContext2D" "font"

///|
impl TOffscreenCanvasRenderingContext2D with font(self : Self) -> String {
  offscreen_canvas_rendering_context2_d_font_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_font_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_font"

///|
impl TOffscreenCanvasRenderingContext2D with set_font(
  self : Self,
  value : String,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_font_ffi(self.to_js(), value)
}

///|
fn offscreen_canvas_rendering_context2_d_text_align_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "textAlign"

///|
impl TOffscreenCanvasRenderingContext2D with text_align(self : Self) -> CanvasTextAlign {
  CanvasTextAlign::from_js(
    offscreen_canvas_rendering_context2_d_text_align_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_text_align_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_textAlign"

///|
impl TOffscreenCanvasRenderingContext2D with set_text_align(
  self : Self,
  value : CanvasTextAlign,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_text_align_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_text_baseline_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "textBaseline"

///|
impl TOffscreenCanvasRenderingContext2D with text_baseline(self : Self) -> CanvasTextBaseline {
  CanvasTextBaseline::from_js(
    offscreen_canvas_rendering_context2_d_text_baseline_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_text_baseline_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_textBaseline"

///|
impl TOffscreenCanvasRenderingContext2D with set_text_baseline(
  self : Self,
  value : CanvasTextBaseline,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_text_baseline_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_direction_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "direction"

///|
impl TOffscreenCanvasRenderingContext2D with direction(self : Self) -> CanvasDirection {
  CanvasDirection::from_js(
    offscreen_canvas_rendering_context2_d_direction_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_direction_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_direction"

///|
impl TOffscreenCanvasRenderingContext2D with set_direction(
  self : Self,
  value : CanvasDirection,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_direction_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_letter_spacing_ffi(
  obj : JsValue,
) -> String = "webapi_OffscreenCanvasRenderingContext2D" "letterSpacing"

///|
impl TOffscreenCanvasRenderingContext2D with letter_spacing(self : Self) -> String {
  offscreen_canvas_rendering_context2_d_letter_spacing_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_letter_spacing_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_letterSpacing"

///|
impl TOffscreenCanvasRenderingContext2D with set_letter_spacing(
  self : Self,
  value : String,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_letter_spacing_ffi(
    self.to_js(),
    value,
  )
}

///|
fn offscreen_canvas_rendering_context2_d_font_kerning_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "fontKerning"

///|
impl TOffscreenCanvasRenderingContext2D with font_kerning(self : Self) -> CanvasFontKerning {
  CanvasFontKerning::from_js(
    offscreen_canvas_rendering_context2_d_font_kerning_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_font_kerning_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_fontKerning"

///|
impl TOffscreenCanvasRenderingContext2D with set_font_kerning(
  self : Self,
  value : CanvasFontKerning,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_font_kerning_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_font_stretch_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "fontStretch"

///|
impl TOffscreenCanvasRenderingContext2D with font_stretch(self : Self) -> CanvasFontStretch {
  CanvasFontStretch::from_js(
    offscreen_canvas_rendering_context2_d_font_stretch_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_font_stretch_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_fontStretch"

///|
impl TOffscreenCanvasRenderingContext2D with set_font_stretch(
  self : Self,
  value : CanvasFontStretch,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_font_stretch_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_font_variant_caps_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "fontVariantCaps"

///|
impl TOffscreenCanvasRenderingContext2D with font_variant_caps(self : Self) -> CanvasFontVariantCaps {
  CanvasFontVariantCaps::from_js(
    offscreen_canvas_rendering_context2_d_font_variant_caps_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_font_variant_caps_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_fontVariantCaps"

///|
impl TOffscreenCanvasRenderingContext2D with set_font_variant_caps(
  self : Self,
  value : CanvasFontVariantCaps,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_font_variant_caps_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_text_rendering_ffi(
  obj : JsValue,
) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "textRendering"

///|
impl TOffscreenCanvasRenderingContext2D with text_rendering(self : Self) -> CanvasTextRendering {
  CanvasTextRendering::from_js(
    offscreen_canvas_rendering_context2_d_text_rendering_ffi(self.to_js()),
  ).unwrap()
}

///|
fn offscreen_canvas_rendering_context2_d_set_text_rendering_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_textRendering"

///|
impl TOffscreenCanvasRenderingContext2D with set_text_rendering(
  self : Self,
  value : CanvasTextRendering,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_text_rendering_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn offscreen_canvas_rendering_context2_d_word_spacing_ffi(
  obj : JsValue,
) -> String = "webapi_OffscreenCanvasRenderingContext2D" "wordSpacing"

///|
impl TOffscreenCanvasRenderingContext2D with word_spacing(self : Self) -> String {
  offscreen_canvas_rendering_context2_d_word_spacing_ffi(self.to_js())
}

///|
fn offscreen_canvas_rendering_context2_d_set_word_spacing_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_wordSpacing"

///|
impl TOffscreenCanvasRenderingContext2D with set_word_spacing(
  self : Self,
  value : String,
) -> Unit {
  offscreen_canvas_rendering_context2_d_set_word_spacing_ffi(
    self.to_js(),
    value,
  )
}
