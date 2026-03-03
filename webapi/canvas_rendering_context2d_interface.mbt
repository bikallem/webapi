// Do not edit. This file is generated.
// MoonBit type: CanvasRenderingContext2D
// Specifications: html.idl

///|
/// [CanvasRenderingContext2D](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D)
#external
pub type CanvasRenderingContext2D

///|
pub impl TJsValue for CanvasRenderingContext2D with to_js(
  self : CanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CanvasRenderingContext2D with from_js_any(value : JsAny) -> CanvasRenderingContext2D = "%identity"

///|
pub fn[T : TCanvasRenderingContext2D] CanvasRenderingContext2D::into(
  self : CanvasRenderingContext2D,
) -> T = "%identity"

///|
pub impl TCanvasRenderingContext2D for CanvasRenderingContext2D

///|
pub(open) trait TCanvasRenderingContext2DStrokeStyle {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCanvasRenderingContext2DStrokeStyle for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub impl TCanvasRenderingContext2DStrokeStyle for CanvasGradient with to_js(
  self : CanvasGradient,
) -> JsValue = "%identity"

///|
pub impl TCanvasRenderingContext2DStrokeStyle for CanvasPattern with to_js(
  self : CanvasPattern,
) -> JsValue = "%identity"

///|
#external
pub type CanvasRenderingContext2DStrokeStyle

///|
pub impl TJsValue for CanvasRenderingContext2DStrokeStyle with to_js(
  self : CanvasRenderingContext2DStrokeStyle,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CanvasRenderingContext2DStrokeStyle with from_js_any(
  value : JsAny,
) -> CanvasRenderingContext2DStrokeStyle = "%identity"

///|
pub fn[T : TCanvasRenderingContext2DStrokeStyle + FromJsAny] CanvasRenderingContext2DStrokeStyle::into(
  self : CanvasRenderingContext2DStrokeStyle,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TCanvasRenderingContext2DStrokeStyle] CanvasRenderingContext2DStrokeStyle::from(
  value : T,
) -> CanvasRenderingContext2DStrokeStyle = "%identity"

///|
pub impl TCanvasRenderingContext2DStrokeStyle for CanvasRenderingContext2DStrokeStyle with to_js(
  self : CanvasRenderingContext2DStrokeStyle,
) -> JsValue = "%identity"

///|
pub(open) trait TCanvasRenderingContext2DFillStyle {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCanvasRenderingContext2DFillStyle for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TCanvasRenderingContext2DFillStyle for CanvasGradient with to_js(
  self : CanvasGradient,
) -> JsValue = "%identity"

///|
pub impl TCanvasRenderingContext2DFillStyle for CanvasPattern with to_js(
  self : CanvasPattern,
) -> JsValue = "%identity"

///|
#external
pub type CanvasRenderingContext2DFillStyle

///|
pub impl TJsValue for CanvasRenderingContext2DFillStyle with to_js(
  self : CanvasRenderingContext2DFillStyle,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CanvasRenderingContext2DFillStyle with from_js_any(
  value : JsAny,
) -> CanvasRenderingContext2DFillStyle = "%identity"

///|
pub fn[T : TCanvasRenderingContext2DFillStyle + FromJsAny] CanvasRenderingContext2DFillStyle::into(
  self : CanvasRenderingContext2DFillStyle,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TCanvasRenderingContext2DFillStyle] CanvasRenderingContext2DFillStyle::from(
  value : T,
) -> CanvasRenderingContext2DFillStyle = "%identity"

///|
pub impl TCanvasRenderingContext2DFillStyle for CanvasRenderingContext2DFillStyle with to_js(
  self : CanvasRenderingContext2DFillStyle,
) -> JsValue = "%identity"

///|
pub(open) trait TCanvasRenderingContext2DRoundRectRadii {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCanvasRenderingContext2DRoundRectRadii for Double with to_js(
  self : Double,
) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TCanvasRenderingContext2DRoundRectRadii for DOMPointInit with to_js(
  self : DOMPointInit,
) -> JsValue = "%identity"

///|
pub(open) trait TCanvasRenderingContext2DRoundRectRadii2 {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCanvasRenderingContext2DRoundRectRadii2 for Double with to_js(
  self : Double,
) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TCanvasRenderingContext2DRoundRectRadii2 for DOMPointInit with to_js(
  self : DOMPointInit,
) -> JsValue = "%identity"

///|
pub impl TCanvasRenderingContext2DRoundRectRadii for Array[
  &TCanvasRenderingContext2DRoundRectRadii2,
] with to_js(self : Array[&TCanvasRenderingContext2DRoundRectRadii2]) -> JsValue = "%identity"

///|
/// [CanvasRenderingContext2D](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D) interface.
pub trait TCanvasRenderingContext2D: TJsValue {
  canvas(self : Self) -> HTMLCanvasElement = _
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
  get_transform(self : Self) -> DOMMatrix = _
  set_transform(
    self : Self,
    a : Double,
    b : Double,
    c : Double,
    d : Double,
    e : Double,
    f : Double,
  ) -> Unit = _
  set_transform_matrix(self : Self, transform? : DOMMatrix2DInit) -> Unit = _
  reset_transform(self : Self) -> Unit = _
  global_alpha(self : Self) -> Double = _
  set_global_alpha(self : Self, global_alpha : Double) -> Unit = _
  global_composite_operation(self : Self) -> String = _
  set_global_composite_operation(
    self : Self,
    global_composite_operation : String,
  ) -> Unit = _
  image_smoothing_enabled(self : Self) -> Bool = _
  set_image_smoothing_enabled(self : Self, image_smoothing_enabled : Bool) -> Unit = _
  image_smoothing_quality(self : Self) -> ImageSmoothingQuality = _
  set_image_smoothing_quality(
    self : Self,
    image_smoothing_quality : ImageSmoothingQuality,
  ) -> Unit = _
  stroke_style(self : Self) -> CanvasRenderingContext2DStrokeStyle = _
  set_stroke_style(
    self : Self,
    stroke_style : &TCanvasRenderingContext2DStrokeStyle,
  ) -> Unit = _
  fill_style(self : Self) -> CanvasRenderingContext2DFillStyle = _
  set_fill_style(self : Self, fill_style : &TCanvasRenderingContext2DFillStyle) -> Unit = _
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
  create_pattern_opt(
    self : Self,
    image : &TCanvasImageSource,
    repetition : String,
  ) -> CanvasPattern? = _
  shadow_offset_x(self : Self) -> Double = _
  set_shadow_offset_x(self : Self, shadow_offset_x : Double) -> Unit = _
  shadow_offset_y(self : Self) -> Double = _
  set_shadow_offset_y(self : Self, shadow_offset_y : Double) -> Unit = _
  shadow_blur(self : Self) -> Double = _
  set_shadow_blur(self : Self, shadow_blur : Double) -> Unit = _
  shadow_color(self : Self) -> String = _
  set_shadow_color(self : Self, shadow_color : String) -> Unit = _
  filter(self : Self) -> String = _
  set_filter(self : Self, filter : String) -> Unit = _
  clear_rect(self : Self, x : Double, y : Double, w : Double, h : Double) -> Unit = _
  fill_rect(self : Self, x : Double, y : Double, w : Double, h : Double) -> Unit = _
  stroke_rect(self : Self, x : Double, y : Double, w : Double, h : Double) -> Unit = _
  begin_path(self : Self) -> Unit = _
  fill(self : Self, fill_rule? : CanvasFillRule) -> Unit = _
  fill_path(self : Self, path : &TPath2D, fill_rule? : CanvasFillRule) -> Unit = _
  stroke(self : Self) -> Unit = _
  stroke_path(self : Self, path : &TPath2D) -> Unit = _
  clip(self : Self, fill_rule? : CanvasFillRule) -> Unit = _
  clip_path(self : Self, path : &TPath2D, fill_rule? : CanvasFillRule) -> Unit = _
  is_point_in_path(
    self : Self,
    x : Double,
    y : Double,
    fill_rule? : CanvasFillRule,
  ) -> Bool = _
  is_point_in_path_with_path(
    self : Self,
    path : &TPath2D,
    x : Double,
    y : Double,
    fill_rule? : CanvasFillRule,
  ) -> Bool = _
  is_point_in_stroke(self : Self, x : Double, y : Double) -> Bool = _
  is_point_in_stroke_with_path(
    self : Self,
    path : &TPath2D,
    x : Double,
    y : Double,
  ) -> Bool = _
  draw_focus_if_needed(self : Self, element : &TElement) -> Unit = _
  draw_focus_if_needed_path(self : Self, path : &TPath2D, element : &TElement) -> Unit = _
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
  measure_text(self : Self, text : String) -> TextMetrics = _
  draw_image(self : Self, image : &TCanvasImageSource, dx : Double, dy : Double) -> Unit = _
  draw_image_scaled(
    self : Self,
    image : &TCanvasImageSource,
    dx : Double,
    dy : Double,
    dw : Double,
    dh : Double,
  ) -> Unit = _
  draw_image_cropped(
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
  create_image_data_from(self : Self, image_data : &TImageData) -> ImageData = _
  get_image_data(
    self : Self,
    sx : Int,
    sy : Int,
    sw : Int,
    sh : Int,
    settings? : ImageDataSettings,
  ) -> ImageData = _
  put_image_data(self : Self, image_data : &TImageData, dx : Int, dy : Int) -> Unit = _
  put_image_data_dirty_rect(
    self : Self,
    image_data : &TImageData,
    dx : Int,
    dy : Int,
    dirty_x : Int,
    dirty_y : Int,
    dirty_width : Int,
    dirty_height : Int,
  ) -> Unit = _
  line_width(self : Self) -> Double = _
  set_line_width(self : Self, line_width : Double) -> Unit = _
  line_cap(self : Self) -> CanvasLineCap = _
  set_line_cap(self : Self, line_cap : CanvasLineCap) -> Unit = _
  line_join(self : Self) -> CanvasLineJoin = _
  set_line_join(self : Self, line_join : CanvasLineJoin) -> Unit = _
  miter_limit(self : Self) -> Double = _
  set_miter_limit(self : Self, miter_limit : Double) -> Unit = _
  set_line_dash(self : Self, segments : Array[Double]) -> Unit = _
  get_line_dash(self : Self) -> Array[Double] = _
  line_dash_offset(self : Self) -> Double = _
  set_line_dash_offset(self : Self, line_dash_offset : Double) -> Unit = _
  lang(self : Self) -> String = _
  set_lang(self : Self, lang : String) -> Unit = _
  font(self : Self) -> String = _
  set_font(self : Self, font : String) -> Unit = _
  text_align(self : Self) -> CanvasTextAlign = _
  set_text_align(self : Self, text_align : CanvasTextAlign) -> Unit = _
  text_baseline(self : Self) -> CanvasTextBaseline = _
  set_text_baseline(self : Self, text_baseline : CanvasTextBaseline) -> Unit = _
  direction(self : Self) -> CanvasDirection = _
  set_direction(self : Self, direction : CanvasDirection) -> Unit = _
  letter_spacing(self : Self) -> String = _
  set_letter_spacing(self : Self, letter_spacing : String) -> Unit = _
  font_kerning(self : Self) -> CanvasFontKerning = _
  set_font_kerning(self : Self, font_kerning : CanvasFontKerning) -> Unit = _
  font_stretch(self : Self) -> CanvasFontStretch = _
  set_font_stretch(self : Self, font_stretch : CanvasFontStretch) -> Unit = _
  font_variant_caps(self : Self) -> CanvasFontVariantCaps = _
  set_font_variant_caps(self : Self, font_variant_caps : CanvasFontVariantCaps) -> Unit = _
  text_rendering(self : Self) -> CanvasTextRendering = _
  set_text_rendering(self : Self, text_rendering : CanvasTextRendering) -> Unit = _
  word_spacing(self : Self) -> String = _
  set_word_spacing(self : Self, word_spacing : String) -> Unit = _
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
    radii? : &TCanvasRenderingContext2DRoundRectRadii,
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
  create_pattern(self : Self, image : &TCanvasImageSource, repetition : String) -> CanvasPattern = _
}

///|
/// [CanvasRenderingContext2D.canvas](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/canvas)
impl TCanvasRenderingContext2D with canvas(self : Self) -> HTMLCanvasElement {
  canvas_rendering_context2d_canvas_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.getContextAttributes](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/getContextAttributes)
impl TCanvasRenderingContext2D with get_context_attributes(self : Self) -> CanvasRenderingContext2DSettings {
  canvas_rendering_context2d_get_context_attributes_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.save](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/save)
impl TCanvasRenderingContext2D with save(self : Self) -> Unit {
  canvas_rendering_context2d_save_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.restore](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/restore)
impl TCanvasRenderingContext2D with restore(self : Self) -> Unit {
  canvas_rendering_context2d_restore_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.reset](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/reset)
impl TCanvasRenderingContext2D with reset(self : Self) -> Unit {
  canvas_rendering_context2d_reset_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.isContextLost](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/isContextLost)
impl TCanvasRenderingContext2D with is_context_lost(self : Self) -> Bool {
  canvas_rendering_context2d_is_context_lost_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.scale](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/scale)
impl TCanvasRenderingContext2D with scale(self : Self, x : Double, y : Double) -> Unit {
  canvas_rendering_context2d_scale_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [CanvasRenderingContext2D.rotate](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/rotate)
impl TCanvasRenderingContext2D with rotate(self : Self, angle : Double) -> Unit {
  canvas_rendering_context2d_rotate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(angle),
  )
}

///|
/// [CanvasRenderingContext2D.translate](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/translate)
impl TCanvasRenderingContext2D with translate(
  self : Self,
  x : Double,
  y : Double,
) -> Unit {
  canvas_rendering_context2d_translate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [CanvasRenderingContext2D.transform](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/transform)
impl TCanvasRenderingContext2D with transform(
  self : Self,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit {
  canvas_rendering_context2d_transform_ffi(
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
/// [CanvasRenderingContext2D.getTransform](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/getTransform)
impl TCanvasRenderingContext2D with get_transform(self : Self) -> DOMMatrix {
  canvas_rendering_context2d_get_transform_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.setTransform](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/setTransform)
impl TCanvasRenderingContext2D with set_transform(
  self : Self,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit {
  canvas_rendering_context2d_set_transform_ffi(
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
/// [CanvasRenderingContext2D.setTransform](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/setTransform)
impl TCanvasRenderingContext2D with set_transform_matrix(
  self : Self,
  transform? : DOMMatrix2DInit,
) -> Unit {
  canvas_rendering_context2d_set_transform_matrix_ffi(
    TJsValue::to_js(self),
    opt_to_js(transform),
  )
}

///|
/// [CanvasRenderingContext2D.resetTransform](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/resetTransform)
impl TCanvasRenderingContext2D with reset_transform(self : Self) -> Unit {
  canvas_rendering_context2d_reset_transform_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.globalAlpha](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/globalAlpha)
impl TCanvasRenderingContext2D with global_alpha(self : Self) -> Double {
  canvas_rendering_context2d_global_alpha_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.globalAlpha](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/globalAlpha)
impl TCanvasRenderingContext2D with set_global_alpha(
  self : Self,
  global_alpha : Double,
) -> Unit {
  canvas_rendering_context2d_set_global_alpha_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(global_alpha),
  )
}

///|
/// [CanvasRenderingContext2D.globalCompositeOperation](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/globalCompositeOperation)
impl TCanvasRenderingContext2D with global_composite_operation(self : Self) -> String {
  canvas_rendering_context2d_global_composite_operation_ffi(
    TJsValue::to_js(self),
  )
}

///|
/// [CanvasRenderingContext2D.globalCompositeOperation](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/globalCompositeOperation)
impl TCanvasRenderingContext2D with set_global_composite_operation(
  self : Self,
  global_composite_operation : String,
) -> Unit {
  canvas_rendering_context2d_set_global_composite_operation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(global_composite_operation),
  )
}

///|
/// [CanvasRenderingContext2D.imageSmoothingEnabled](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/imageSmoothingEnabled)
impl TCanvasRenderingContext2D with image_smoothing_enabled(self : Self) -> Bool {
  canvas_rendering_context2d_image_smoothing_enabled_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.imageSmoothingEnabled](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/imageSmoothingEnabled)
impl TCanvasRenderingContext2D with set_image_smoothing_enabled(
  self : Self,
  image_smoothing_enabled : Bool,
) -> Unit {
  canvas_rendering_context2d_set_image_smoothing_enabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_smoothing_enabled),
  )
}

///|
/// [CanvasRenderingContext2D.imageSmoothingQuality](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/imageSmoothingQuality)
impl TCanvasRenderingContext2D with image_smoothing_quality(self : Self) -> ImageSmoothingQuality {
  canvas_rendering_context2d_image_smoothing_quality_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.imageSmoothingQuality](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/imageSmoothingQuality)
impl TCanvasRenderingContext2D with set_image_smoothing_quality(
  self : Self,
  image_smoothing_quality : ImageSmoothingQuality,
) -> Unit {
  canvas_rendering_context2d_set_image_smoothing_quality_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_smoothing_quality),
  )
}

///|
/// [CanvasRenderingContext2D.strokeStyle](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/strokeStyle)
impl TCanvasRenderingContext2D with stroke_style(self : Self) -> CanvasRenderingContext2DStrokeStyle {
  canvas_rendering_context2d_stroke_style_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.strokeStyle](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/strokeStyle)
impl TCanvasRenderingContext2D with set_stroke_style(
  self : Self,
  stroke_style : &TCanvasRenderingContext2DStrokeStyle,
) -> Unit {
  canvas_rendering_context2d_set_stroke_style_ffi(
    TJsValue::to_js(self),
    stroke_style.to_js(),
  )
}

///|
/// [CanvasRenderingContext2D.fillStyle](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fillStyle)
impl TCanvasRenderingContext2D with fill_style(self : Self) -> CanvasRenderingContext2DFillStyle {
  canvas_rendering_context2d_fill_style_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.fillStyle](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fillStyle)
impl TCanvasRenderingContext2D with set_fill_style(
  self : Self,
  fill_style : &TCanvasRenderingContext2DFillStyle,
) -> Unit {
  canvas_rendering_context2d_set_fill_style_ffi(
    TJsValue::to_js(self),
    fill_style.to_js(),
  )
}

///|
/// [CanvasRenderingContext2D.createLinearGradient](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/createLinearGradient)
impl TCanvasRenderingContext2D with create_linear_gradient(
  self : Self,
  x0 : Double,
  y0 : Double,
  x1 : Double,
  y1 : Double,
) -> CanvasGradient {
  canvas_rendering_context2d_create_linear_gradient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x0),
    TJsValue::to_js(y0),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
  )
}

///|
/// [CanvasRenderingContext2D.createRadialGradient](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/createRadialGradient)
impl TCanvasRenderingContext2D with create_radial_gradient(
  self : Self,
  x0 : Double,
  y0 : Double,
  r0 : Double,
  x1 : Double,
  y1 : Double,
  r1 : Double,
) -> CanvasGradient {
  canvas_rendering_context2d_create_radial_gradient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x0),
    TJsValue::to_js(y0),
    TJsValue::to_js(r0),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
    TJsValue::to_js(r1),
  )
}

///|
/// [CanvasRenderingContext2D.createConicGradient](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/createConicGradient)
impl TCanvasRenderingContext2D with create_conic_gradient(
  self : Self,
  start_angle : Double,
  x : Double,
  y : Double,
) -> CanvasGradient {
  canvas_rendering_context2d_create_conic_gradient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start_angle),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [CanvasRenderingContext2D.createPattern](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/createPattern)
impl TCanvasRenderingContext2D with create_pattern_opt(
  self : Self,
  image : &TCanvasImageSource,
  repetition : String,
) -> CanvasPattern? {
  canvas_rendering_context2d_create_pattern_ffi(
    TJsValue::to_js(self),
    image.to_js(),
    TJsValue::to_js(repetition),
  ).to_option()
}

///|
/// [CanvasRenderingContext2D.shadowOffsetX](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/shadowOffsetX)
impl TCanvasRenderingContext2D with shadow_offset_x(self : Self) -> Double {
  canvas_rendering_context2d_shadow_offset_x_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.shadowOffsetX](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/shadowOffsetX)
impl TCanvasRenderingContext2D with set_shadow_offset_x(
  self : Self,
  shadow_offset_x : Double,
) -> Unit {
  canvas_rendering_context2d_set_shadow_offset_x_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_offset_x),
  )
}

///|
/// [CanvasRenderingContext2D.shadowOffsetY](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/shadowOffsetY)
impl TCanvasRenderingContext2D with shadow_offset_y(self : Self) -> Double {
  canvas_rendering_context2d_shadow_offset_y_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.shadowOffsetY](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/shadowOffsetY)
impl TCanvasRenderingContext2D with set_shadow_offset_y(
  self : Self,
  shadow_offset_y : Double,
) -> Unit {
  canvas_rendering_context2d_set_shadow_offset_y_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_offset_y),
  )
}

///|
/// [CanvasRenderingContext2D.shadowBlur](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/shadowBlur)
impl TCanvasRenderingContext2D with shadow_blur(self : Self) -> Double {
  canvas_rendering_context2d_shadow_blur_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.shadowBlur](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/shadowBlur)
impl TCanvasRenderingContext2D with set_shadow_blur(
  self : Self,
  shadow_blur : Double,
) -> Unit {
  canvas_rendering_context2d_set_shadow_blur_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_blur),
  )
}

///|
/// [CanvasRenderingContext2D.shadowColor](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/shadowColor)
impl TCanvasRenderingContext2D with shadow_color(self : Self) -> String {
  canvas_rendering_context2d_shadow_color_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.shadowColor](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/shadowColor)
impl TCanvasRenderingContext2D with set_shadow_color(
  self : Self,
  shadow_color : String,
) -> Unit {
  canvas_rendering_context2d_set_shadow_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(shadow_color),
  )
}

///|
/// [CanvasRenderingContext2D.filter](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/filter)
impl TCanvasRenderingContext2D with filter(self : Self) -> String {
  canvas_rendering_context2d_filter_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.filter](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/filter)
impl TCanvasRenderingContext2D with set_filter(self : Self, filter : String) -> Unit {
  canvas_rendering_context2d_set_filter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(filter),
  )
}

///|
/// [CanvasRenderingContext2D.clearRect](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/clearRect)
impl TCanvasRenderingContext2D with clear_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  canvas_rendering_context2d_clear_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
/// [CanvasRenderingContext2D.fillRect](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fillRect)
impl TCanvasRenderingContext2D with fill_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  canvas_rendering_context2d_fill_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
/// [CanvasRenderingContext2D.strokeRect](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/strokeRect)
impl TCanvasRenderingContext2D with stroke_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  canvas_rendering_context2d_stroke_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
/// [CanvasRenderingContext2D.beginPath](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/beginPath)
impl TCanvasRenderingContext2D with begin_path(self : Self) -> Unit {
  canvas_rendering_context2d_begin_path_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.fill](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fill)
impl TCanvasRenderingContext2D with fill(
  self : Self,
  fill_rule? : CanvasFillRule,
) -> Unit {
  canvas_rendering_context2d_fill_ffi(
    TJsValue::to_js(self),
    opt_to_js(fill_rule),
  )
}

///|
/// [CanvasRenderingContext2D.fill](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fill)
impl TCanvasRenderingContext2D with fill_path(
  self : Self,
  path : &TPath2D,
  fill_rule? : CanvasFillRule,
) -> Unit {
  canvas_rendering_context2d_fill_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(path),
    opt_to_js(fill_rule),
  )
}

///|
/// [CanvasRenderingContext2D.stroke](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/stroke)
impl TCanvasRenderingContext2D with stroke(self : Self) -> Unit {
  canvas_rendering_context2d_stroke_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.stroke](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/stroke)
impl TCanvasRenderingContext2D with stroke_path(self : Self, path : &TPath2D) -> Unit {
  canvas_rendering_context2d_stroke_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(path),
  )
}

///|
/// [CanvasRenderingContext2D.clip](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/clip)
impl TCanvasRenderingContext2D with clip(
  self : Self,
  fill_rule? : CanvasFillRule,
) -> Unit {
  canvas_rendering_context2d_clip_ffi(
    TJsValue::to_js(self),
    opt_to_js(fill_rule),
  )
}

///|
/// [CanvasRenderingContext2D.clip](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/clip)
impl TCanvasRenderingContext2D with clip_path(
  self : Self,
  path : &TPath2D,
  fill_rule? : CanvasFillRule,
) -> Unit {
  canvas_rendering_context2d_clip_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(path),
    opt_to_js(fill_rule),
  )
}

///|
/// [CanvasRenderingContext2D.isPointInPath](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
impl TCanvasRenderingContext2D with is_point_in_path(
  self : Self,
  x : Double,
  y : Double,
  fill_rule? : CanvasFillRule,
) -> Bool {
  canvas_rendering_context2d_is_point_in_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    opt_to_js(fill_rule),
  )
}

///|
/// [CanvasRenderingContext2D.isPointInPath](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
impl TCanvasRenderingContext2D with is_point_in_path_with_path(
  self : Self,
  path : &TPath2D,
  x : Double,
  y : Double,
  fill_rule? : CanvasFillRule,
) -> Bool {
  canvas_rendering_context2d_is_point_in_path_with_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(path),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    opt_to_js(fill_rule),
  )
}

///|
/// [CanvasRenderingContext2D.isPointInStroke](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
impl TCanvasRenderingContext2D with is_point_in_stroke(
  self : Self,
  x : Double,
  y : Double,
) -> Bool {
  canvas_rendering_context2d_is_point_in_stroke_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [CanvasRenderingContext2D.isPointInStroke](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
impl TCanvasRenderingContext2D with is_point_in_stroke_with_path(
  self : Self,
  path : &TPath2D,
  x : Double,
  y : Double,
) -> Bool {
  canvas_rendering_context2d_is_point_in_stroke_with_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(path),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [CanvasRenderingContext2D.drawFocusIfNeeded](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/drawFocusIfNeeded)
impl TCanvasRenderingContext2D with draw_focus_if_needed(
  self : Self,
  element : &TElement,
) -> Unit {
  canvas_rendering_context2d_draw_focus_if_needed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element),
  )
}

///|
/// [CanvasRenderingContext2D.drawFocusIfNeeded](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/drawFocusIfNeeded)
impl TCanvasRenderingContext2D with draw_focus_if_needed_path(
  self : Self,
  path : &TPath2D,
  element : &TElement,
) -> Unit {
  canvas_rendering_context2d_draw_focus_if_needed_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(path),
    TJsValue::to_js(element),
  )
}

///|
/// [CanvasRenderingContext2D.fillText](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fillText)
impl TCanvasRenderingContext2D with fill_text(
  self : Self,
  text : String,
  x : Double,
  y : Double,
  max_width? : Double,
) -> Unit {
  canvas_rendering_context2d_fill_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    opt_to_js(max_width),
  )
}

///|
/// [CanvasRenderingContext2D.strokeText](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/strokeText)
impl TCanvasRenderingContext2D with stroke_text(
  self : Self,
  text : String,
  x : Double,
  y : Double,
  max_width? : Double,
) -> Unit {
  canvas_rendering_context2d_stroke_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    opt_to_js(max_width),
  )
}

///|
/// [CanvasRenderingContext2D.measureText](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/measureText)
impl TCanvasRenderingContext2D with measure_text(self : Self, text : String) -> TextMetrics {
  canvas_rendering_context2d_measure_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
  )
}

///|
/// [CanvasRenderingContext2D.drawImage](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/drawImage)
impl TCanvasRenderingContext2D with draw_image(
  self : Self,
  image : &TCanvasImageSource,
  dx : Double,
  dy : Double,
) -> Unit {
  canvas_rendering_context2d_draw_image_ffi(
    TJsValue::to_js(self),
    image.to_js(),
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
  )
}

///|
/// [CanvasRenderingContext2D.drawImage](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/drawImage)
impl TCanvasRenderingContext2D with draw_image_scaled(
  self : Self,
  image : &TCanvasImageSource,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit {
  canvas_rendering_context2d_draw_image_scaled_ffi(
    TJsValue::to_js(self),
    image.to_js(),
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
    TJsValue::to_js(dw),
    TJsValue::to_js(dh),
  )
}

///|
/// [CanvasRenderingContext2D.drawImage](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/drawImage)
impl TCanvasRenderingContext2D with draw_image_cropped(
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
  canvas_rendering_context2d_draw_image_cropped_ffi(
    TJsValue::to_js(self),
    image.to_js(),
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
/// [CanvasRenderingContext2D.createImageData](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/createImageData)
impl TCanvasRenderingContext2D with create_image_data(
  self : Self,
  sw : Int,
  sh : Int,
  settings? : ImageDataSettings,
) -> ImageData {
  canvas_rendering_context2d_create_image_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    opt_to_js(settings),
  )
}

///|
/// [CanvasRenderingContext2D.createImageData](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/createImageData)
impl TCanvasRenderingContext2D with create_image_data_from(
  self : Self,
  image_data : &TImageData,
) -> ImageData {
  canvas_rendering_context2d_create_image_data_from_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_data),
  )
}

///|
/// [CanvasRenderingContext2D.getImageData](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/getImageData)
impl TCanvasRenderingContext2D with get_image_data(
  self : Self,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  settings? : ImageDataSettings,
) -> ImageData {
  canvas_rendering_context2d_get_image_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    opt_to_js(settings),
  )
}

///|
/// [CanvasRenderingContext2D.putImageData](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/putImageData)
impl TCanvasRenderingContext2D with put_image_data(
  self : Self,
  image_data : &TImageData,
  dx : Int,
  dy : Int,
) -> Unit {
  canvas_rendering_context2d_put_image_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_data),
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
  )
}

///|
/// [CanvasRenderingContext2D.putImageData](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/putImageData)
impl TCanvasRenderingContext2D with put_image_data_dirty_rect(
  self : Self,
  image_data : &TImageData,
  dx : Int,
  dy : Int,
  dirty_x : Int,
  dirty_y : Int,
  dirty_width : Int,
  dirty_height : Int,
) -> Unit {
  canvas_rendering_context2d_put_image_data_dirty_rect_ffi(
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
/// [CanvasRenderingContext2D.lineWidth](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineWidth)
impl TCanvasRenderingContext2D with line_width(self : Self) -> Double {
  canvas_rendering_context2d_line_width_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.lineWidth](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineWidth)
impl TCanvasRenderingContext2D with set_line_width(
  self : Self,
  line_width : Double,
) -> Unit {
  canvas_rendering_context2d_set_line_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(line_width),
  )
}

///|
/// [CanvasRenderingContext2D.lineCap](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineCap)
impl TCanvasRenderingContext2D with line_cap(self : Self) -> CanvasLineCap {
  canvas_rendering_context2d_line_cap_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.lineCap](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineCap)
impl TCanvasRenderingContext2D with set_line_cap(
  self : Self,
  line_cap : CanvasLineCap,
) -> Unit {
  canvas_rendering_context2d_set_line_cap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(line_cap),
  )
}

///|
/// [CanvasRenderingContext2D.lineJoin](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineJoin)
impl TCanvasRenderingContext2D with line_join(self : Self) -> CanvasLineJoin {
  canvas_rendering_context2d_line_join_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.lineJoin](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineJoin)
impl TCanvasRenderingContext2D with set_line_join(
  self : Self,
  line_join : CanvasLineJoin,
) -> Unit {
  canvas_rendering_context2d_set_line_join_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(line_join),
  )
}

///|
/// [CanvasRenderingContext2D.miterLimit](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/miterLimit)
impl TCanvasRenderingContext2D with miter_limit(self : Self) -> Double {
  canvas_rendering_context2d_miter_limit_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.miterLimit](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/miterLimit)
impl TCanvasRenderingContext2D with set_miter_limit(
  self : Self,
  miter_limit : Double,
) -> Unit {
  canvas_rendering_context2d_set_miter_limit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(miter_limit),
  )
}

///|
/// [CanvasRenderingContext2D.setLineDash](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/setLineDash)
impl TCanvasRenderingContext2D with set_line_dash(
  self : Self,
  segments : Array[Double],
) -> Unit {
  canvas_rendering_context2d_set_line_dash_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(segments),
  )
}

///|
/// [CanvasRenderingContext2D.getLineDash](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/getLineDash)
impl TCanvasRenderingContext2D with get_line_dash(self : Self) -> Array[Double] {
  canvas_rendering_context2d_get_line_dash_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.lineDashOffset](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineDashOffset)
impl TCanvasRenderingContext2D with line_dash_offset(self : Self) -> Double {
  canvas_rendering_context2d_line_dash_offset_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.lineDashOffset](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineDashOffset)
impl TCanvasRenderingContext2D with set_line_dash_offset(
  self : Self,
  line_dash_offset : Double,
) -> Unit {
  canvas_rendering_context2d_set_line_dash_offset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(line_dash_offset),
  )
}

///|
/// [CanvasRenderingContext2D.lang](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lang)
impl TCanvasRenderingContext2D with lang(self : Self) -> String {
  canvas_rendering_context2d_lang_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.lang](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lang)
impl TCanvasRenderingContext2D with set_lang(self : Self, lang : String) -> Unit {
  canvas_rendering_context2d_set_lang_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(lang),
  )
}

///|
/// [CanvasRenderingContext2D.font](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/font)
impl TCanvasRenderingContext2D with font(self : Self) -> String {
  canvas_rendering_context2d_font_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.font](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/font)
impl TCanvasRenderingContext2D with set_font(self : Self, font : String) -> Unit {
  canvas_rendering_context2d_set_font_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(font),
  )
}

///|
/// [CanvasRenderingContext2D.textAlign](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/textAlign)
impl TCanvasRenderingContext2D with text_align(self : Self) -> CanvasTextAlign {
  canvas_rendering_context2d_text_align_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.textAlign](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/textAlign)
impl TCanvasRenderingContext2D with set_text_align(
  self : Self,
  text_align : CanvasTextAlign,
) -> Unit {
  canvas_rendering_context2d_set_text_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text_align),
  )
}

///|
/// [CanvasRenderingContext2D.textBaseline](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/textBaseline)
impl TCanvasRenderingContext2D with text_baseline(self : Self) -> CanvasTextBaseline {
  canvas_rendering_context2d_text_baseline_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.textBaseline](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/textBaseline)
impl TCanvasRenderingContext2D with set_text_baseline(
  self : Self,
  text_baseline : CanvasTextBaseline,
) -> Unit {
  canvas_rendering_context2d_set_text_baseline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text_baseline),
  )
}

///|
/// [CanvasRenderingContext2D.direction](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/direction)
impl TCanvasRenderingContext2D with direction(self : Self) -> CanvasDirection {
  canvas_rendering_context2d_direction_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.direction](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/direction)
impl TCanvasRenderingContext2D with set_direction(
  self : Self,
  direction : CanvasDirection,
) -> Unit {
  canvas_rendering_context2d_set_direction_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(direction),
  )
}

///|
/// [CanvasRenderingContext2D.letterSpacing](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/letterSpacing)
impl TCanvasRenderingContext2D with letter_spacing(self : Self) -> String {
  canvas_rendering_context2d_letter_spacing_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.letterSpacing](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/letterSpacing)
impl TCanvasRenderingContext2D with set_letter_spacing(
  self : Self,
  letter_spacing : String,
) -> Unit {
  canvas_rendering_context2d_set_letter_spacing_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(letter_spacing),
  )
}

///|
/// [CanvasRenderingContext2D.fontKerning](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fontKerning)
impl TCanvasRenderingContext2D with font_kerning(self : Self) -> CanvasFontKerning {
  canvas_rendering_context2d_font_kerning_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.fontKerning](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fontKerning)
impl TCanvasRenderingContext2D with set_font_kerning(
  self : Self,
  font_kerning : CanvasFontKerning,
) -> Unit {
  canvas_rendering_context2d_set_font_kerning_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(font_kerning),
  )
}

///|
/// [CanvasRenderingContext2D.fontStretch](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fontStretch)
impl TCanvasRenderingContext2D with font_stretch(self : Self) -> CanvasFontStretch {
  canvas_rendering_context2d_font_stretch_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.fontStretch](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fontStretch)
impl TCanvasRenderingContext2D with set_font_stretch(
  self : Self,
  font_stretch : CanvasFontStretch,
) -> Unit {
  canvas_rendering_context2d_set_font_stretch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(font_stretch),
  )
}

///|
/// [CanvasRenderingContext2D.fontVariantCaps](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fontVariantCaps)
impl TCanvasRenderingContext2D with font_variant_caps(self : Self) -> CanvasFontVariantCaps {
  canvas_rendering_context2d_font_variant_caps_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.fontVariantCaps](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fontVariantCaps)
impl TCanvasRenderingContext2D with set_font_variant_caps(
  self : Self,
  font_variant_caps : CanvasFontVariantCaps,
) -> Unit {
  canvas_rendering_context2d_set_font_variant_caps_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(font_variant_caps),
  )
}

///|
/// [CanvasRenderingContext2D.textRendering](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/textRendering)
impl TCanvasRenderingContext2D with text_rendering(self : Self) -> CanvasTextRendering {
  canvas_rendering_context2d_text_rendering_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.textRendering](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/textRendering)
impl TCanvasRenderingContext2D with set_text_rendering(
  self : Self,
  text_rendering : CanvasTextRendering,
) -> Unit {
  canvas_rendering_context2d_set_text_rendering_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text_rendering),
  )
}

///|
/// [CanvasRenderingContext2D.wordSpacing](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/wordSpacing)
impl TCanvasRenderingContext2D with word_spacing(self : Self) -> String {
  canvas_rendering_context2d_word_spacing_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.wordSpacing](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/wordSpacing)
impl TCanvasRenderingContext2D with set_word_spacing(
  self : Self,
  word_spacing : String,
) -> Unit {
  canvas_rendering_context2d_set_word_spacing_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(word_spacing),
  )
}

///|
/// [CanvasRenderingContext2D.closePath](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/closePath)
impl TCanvasRenderingContext2D with close_path(self : Self) -> Unit {
  canvas_rendering_context2d_close_path_ffi(TJsValue::to_js(self))
}

///|
/// [CanvasRenderingContext2D.moveTo](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/moveTo)
impl TCanvasRenderingContext2D with move_to(self : Self, x : Double, y : Double) -> Unit {
  canvas_rendering_context2d_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [CanvasRenderingContext2D.lineTo](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineTo)
impl TCanvasRenderingContext2D with line_to(self : Self, x : Double, y : Double) -> Unit {
  canvas_rendering_context2d_line_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [CanvasRenderingContext2D.quadraticCurveTo](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/quadraticCurveTo)
impl TCanvasRenderingContext2D with quadratic_curve_to(
  self : Self,
  cpx : Double,
  cpy : Double,
  x : Double,
  y : Double,
) -> Unit {
  canvas_rendering_context2d_quadratic_curve_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cpx),
    TJsValue::to_js(cpy),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [CanvasRenderingContext2D.bezierCurveTo](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/bezierCurveTo)
impl TCanvasRenderingContext2D with bezier_curve_to(
  self : Self,
  cp1x : Double,
  cp1y : Double,
  cp2x : Double,
  cp2y : Double,
  x : Double,
  y : Double,
) -> Unit {
  canvas_rendering_context2d_bezier_curve_to_ffi(
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
/// [CanvasRenderingContext2D.arcTo](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/arcTo)
impl TCanvasRenderingContext2D with arc_to(
  self : Self,
  x1 : Double,
  y1 : Double,
  x2 : Double,
  y2 : Double,
  radius : Double,
) -> Unit {
  canvas_rendering_context2d_arc_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
    TJsValue::to_js(x2),
    TJsValue::to_js(y2),
    TJsValue::to_js(radius),
  )
}

///|
/// [CanvasRenderingContext2D.rect](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/rect)
impl TCanvasRenderingContext2D with rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  canvas_rendering_context2d_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
/// [CanvasRenderingContext2D.roundRect](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/roundRect)
impl TCanvasRenderingContext2D with round_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
  radii? : &TCanvasRenderingContext2DRoundRectRadii,
) -> Unit {
  canvas_rendering_context2d_round_rect_ffi(
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
/// [CanvasRenderingContext2D.arc](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/arc)
impl TCanvasRenderingContext2D with arc(
  self : Self,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise? : Bool,
) -> Unit {
  canvas_rendering_context2d_arc_ffi(
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
/// [CanvasRenderingContext2D.ellipse](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/ellipse)
impl TCanvasRenderingContext2D with ellipse(
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
  canvas_rendering_context2d_ellipse_ffi(
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

///|
impl TCanvasRenderingContext2D with create_pattern(
  self : Self,
  image : &TCanvasImageSource,
  repetition : String,
) -> CanvasPattern {
  self.create_pattern_opt(image, repetition).unwrap()
}
