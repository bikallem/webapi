// Do not edit. This file is generated.
// MoonBit type: OffscreenCanvasRenderingContext2D
// Specifications: html.idl

/// [OffscreenCanvasRenderingContext2D](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D)
#external
pub type OffscreenCanvasRenderingContext2D

pub impl TJsValue for OffscreenCanvasRenderingContext2D with to_js(self: OffscreenCanvasRenderingContext2D) -> JsValue = "%identity"

pub impl FromJsAny for OffscreenCanvasRenderingContext2D with from_js_any(value : JsAny) -> OffscreenCanvasRenderingContext2D = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TOffscreenCanvasRenderingContext2D] OffscreenCanvasRenderingContext2D::into(self : OffscreenCanvasRenderingContext2D) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TOffscreenCanvasRenderingContext2D] OffscreenCanvasRenderingContext2D::unsafe_into(self : OffscreenCanvasRenderingContext2D) -> T = "%identity"

pub impl HasConstructor for OffscreenCanvasRenderingContext2D with constructor_name() { "OffscreenCanvasRenderingContext2D" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TOffscreenCanvasRenderingContext2D + HasConstructor] OffscreenCanvasRenderingContext2D::try_into(self : OffscreenCanvasRenderingContext2D) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TOffscreenCanvasRenderingContext2D for OffscreenCanvasRenderingContext2D

pub(open) trait TOffscreenCanvasRenderingContext2DStrokeStyle : TJsValue {}

pub impl TOffscreenCanvasRenderingContext2DStrokeStyle for String

pub impl TOffscreenCanvasRenderingContext2DStrokeStyle for CanvasGradient

pub impl TOffscreenCanvasRenderingContext2DStrokeStyle for CanvasPattern

#external
pub type OffscreenCanvasRenderingContext2DStrokeStyle

pub impl TJsValue for OffscreenCanvasRenderingContext2DStrokeStyle with to_js(self: OffscreenCanvasRenderingContext2DStrokeStyle) -> JsValue = "%identity"

pub impl FromJsAny for OffscreenCanvasRenderingContext2DStrokeStyle with from_js_any(value : JsAny) -> OffscreenCanvasRenderingContext2DStrokeStyle = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TOffscreenCanvasRenderingContext2DStrokeStyle + FromJsAny] OffscreenCanvasRenderingContext2DStrokeStyle::into(self : OffscreenCanvasRenderingContext2DStrokeStyle) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TOffscreenCanvasRenderingContext2DStrokeStyle + FromJsAny] OffscreenCanvasRenderingContext2DStrokeStyle::unsafe_into(self : OffscreenCanvasRenderingContext2DStrokeStyle) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TOffscreenCanvasRenderingContext2DStrokeStyle] OffscreenCanvasRenderingContext2DStrokeStyle::from(value : T) -> OffscreenCanvasRenderingContext2DStrokeStyle = "%identity"

pub impl TOffscreenCanvasRenderingContext2DStrokeStyle for OffscreenCanvasRenderingContext2DStrokeStyle

pub(open) trait TOffscreenCanvasRenderingContext2DFillStyle : TJsValue {}

pub impl TOffscreenCanvasRenderingContext2DFillStyle for String

pub impl TOffscreenCanvasRenderingContext2DFillStyle for CanvasGradient

pub impl TOffscreenCanvasRenderingContext2DFillStyle for CanvasPattern

#external
pub type OffscreenCanvasRenderingContext2DFillStyle

pub impl TJsValue for OffscreenCanvasRenderingContext2DFillStyle with to_js(self: OffscreenCanvasRenderingContext2DFillStyle) -> JsValue = "%identity"

pub impl FromJsAny for OffscreenCanvasRenderingContext2DFillStyle with from_js_any(value : JsAny) -> OffscreenCanvasRenderingContext2DFillStyle = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TOffscreenCanvasRenderingContext2DFillStyle + FromJsAny] OffscreenCanvasRenderingContext2DFillStyle::into(self : OffscreenCanvasRenderingContext2DFillStyle) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TOffscreenCanvasRenderingContext2DFillStyle + FromJsAny] OffscreenCanvasRenderingContext2DFillStyle::unsafe_into(self : OffscreenCanvasRenderingContext2DFillStyle) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TOffscreenCanvasRenderingContext2DFillStyle] OffscreenCanvasRenderingContext2DFillStyle::from(value : T) -> OffscreenCanvasRenderingContext2DFillStyle = "%identity"

pub impl TOffscreenCanvasRenderingContext2DFillStyle for OffscreenCanvasRenderingContext2DFillStyle

pub(open) trait TOffscreenCanvasRenderingContext2DRoundRectRadii : TJsValue {}

pub impl TOffscreenCanvasRenderingContext2DRoundRectRadii for Double

pub impl TOffscreenCanvasRenderingContext2DRoundRectRadii for DOMPointInit

pub(open) trait TOffscreenCanvasRenderingContext2DRoundRectRadii2 : TJsValue {}

pub impl TOffscreenCanvasRenderingContext2DRoundRectRadii2 for Double

pub impl TOffscreenCanvasRenderingContext2DRoundRectRadii2 for DOMPointInit

pub impl TJsValue for &TOffscreenCanvasRenderingContext2DRoundRectRadii2 with to_js(self : &TOffscreenCanvasRenderingContext2DRoundRectRadii2) -> JsValue = "%identity"

pub impl TOffscreenCanvasRenderingContext2DRoundRectRadii for Array[&TOffscreenCanvasRenderingContext2DRoundRectRadii2]

/// [OffscreenCanvasRenderingContext2D](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D) interface.
pub trait TOffscreenCanvasRenderingContext2D: TJsValue {
  canvas(self : Self) -> OffscreenCanvas = _
  get_context_attributes(self : Self) -> CanvasRenderingContext2DSettings = _
  save(self : Self) -> Unit = _
  restore(self : Self) -> Unit = _
  reset(self : Self) -> Unit = _
  is_context_lost(self : Self) -> Bool = _
  scale(self : Self, x : Double, y : Double) -> Unit = _
  rotate(self : Self, angle : Double) -> Unit = _
  translate(self : Self, x : Double, y : Double) -> Unit = _
  transform(self : Self, a : Double, b : Double, c : Double, d : Double, e : Double, f : Double) -> Unit = _
  get_transform(self : Self) -> DOMMatrix = _
  set_transform(self : Self, a : Double, b : Double, c : Double, d : Double, e : Double, f : Double) -> Unit = _
  set_transform_matrix(self : Self, transform? : DOMMatrix2DInit) -> Unit = _
  reset_transform(self : Self) -> Unit = _
  global_alpha(self : Self) -> Double = _
  set_global_alpha(self : Self, global_alpha : Double) -> Unit = _
  global_composite_operation(self : Self) -> String = _
  set_global_composite_operation(self : Self, global_composite_operation : String) -> Unit = _
  image_smoothing_enabled(self : Self) -> Bool = _
  set_image_smoothing_enabled(self : Self, image_smoothing_enabled : Bool) -> Unit = _
  image_smoothing_quality(self : Self) -> ImageSmoothingQuality = _
  set_image_smoothing_quality(self : Self, image_smoothing_quality : ImageSmoothingQuality) -> Unit = _
  stroke_style(self : Self) -> OffscreenCanvasRenderingContext2DStrokeStyle = _
  set_stroke_style(self : Self, stroke_style : &TOffscreenCanvasRenderingContext2DStrokeStyle) -> Unit = _
  fill_style(self : Self) -> OffscreenCanvasRenderingContext2DFillStyle = _
  set_fill_style(self : Self, fill_style : &TOffscreenCanvasRenderingContext2DFillStyle) -> Unit = _
  create_linear_gradient(self : Self, x0 : Double, y0 : Double, x1 : Double, y1 : Double) -> CanvasGradient = _
  create_radial_gradient(self : Self, x0 : Double, y0 : Double, r0 : Double, x1 : Double, y1 : Double, r1 : Double) -> CanvasGradient = _
  create_conic_gradient(self : Self, start_angle : Double, x : Double, y : Double) -> CanvasGradient = _
  create_pattern_opt(self : Self, image : &TCanvasImageSource, repetition : String) -> CanvasPattern? = _
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
  is_point_in_path(self : Self, x : Double, y : Double, fill_rule? : CanvasFillRule) -> Bool = _
  is_point_in_path_with_path(self : Self, path : &TPath2D, x : Double, y : Double, fill_rule? : CanvasFillRule) -> Bool = _
  is_point_in_stroke(self : Self, x : Double, y : Double) -> Bool = _
  is_point_in_stroke_with_path(self : Self, path : &TPath2D, x : Double, y : Double) -> Bool = _
  fill_text(self : Self, text : String, x : Double, y : Double, max_width? : Double) -> Unit = _
  stroke_text(self : Self, text : String, x : Double, y : Double, max_width? : Double) -> Unit = _
  measure_text(self : Self, text : String) -> TextMetrics = _
  draw_image(self : Self, image : &TCanvasImageSource, dx : Double, dy : Double) -> Unit = _
  draw_image_scaled(self : Self, image : &TCanvasImageSource, dx : Double, dy : Double, dw : Double, dh : Double) -> Unit = _
  draw_image_cropped(self : Self, image : &TCanvasImageSource, sx : Double, sy : Double, sw : Double, sh : Double, dx : Double, dy : Double, dw : Double, dh : Double) -> Unit = _
  create_image_data(self : Self, sw : Int, sh : Int, settings? : ImageDataSettings) -> ImageData = _
  create_image_data_from(self : Self, image_data : &TImageData) -> ImageData = _
  get_image_data(self : Self, sx : Int, sy : Int, sw : Int, sh : Int, settings? : ImageDataSettings) -> ImageData = _
  put_image_data(self : Self, image_data : &TImageData, dx : Int, dy : Int) -> Unit = _
  put_image_data_dirty_rect(self : Self, image_data : &TImageData, dx : Int, dy : Int, dirty_x : Int, dirty_y : Int, dirty_width : Int, dirty_height : Int) -> Unit = _
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
  quadratic_curve_to(self : Self, cpx : Double, cpy : Double, x : Double, y : Double) -> Unit = _
  bezier_curve_to(self : Self, cp1x : Double, cp1y : Double, cp2x : Double, cp2y : Double, x : Double, y : Double) -> Unit = _
  arc_to(self : Self, x1 : Double, y1 : Double, x2 : Double, y2 : Double, radius : Double) -> Unit = _
  rect(self : Self, x : Double, y : Double, w : Double, h : Double) -> Unit = _
  round_rect(self : Self, x : Double, y : Double, w : Double, h : Double, radii? : &TOffscreenCanvasRenderingContext2DRoundRectRadii) -> Unit = _
  arc(self : Self, x : Double, y : Double, radius : Double, start_angle : Double, end_angle : Double, counterclockwise? : Bool) -> Unit = _
  ellipse(self : Self, x : Double, y : Double, radius_x : Double, radius_y : Double, rotation : Double, start_angle : Double, end_angle : Double, counterclockwise? : Bool) -> Unit = _
  create_pattern(self : Self, image : &TCanvasImageSource, repetition : String) -> CanvasPattern = _
}

/// [OffscreenCanvasRenderingContext2D.canvas](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/canvas)
impl TOffscreenCanvasRenderingContext2D with canvas(self : Self) -> OffscreenCanvas {
  offscreen_canvas_rendering_context2d_canvas_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.getContextAttributes](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/getContextAttributes)
impl TOffscreenCanvasRenderingContext2D with get_context_attributes(self : Self) -> CanvasRenderingContext2DSettings {
  offscreen_canvas_rendering_context2d_get_context_attributes_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.save](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/save)
impl TOffscreenCanvasRenderingContext2D with save(self : Self) -> Unit {
  offscreen_canvas_rendering_context2d_save_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.restore](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/restore)
impl TOffscreenCanvasRenderingContext2D with restore(self : Self) -> Unit {
  offscreen_canvas_rendering_context2d_restore_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.reset](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/reset)
impl TOffscreenCanvasRenderingContext2D with reset(self : Self) -> Unit {
  offscreen_canvas_rendering_context2d_reset_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.isContextLost](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/isContextLost)
impl TOffscreenCanvasRenderingContext2D with is_context_lost(self : Self) -> Bool {
  offscreen_canvas_rendering_context2d_is_context_lost_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.scale](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/scale)
impl TOffscreenCanvasRenderingContext2D with scale(self : Self, 
x : Double, 
y : Double) -> Unit {
  offscreen_canvas_rendering_context2d_scale_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.rotate](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/rotate)
impl TOffscreenCanvasRenderingContext2D with rotate(self : Self, 
angle : Double) -> Unit {
  offscreen_canvas_rendering_context2d_rotate_ffi(TJsValue::to_js(self), TJsValue::to_js(angle))
}

/// [OffscreenCanvasRenderingContext2D.translate](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/translate)
impl TOffscreenCanvasRenderingContext2D with translate(self : Self, 
x : Double, 
y : Double) -> Unit {
  offscreen_canvas_rendering_context2d_translate_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.transform](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/transform)
impl TOffscreenCanvasRenderingContext2D with transform(self : Self, 
a : Double, 
b : Double, 
c : Double, 
d : Double, 
e : Double, 
f : Double) -> Unit {
  offscreen_canvas_rendering_context2d_transform_ffi(TJsValue::to_js(self), TJsValue::to_js(a), TJsValue::to_js(b), TJsValue::to_js(c), TJsValue::to_js(d), TJsValue::to_js(e), TJsValue::to_js(f))
}

/// [OffscreenCanvasRenderingContext2D.getTransform](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/getTransform)
impl TOffscreenCanvasRenderingContext2D with get_transform(self : Self) -> DOMMatrix {
  offscreen_canvas_rendering_context2d_get_transform_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.setTransform](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/setTransform)
impl TOffscreenCanvasRenderingContext2D with set_transform(self : Self, 
a : Double, 
b : Double, 
c : Double, 
d : Double, 
e : Double, 
f : Double) -> Unit {
  offscreen_canvas_rendering_context2d_set_transform_ffi(TJsValue::to_js(self), TJsValue::to_js(a), TJsValue::to_js(b), TJsValue::to_js(c), TJsValue::to_js(d), TJsValue::to_js(e), TJsValue::to_js(f))
}

/// [OffscreenCanvasRenderingContext2D.setTransform](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/setTransform)
impl TOffscreenCanvasRenderingContext2D with set_transform_matrix(self : Self, 
transform? : DOMMatrix2DInit) -> Unit {
  offscreen_canvas_rendering_context2d_set_transform_matrix_ffi(TJsValue::to_js(self), opt_to_js(transform))
}

/// [OffscreenCanvasRenderingContext2D.resetTransform](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/resetTransform)
impl TOffscreenCanvasRenderingContext2D with reset_transform(self : Self) -> Unit {
  offscreen_canvas_rendering_context2d_reset_transform_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.globalAlpha](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/globalAlpha)
impl TOffscreenCanvasRenderingContext2D with global_alpha(self : Self) -> Double {
  offscreen_canvas_rendering_context2d_global_alpha_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.globalAlpha](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/globalAlpha)
impl TOffscreenCanvasRenderingContext2D with set_global_alpha(self : Self, 
global_alpha : Double) -> Unit {
  offscreen_canvas_rendering_context2d_set_global_alpha_ffi(TJsValue::to_js(self), TJsValue::to_js(global_alpha))
}

/// [OffscreenCanvasRenderingContext2D.globalCompositeOperation](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/globalCompositeOperation)
impl TOffscreenCanvasRenderingContext2D with global_composite_operation(self : Self) -> String {
  offscreen_canvas_rendering_context2d_global_composite_operation_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.globalCompositeOperation](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/globalCompositeOperation)
impl TOffscreenCanvasRenderingContext2D with set_global_composite_operation(self : Self, 
global_composite_operation : String) -> Unit {
  offscreen_canvas_rendering_context2d_set_global_composite_operation_ffi(TJsValue::to_js(self), TJsValue::to_js(global_composite_operation))
}

/// [OffscreenCanvasRenderingContext2D.imageSmoothingEnabled](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/imageSmoothingEnabled)
impl TOffscreenCanvasRenderingContext2D with image_smoothing_enabled(self : Self) -> Bool {
  offscreen_canvas_rendering_context2d_image_smoothing_enabled_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.imageSmoothingEnabled](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/imageSmoothingEnabled)
impl TOffscreenCanvasRenderingContext2D with set_image_smoothing_enabled(self : Self, 
image_smoothing_enabled : Bool) -> Unit {
  offscreen_canvas_rendering_context2d_set_image_smoothing_enabled_ffi(TJsValue::to_js(self), TJsValue::to_js(image_smoothing_enabled))
}

/// [OffscreenCanvasRenderingContext2D.imageSmoothingQuality](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/imageSmoothingQuality)
impl TOffscreenCanvasRenderingContext2D with image_smoothing_quality(self : Self) -> ImageSmoothingQuality {
  offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.imageSmoothingQuality](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/imageSmoothingQuality)
impl TOffscreenCanvasRenderingContext2D with set_image_smoothing_quality(self : Self, 
image_smoothing_quality : ImageSmoothingQuality) -> Unit {
  offscreen_canvas_rendering_context2d_set_image_smoothing_quality_ffi(TJsValue::to_js(self), TJsValue::to_js(image_smoothing_quality))
}

/// [OffscreenCanvasRenderingContext2D.strokeStyle](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/strokeStyle)
impl TOffscreenCanvasRenderingContext2D with stroke_style(self : Self) -> OffscreenCanvasRenderingContext2DStrokeStyle {
  offscreen_canvas_rendering_context2d_stroke_style_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.strokeStyle](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/strokeStyle)
impl TOffscreenCanvasRenderingContext2D with set_stroke_style(self : Self, 
stroke_style : &TOffscreenCanvasRenderingContext2DStrokeStyle) -> Unit {
  offscreen_canvas_rendering_context2d_set_stroke_style_ffi(TJsValue::to_js(self), stroke_style.to_js())
}

/// [OffscreenCanvasRenderingContext2D.fillStyle](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fillStyle)
impl TOffscreenCanvasRenderingContext2D with fill_style(self : Self) -> OffscreenCanvasRenderingContext2DFillStyle {
  offscreen_canvas_rendering_context2d_fill_style_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.fillStyle](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fillStyle)
impl TOffscreenCanvasRenderingContext2D with set_fill_style(self : Self, 
fill_style : &TOffscreenCanvasRenderingContext2DFillStyle) -> Unit {
  offscreen_canvas_rendering_context2d_set_fill_style_ffi(TJsValue::to_js(self), fill_style.to_js())
}

/// [OffscreenCanvasRenderingContext2D.createLinearGradient](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/createLinearGradient)
impl TOffscreenCanvasRenderingContext2D with create_linear_gradient(self : Self, 
x0 : Double, 
y0 : Double, 
x1 : Double, 
y1 : Double) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_linear_gradient_ffi(TJsValue::to_js(self), TJsValue::to_js(x0), TJsValue::to_js(y0), TJsValue::to_js(x1), TJsValue::to_js(y1))
}

/// [OffscreenCanvasRenderingContext2D.createRadialGradient](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/createRadialGradient)
impl TOffscreenCanvasRenderingContext2D with create_radial_gradient(self : Self, 
x0 : Double, 
y0 : Double, 
r0 : Double, 
x1 : Double, 
y1 : Double, 
r1 : Double) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_radial_gradient_ffi(TJsValue::to_js(self), TJsValue::to_js(x0), TJsValue::to_js(y0), TJsValue::to_js(r0), TJsValue::to_js(x1), TJsValue::to_js(y1), TJsValue::to_js(r1))
}

/// [OffscreenCanvasRenderingContext2D.createConicGradient](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/createConicGradient)
impl TOffscreenCanvasRenderingContext2D with create_conic_gradient(self : Self, 
start_angle : Double, 
x : Double, 
y : Double) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_conic_gradient_ffi(TJsValue::to_js(self), TJsValue::to_js(start_angle), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.createPattern](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/createPattern)
impl TOffscreenCanvasRenderingContext2D with create_pattern_opt(self : Self, 
image : &TCanvasImageSource, 
repetition : String) -> CanvasPattern? {
  offscreen_canvas_rendering_context2d_create_pattern_ffi(TJsValue::to_js(self), image.to_js(), TJsValue::to_js(repetition)).to_option()
}

/// [OffscreenCanvasRenderingContext2D.shadowOffsetX](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/shadowOffsetX)
impl TOffscreenCanvasRenderingContext2D with shadow_offset_x(self : Self) -> Double {
  offscreen_canvas_rendering_context2d_shadow_offset_x_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.shadowOffsetX](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/shadowOffsetX)
impl TOffscreenCanvasRenderingContext2D with set_shadow_offset_x(self : Self, 
shadow_offset_x : Double) -> Unit {
  offscreen_canvas_rendering_context2d_set_shadow_offset_x_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_offset_x))
}

/// [OffscreenCanvasRenderingContext2D.shadowOffsetY](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/shadowOffsetY)
impl TOffscreenCanvasRenderingContext2D with shadow_offset_y(self : Self) -> Double {
  offscreen_canvas_rendering_context2d_shadow_offset_y_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.shadowOffsetY](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/shadowOffsetY)
impl TOffscreenCanvasRenderingContext2D with set_shadow_offset_y(self : Self, 
shadow_offset_y : Double) -> Unit {
  offscreen_canvas_rendering_context2d_set_shadow_offset_y_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_offset_y))
}

/// [OffscreenCanvasRenderingContext2D.shadowBlur](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/shadowBlur)
impl TOffscreenCanvasRenderingContext2D with shadow_blur(self : Self) -> Double {
  offscreen_canvas_rendering_context2d_shadow_blur_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.shadowBlur](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/shadowBlur)
impl TOffscreenCanvasRenderingContext2D with set_shadow_blur(self : Self, 
shadow_blur : Double) -> Unit {
  offscreen_canvas_rendering_context2d_set_shadow_blur_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_blur))
}

/// [OffscreenCanvasRenderingContext2D.shadowColor](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/shadowColor)
impl TOffscreenCanvasRenderingContext2D with shadow_color(self : Self) -> String {
  offscreen_canvas_rendering_context2d_shadow_color_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.shadowColor](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/shadowColor)
impl TOffscreenCanvasRenderingContext2D with set_shadow_color(self : Self, 
shadow_color : String) -> Unit {
  offscreen_canvas_rendering_context2d_set_shadow_color_ffi(TJsValue::to_js(self), TJsValue::to_js(shadow_color))
}

/// [OffscreenCanvasRenderingContext2D.filter](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/filter)
impl TOffscreenCanvasRenderingContext2D with filter(self : Self) -> String {
  offscreen_canvas_rendering_context2d_filter_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.filter](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/filter)
impl TOffscreenCanvasRenderingContext2D with set_filter(self : Self, 
filter : String) -> Unit {
  offscreen_canvas_rendering_context2d_set_filter_ffi(TJsValue::to_js(self), TJsValue::to_js(filter))
}

/// [OffscreenCanvasRenderingContext2D.clearRect](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/clearRect)
impl TOffscreenCanvasRenderingContext2D with clear_rect(self : Self, 
x : Double, 
y : Double, 
w : Double, 
h : Double) -> Unit {
  offscreen_canvas_rendering_context2d_clear_rect_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(w), TJsValue::to_js(h))
}

/// [OffscreenCanvasRenderingContext2D.fillRect](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fillRect)
impl TOffscreenCanvasRenderingContext2D with fill_rect(self : Self, 
x : Double, 
y : Double, 
w : Double, 
h : Double) -> Unit {
  offscreen_canvas_rendering_context2d_fill_rect_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(w), TJsValue::to_js(h))
}

/// [OffscreenCanvasRenderingContext2D.strokeRect](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/strokeRect)
impl TOffscreenCanvasRenderingContext2D with stroke_rect(self : Self, 
x : Double, 
y : Double, 
w : Double, 
h : Double) -> Unit {
  offscreen_canvas_rendering_context2d_stroke_rect_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(w), TJsValue::to_js(h))
}

/// [OffscreenCanvasRenderingContext2D.beginPath](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/beginPath)
impl TOffscreenCanvasRenderingContext2D with begin_path(self : Self) -> Unit {
  offscreen_canvas_rendering_context2d_begin_path_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.fill](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fill)
impl TOffscreenCanvasRenderingContext2D with fill(self : Self, 
fill_rule? : CanvasFillRule) -> Unit {
  offscreen_canvas_rendering_context2d_fill_ffi(TJsValue::to_js(self), opt_to_js(fill_rule))
}

/// [OffscreenCanvasRenderingContext2D.fill](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fill)
impl TOffscreenCanvasRenderingContext2D with fill_path(self : Self, 
path : &TPath2D, 
fill_rule? : CanvasFillRule) -> Unit {
  offscreen_canvas_rendering_context2d_fill_path_ffi(TJsValue::to_js(self), TJsValue::to_js(path), opt_to_js(fill_rule))
}

/// [OffscreenCanvasRenderingContext2D.stroke](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/stroke)
impl TOffscreenCanvasRenderingContext2D with stroke(self : Self) -> Unit {
  offscreen_canvas_rendering_context2d_stroke_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.stroke](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/stroke)
impl TOffscreenCanvasRenderingContext2D with stroke_path(self : Self, 
path : &TPath2D) -> Unit {
  offscreen_canvas_rendering_context2d_stroke_path_ffi(TJsValue::to_js(self), TJsValue::to_js(path))
}

/// [OffscreenCanvasRenderingContext2D.clip](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/clip)
impl TOffscreenCanvasRenderingContext2D with clip(self : Self, 
fill_rule? : CanvasFillRule) -> Unit {
  offscreen_canvas_rendering_context2d_clip_ffi(TJsValue::to_js(self), opt_to_js(fill_rule))
}

/// [OffscreenCanvasRenderingContext2D.clip](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/clip)
impl TOffscreenCanvasRenderingContext2D with clip_path(self : Self, 
path : &TPath2D, 
fill_rule? : CanvasFillRule) -> Unit {
  offscreen_canvas_rendering_context2d_clip_path_ffi(TJsValue::to_js(self), TJsValue::to_js(path), opt_to_js(fill_rule))
}

/// [OffscreenCanvasRenderingContext2D.isPointInPath](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/isPointInPath)
impl TOffscreenCanvasRenderingContext2D with is_point_in_path(self : Self, 
x : Double, 
y : Double, 
fill_rule? : CanvasFillRule) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_path_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), opt_to_js(fill_rule))
}

/// [OffscreenCanvasRenderingContext2D.isPointInPath](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/isPointInPath)
impl TOffscreenCanvasRenderingContext2D with is_point_in_path_with_path(self : Self, 
path : &TPath2D, 
x : Double, 
y : Double, 
fill_rule? : CanvasFillRule) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_path_with_path_ffi(TJsValue::to_js(self), TJsValue::to_js(path), TJsValue::to_js(x), TJsValue::to_js(y), opt_to_js(fill_rule))
}

/// [OffscreenCanvasRenderingContext2D.isPointInStroke](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/isPointInStroke)
impl TOffscreenCanvasRenderingContext2D with is_point_in_stroke(self : Self, 
x : Double, 
y : Double) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_stroke_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.isPointInStroke](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/isPointInStroke)
impl TOffscreenCanvasRenderingContext2D with is_point_in_stroke_with_path(self : Self, 
path : &TPath2D, 
x : Double, 
y : Double) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_stroke_with_path_ffi(TJsValue::to_js(self), TJsValue::to_js(path), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.fillText](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fillText)
impl TOffscreenCanvasRenderingContext2D with fill_text(self : Self, 
text : String, 
x : Double, 
y : Double, 
max_width? : Double) -> Unit {
  offscreen_canvas_rendering_context2d_fill_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text), TJsValue::to_js(x), TJsValue::to_js(y), opt_to_js(max_width))
}

/// [OffscreenCanvasRenderingContext2D.strokeText](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/strokeText)
impl TOffscreenCanvasRenderingContext2D with stroke_text(self : Self, 
text : String, 
x : Double, 
y : Double, 
max_width? : Double) -> Unit {
  offscreen_canvas_rendering_context2d_stroke_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text), TJsValue::to_js(x), TJsValue::to_js(y), opt_to_js(max_width))
}

/// [OffscreenCanvasRenderingContext2D.measureText](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/measureText)
impl TOffscreenCanvasRenderingContext2D with measure_text(self : Self, 
text : String) -> TextMetrics {
  offscreen_canvas_rendering_context2d_measure_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

/// [OffscreenCanvasRenderingContext2D.drawImage](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/drawImage)
impl TOffscreenCanvasRenderingContext2D with draw_image(self : Self, 
image : &TCanvasImageSource, 
dx : Double, 
dy : Double) -> Unit {
  offscreen_canvas_rendering_context2d_draw_image_ffi(TJsValue::to_js(self), image.to_js(), TJsValue::to_js(dx), TJsValue::to_js(dy))
}

/// [OffscreenCanvasRenderingContext2D.drawImage](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/drawImage)
impl TOffscreenCanvasRenderingContext2D with draw_image_scaled(self : Self, 
image : &TCanvasImageSource, 
dx : Double, 
dy : Double, 
dw : Double, 
dh : Double) -> Unit {
  offscreen_canvas_rendering_context2d_draw_image_scaled_ffi(TJsValue::to_js(self), image.to_js(), TJsValue::to_js(dx), TJsValue::to_js(dy), TJsValue::to_js(dw), TJsValue::to_js(dh))
}

/// [OffscreenCanvasRenderingContext2D.drawImage](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/drawImage)
impl TOffscreenCanvasRenderingContext2D with draw_image_cropped(self : Self, 
image : &TCanvasImageSource, 
sx : Double, 
sy : Double, 
sw : Double, 
sh : Double, 
dx : Double, 
dy : Double, 
dw : Double, 
dh : Double) -> Unit {
  offscreen_canvas_rendering_context2d_draw_image_cropped_ffi(TJsValue::to_js(self), image.to_js(), TJsValue::to_js(sx), TJsValue::to_js(sy), TJsValue::to_js(sw), TJsValue::to_js(sh), TJsValue::to_js(dx), TJsValue::to_js(dy), TJsValue::to_js(dw), TJsValue::to_js(dh))
}

/// [OffscreenCanvasRenderingContext2D.createImageData](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/createImageData)
impl TOffscreenCanvasRenderingContext2D with create_image_data(self : Self, 
sw : Int, 
sh : Int, 
settings? : ImageDataSettings) -> ImageData {
  offscreen_canvas_rendering_context2d_create_image_data_ffi(TJsValue::to_js(self), TJsValue::to_js(sw), TJsValue::to_js(sh), opt_to_js(settings))
}

/// [OffscreenCanvasRenderingContext2D.createImageData](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/createImageData)
impl TOffscreenCanvasRenderingContext2D with create_image_data_from(self : Self, 
image_data : &TImageData) -> ImageData {
  offscreen_canvas_rendering_context2d_create_image_data_from_ffi(TJsValue::to_js(self), TJsValue::to_js(image_data))
}

/// [OffscreenCanvasRenderingContext2D.getImageData](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/getImageData)
impl TOffscreenCanvasRenderingContext2D with get_image_data(self : Self, 
sx : Int, 
sy : Int, 
sw : Int, 
sh : Int, 
settings? : ImageDataSettings) -> ImageData {
  offscreen_canvas_rendering_context2d_get_image_data_ffi(TJsValue::to_js(self), TJsValue::to_js(sx), TJsValue::to_js(sy), TJsValue::to_js(sw), TJsValue::to_js(sh), opt_to_js(settings))
}

/// [OffscreenCanvasRenderingContext2D.putImageData](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/putImageData)
impl TOffscreenCanvasRenderingContext2D with put_image_data(self : Self, 
image_data : &TImageData, 
dx : Int, 
dy : Int) -> Unit {
  offscreen_canvas_rendering_context2d_put_image_data_ffi(TJsValue::to_js(self), TJsValue::to_js(image_data), TJsValue::to_js(dx), TJsValue::to_js(dy))
}

/// [OffscreenCanvasRenderingContext2D.putImageData](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/putImageData)
impl TOffscreenCanvasRenderingContext2D with put_image_data_dirty_rect(self : Self, 
image_data : &TImageData, 
dx : Int, 
dy : Int, 
dirty_x : Int, 
dirty_y : Int, 
dirty_width : Int, 
dirty_height : Int) -> Unit {
  offscreen_canvas_rendering_context2d_put_image_data_dirty_rect_ffi(TJsValue::to_js(self), TJsValue::to_js(image_data), TJsValue::to_js(dx), TJsValue::to_js(dy), TJsValue::to_js(dirty_x), TJsValue::to_js(dirty_y), TJsValue::to_js(dirty_width), TJsValue::to_js(dirty_height))
}

/// [OffscreenCanvasRenderingContext2D.lineWidth](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineWidth)
impl TOffscreenCanvasRenderingContext2D with line_width(self : Self) -> Double {
  offscreen_canvas_rendering_context2d_line_width_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.lineWidth](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineWidth)
impl TOffscreenCanvasRenderingContext2D with set_line_width(self : Self, 
line_width : Double) -> Unit {
  offscreen_canvas_rendering_context2d_set_line_width_ffi(TJsValue::to_js(self), TJsValue::to_js(line_width))
}

/// [OffscreenCanvasRenderingContext2D.lineCap](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineCap)
impl TOffscreenCanvasRenderingContext2D with line_cap(self : Self) -> CanvasLineCap {
  offscreen_canvas_rendering_context2d_line_cap_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.lineCap](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineCap)
impl TOffscreenCanvasRenderingContext2D with set_line_cap(self : Self, 
line_cap : CanvasLineCap) -> Unit {
  offscreen_canvas_rendering_context2d_set_line_cap_ffi(TJsValue::to_js(self), TJsValue::to_js(line_cap))
}

/// [OffscreenCanvasRenderingContext2D.lineJoin](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineJoin)
impl TOffscreenCanvasRenderingContext2D with line_join(self : Self) -> CanvasLineJoin {
  offscreen_canvas_rendering_context2d_line_join_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.lineJoin](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineJoin)
impl TOffscreenCanvasRenderingContext2D with set_line_join(self : Self, 
line_join : CanvasLineJoin) -> Unit {
  offscreen_canvas_rendering_context2d_set_line_join_ffi(TJsValue::to_js(self), TJsValue::to_js(line_join))
}

/// [OffscreenCanvasRenderingContext2D.miterLimit](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/miterLimit)
impl TOffscreenCanvasRenderingContext2D with miter_limit(self : Self) -> Double {
  offscreen_canvas_rendering_context2d_miter_limit_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.miterLimit](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/miterLimit)
impl TOffscreenCanvasRenderingContext2D with set_miter_limit(self : Self, 
miter_limit : Double) -> Unit {
  offscreen_canvas_rendering_context2d_set_miter_limit_ffi(TJsValue::to_js(self), TJsValue::to_js(miter_limit))
}

/// [OffscreenCanvasRenderingContext2D.setLineDash](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/setLineDash)
impl TOffscreenCanvasRenderingContext2D with set_line_dash(self : Self, 
segments : Array[Double]) -> Unit {
  offscreen_canvas_rendering_context2d_set_line_dash_ffi(TJsValue::to_js(self), TJsValue::to_js(segments))
}

/// [OffscreenCanvasRenderingContext2D.getLineDash](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/getLineDash)
impl TOffscreenCanvasRenderingContext2D with get_line_dash(self : Self) -> Array[Double] {
  offscreen_canvas_rendering_context2d_get_line_dash_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.lineDashOffset](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineDashOffset)
impl TOffscreenCanvasRenderingContext2D with line_dash_offset(self : Self) -> Double {
  offscreen_canvas_rendering_context2d_line_dash_offset_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.lineDashOffset](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineDashOffset)
impl TOffscreenCanvasRenderingContext2D with set_line_dash_offset(self : Self, 
line_dash_offset : Double) -> Unit {
  offscreen_canvas_rendering_context2d_set_line_dash_offset_ffi(TJsValue::to_js(self), TJsValue::to_js(line_dash_offset))
}

/// [OffscreenCanvasRenderingContext2D.lang](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lang)
impl TOffscreenCanvasRenderingContext2D with lang(self : Self) -> String {
  offscreen_canvas_rendering_context2d_lang_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.lang](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lang)
impl TOffscreenCanvasRenderingContext2D with set_lang(self : Self, 
lang : String) -> Unit {
  offscreen_canvas_rendering_context2d_set_lang_ffi(TJsValue::to_js(self), TJsValue::to_js(lang))
}

/// [OffscreenCanvasRenderingContext2D.font](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/font)
impl TOffscreenCanvasRenderingContext2D with font(self : Self) -> String {
  offscreen_canvas_rendering_context2d_font_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.font](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/font)
impl TOffscreenCanvasRenderingContext2D with set_font(self : Self, 
font : String) -> Unit {
  offscreen_canvas_rendering_context2d_set_font_ffi(TJsValue::to_js(self), TJsValue::to_js(font))
}

/// [OffscreenCanvasRenderingContext2D.textAlign](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/textAlign)
impl TOffscreenCanvasRenderingContext2D with text_align(self : Self) -> CanvasTextAlign {
  offscreen_canvas_rendering_context2d_text_align_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.textAlign](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/textAlign)
impl TOffscreenCanvasRenderingContext2D with set_text_align(self : Self, 
text_align : CanvasTextAlign) -> Unit {
  offscreen_canvas_rendering_context2d_set_text_align_ffi(TJsValue::to_js(self), TJsValue::to_js(text_align))
}

/// [OffscreenCanvasRenderingContext2D.textBaseline](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/textBaseline)
impl TOffscreenCanvasRenderingContext2D with text_baseline(self : Self) -> CanvasTextBaseline {
  offscreen_canvas_rendering_context2d_text_baseline_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.textBaseline](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/textBaseline)
impl TOffscreenCanvasRenderingContext2D with set_text_baseline(self : Self, 
text_baseline : CanvasTextBaseline) -> Unit {
  offscreen_canvas_rendering_context2d_set_text_baseline_ffi(TJsValue::to_js(self), TJsValue::to_js(text_baseline))
}

/// [OffscreenCanvasRenderingContext2D.direction](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/direction)
impl TOffscreenCanvasRenderingContext2D with direction(self : Self) -> CanvasDirection {
  offscreen_canvas_rendering_context2d_direction_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.direction](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/direction)
impl TOffscreenCanvasRenderingContext2D with set_direction(self : Self, 
direction : CanvasDirection) -> Unit {
  offscreen_canvas_rendering_context2d_set_direction_ffi(TJsValue::to_js(self), TJsValue::to_js(direction))
}

/// [OffscreenCanvasRenderingContext2D.letterSpacing](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/letterSpacing)
impl TOffscreenCanvasRenderingContext2D with letter_spacing(self : Self) -> String {
  offscreen_canvas_rendering_context2d_letter_spacing_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.letterSpacing](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/letterSpacing)
impl TOffscreenCanvasRenderingContext2D with set_letter_spacing(self : Self, 
letter_spacing : String) -> Unit {
  offscreen_canvas_rendering_context2d_set_letter_spacing_ffi(TJsValue::to_js(self), TJsValue::to_js(letter_spacing))
}

/// [OffscreenCanvasRenderingContext2D.fontKerning](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fontKerning)
impl TOffscreenCanvasRenderingContext2D with font_kerning(self : Self) -> CanvasFontKerning {
  offscreen_canvas_rendering_context2d_font_kerning_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.fontKerning](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fontKerning)
impl TOffscreenCanvasRenderingContext2D with set_font_kerning(self : Self, 
font_kerning : CanvasFontKerning) -> Unit {
  offscreen_canvas_rendering_context2d_set_font_kerning_ffi(TJsValue::to_js(self), TJsValue::to_js(font_kerning))
}

/// [OffscreenCanvasRenderingContext2D.fontStretch](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fontStretch)
impl TOffscreenCanvasRenderingContext2D with font_stretch(self : Self) -> CanvasFontStretch {
  offscreen_canvas_rendering_context2d_font_stretch_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.fontStretch](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fontStretch)
impl TOffscreenCanvasRenderingContext2D with set_font_stretch(self : Self, 
font_stretch : CanvasFontStretch) -> Unit {
  offscreen_canvas_rendering_context2d_set_font_stretch_ffi(TJsValue::to_js(self), TJsValue::to_js(font_stretch))
}

/// [OffscreenCanvasRenderingContext2D.fontVariantCaps](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fontVariantCaps)
impl TOffscreenCanvasRenderingContext2D with font_variant_caps(self : Self) -> CanvasFontVariantCaps {
  offscreen_canvas_rendering_context2d_font_variant_caps_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.fontVariantCaps](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/fontVariantCaps)
impl TOffscreenCanvasRenderingContext2D with set_font_variant_caps(self : Self, 
font_variant_caps : CanvasFontVariantCaps) -> Unit {
  offscreen_canvas_rendering_context2d_set_font_variant_caps_ffi(TJsValue::to_js(self), TJsValue::to_js(font_variant_caps))
}

/// [OffscreenCanvasRenderingContext2D.textRendering](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/textRendering)
impl TOffscreenCanvasRenderingContext2D with text_rendering(self : Self) -> CanvasTextRendering {
  offscreen_canvas_rendering_context2d_text_rendering_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.textRendering](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/textRendering)
impl TOffscreenCanvasRenderingContext2D with set_text_rendering(self : Self, 
text_rendering : CanvasTextRendering) -> Unit {
  offscreen_canvas_rendering_context2d_set_text_rendering_ffi(TJsValue::to_js(self), TJsValue::to_js(text_rendering))
}

/// [OffscreenCanvasRenderingContext2D.wordSpacing](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/wordSpacing)
impl TOffscreenCanvasRenderingContext2D with word_spacing(self : Self) -> String {
  offscreen_canvas_rendering_context2d_word_spacing_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.wordSpacing](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/wordSpacing)
impl TOffscreenCanvasRenderingContext2D with set_word_spacing(self : Self, 
word_spacing : String) -> Unit {
  offscreen_canvas_rendering_context2d_set_word_spacing_ffi(TJsValue::to_js(self), TJsValue::to_js(word_spacing))
}

/// [OffscreenCanvasRenderingContext2D.closePath](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/closePath)
impl TOffscreenCanvasRenderingContext2D with close_path(self : Self) -> Unit {
  offscreen_canvas_rendering_context2d_close_path_ffi(TJsValue::to_js(self))
}

/// [OffscreenCanvasRenderingContext2D.moveTo](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/moveTo)
impl TOffscreenCanvasRenderingContext2D with move_to(self : Self, 
x : Double, 
y : Double) -> Unit {
  offscreen_canvas_rendering_context2d_move_to_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.lineTo](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/lineTo)
impl TOffscreenCanvasRenderingContext2D with line_to(self : Self, 
x : Double, 
y : Double) -> Unit {
  offscreen_canvas_rendering_context2d_line_to_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.quadraticCurveTo](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/quadraticCurveTo)
impl TOffscreenCanvasRenderingContext2D with quadratic_curve_to(self : Self, 
cpx : Double, 
cpy : Double, 
x : Double, 
y : Double) -> Unit {
  offscreen_canvas_rendering_context2d_quadratic_curve_to_ffi(TJsValue::to_js(self), TJsValue::to_js(cpx), TJsValue::to_js(cpy), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.bezierCurveTo](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/bezierCurveTo)
impl TOffscreenCanvasRenderingContext2D with bezier_curve_to(self : Self, 
cp1x : Double, 
cp1y : Double, 
cp2x : Double, 
cp2y : Double, 
x : Double, 
y : Double) -> Unit {
  offscreen_canvas_rendering_context2d_bezier_curve_to_ffi(TJsValue::to_js(self), TJsValue::to_js(cp1x), TJsValue::to_js(cp1y), TJsValue::to_js(cp2x), TJsValue::to_js(cp2y), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [OffscreenCanvasRenderingContext2D.arcTo](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/arcTo)
impl TOffscreenCanvasRenderingContext2D with arc_to(self : Self, 
x1 : Double, 
y1 : Double, 
x2 : Double, 
y2 : Double, 
radius : Double) -> Unit {
  offscreen_canvas_rendering_context2d_arc_to_ffi(TJsValue::to_js(self), TJsValue::to_js(x1), TJsValue::to_js(y1), TJsValue::to_js(x2), TJsValue::to_js(y2), TJsValue::to_js(radius))
}

/// [OffscreenCanvasRenderingContext2D.rect](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/rect)
impl TOffscreenCanvasRenderingContext2D with rect(self : Self, 
x : Double, 
y : Double, 
w : Double, 
h : Double) -> Unit {
  offscreen_canvas_rendering_context2d_rect_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(w), TJsValue::to_js(h))
}

/// [OffscreenCanvasRenderingContext2D.roundRect](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/roundRect)
impl TOffscreenCanvasRenderingContext2D with round_rect(self : Self, 
x : Double, 
y : Double, 
w : Double, 
h : Double, 
radii? : &TOffscreenCanvasRenderingContext2DRoundRectRadii) -> Unit {
  offscreen_canvas_rendering_context2d_round_rect_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(w), TJsValue::to_js(h), match radii {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

/// [OffscreenCanvasRenderingContext2D.arc](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/arc)
impl TOffscreenCanvasRenderingContext2D with arc(self : Self, 
x : Double, 
y : Double, 
radius : Double, 
start_angle : Double, 
end_angle : Double, 
counterclockwise? : Bool) -> Unit {
  offscreen_canvas_rendering_context2d_arc_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(radius), TJsValue::to_js(start_angle), TJsValue::to_js(end_angle), opt_to_js(counterclockwise))
}

/// [OffscreenCanvasRenderingContext2D.ellipse](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D/ellipse)
impl TOffscreenCanvasRenderingContext2D with ellipse(self : Self, 
x : Double, 
y : Double, 
radius_x : Double, 
radius_y : Double, 
rotation : Double, 
start_angle : Double, 
end_angle : Double, 
counterclockwise? : Bool) -> Unit {
  offscreen_canvas_rendering_context2d_ellipse_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(radius_x), TJsValue::to_js(radius_y), TJsValue::to_js(rotation), TJsValue::to_js(start_angle), TJsValue::to_js(end_angle), opt_to_js(counterclockwise))
}

impl TOffscreenCanvasRenderingContext2D with create_pattern(self : Self, 
image : &TCanvasImageSource, 
repetition : String) -> CanvasPattern {
  self.create_pattern_opt(image, repetition).unwrap()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_canvas_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.canvas"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_canvas_ffi(obj: JsValue) -> OffscreenCanvas {
  offscreen_canvas_rendering_context2d_canvas_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_get_context_attributes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getContextAttributes()"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_get_context_attributes_ffi(obj: JsValue) -> CanvasRenderingContext2DSettings {
  offscreen_canvas_rendering_context2d_get_context_attributes_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_save_ffi(obj: JsValue) -> Unit = "(obj) => obj.save()"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_restore_ffi(obj: JsValue) -> Unit = "(obj) => obj.restore()"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_reset_ffi(obj: JsValue) -> Unit = "(obj) => obj.reset()"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_is_context_lost_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isContextLost()"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_is_context_lost_ffi(obj: JsValue) -> Bool {
  offscreen_canvas_rendering_context2d_is_context_lost_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_scale_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.scale(x, y)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_rotate_ffi(obj: JsValue, angle: JsValue) -> Unit = "(obj, angle) => obj.rotate(angle)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_translate_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.translate(x, y)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_transform_ffi(obj: JsValue, a: JsValue, b: JsValue, c: JsValue, d: JsValue, e: JsValue, f: JsValue) -> Unit = "(obj, a, b, c, d, e, f) => obj.transform(a, b, c, d, e, f)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_get_transform_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getTransform()"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_get_transform_ffi(obj: JsValue) -> DOMMatrix {
  offscreen_canvas_rendering_context2d_get_transform_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_transform_ffi(obj: JsValue, a: JsValue, b: JsValue, c: JsValue, d: JsValue, e: JsValue, f: JsValue) -> Unit = "(obj, a, b, c, d, e, f) => obj.setTransform(a, b, c, d, e, f)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_transform_matrix_ffi(obj: JsValue, transform: JsValue) -> Unit = "(obj, transform) => obj.setTransform(transform)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_reset_transform_ffi(obj: JsValue) -> Unit = "(obj) => obj.resetTransform()"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_global_alpha_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.globalAlpha"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_global_alpha_ffi(obj: JsValue) -> Double {
  offscreen_canvas_rendering_context2d_global_alpha_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_global_alpha_ffi(obj: JsValue, global_alpha: JsValue) -> Unit = "(obj, globalAlpha) => { obj.globalAlpha = globalAlpha; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_global_composite_operation_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.globalCompositeOperation"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_global_composite_operation_ffi(obj: JsValue) -> String {
  offscreen_canvas_rendering_context2d_global_composite_operation_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_global_composite_operation_ffi(obj: JsValue, global_composite_operation: JsValue) -> Unit = "(obj, globalCompositeOperation) => { obj.globalCompositeOperation = globalCompositeOperation; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_image_smoothing_enabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.imageSmoothingEnabled"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_image_smoothing_enabled_ffi(obj: JsValue) -> Bool {
  offscreen_canvas_rendering_context2d_image_smoothing_enabled_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_image_smoothing_enabled_ffi(obj: JsValue, image_smoothing_enabled: JsValue) -> Unit = "(obj, imageSmoothingEnabled) => { obj.imageSmoothingEnabled = imageSmoothingEnabled; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.imageSmoothingQuality"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi(obj: JsValue) -> ImageSmoothingQuality {
  ImageSmoothingQuality::from_unchecked(offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_image_smoothing_quality_ffi(obj: JsValue, image_smoothing_quality: JsValue) -> Unit = "(obj, imageSmoothingQuality) => { obj.imageSmoothingQuality = imageSmoothingQuality; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_stroke_style_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.strokeStyle"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_stroke_style_ffi(obj: JsValue) -> OffscreenCanvasRenderingContext2DStrokeStyle {
  offscreen_canvas_rendering_context2d_stroke_style_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_stroke_style_ffi(obj: JsValue, stroke_style: JsValue) -> Unit = "(obj, strokeStyle) => { obj.strokeStyle = strokeStyle; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_fill_style_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fillStyle"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_fill_style_ffi(obj: JsValue) -> OffscreenCanvasRenderingContext2DFillStyle {
  offscreen_canvas_rendering_context2d_fill_style_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_fill_style_ffi(obj: JsValue, fill_style: JsValue) -> Unit = "(obj, fillStyle) => { obj.fillStyle = fillStyle; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_create_linear_gradient_ffi_js(obj: JsValue, x0: JsValue, y0: JsValue, x1: JsValue, y1: JsValue) -> JsValue = "(obj, x0, y0, x1, y1) => obj.createLinearGradient(x0, y0, x1, y1)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_create_linear_gradient_ffi(obj: JsValue, x0: JsValue, y0: JsValue, x1: JsValue, y1: JsValue) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_linear_gradient_ffi_js(obj, x0, y0, x1, y1).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_create_radial_gradient_ffi_js(obj: JsValue, x0: JsValue, y0: JsValue, r0: JsValue, x1: JsValue, y1: JsValue, r1: JsValue) -> JsValue = "(obj, x0, y0, r0, x1, y1, r1) => obj.createRadialGradient(x0, y0, r0, x1, y1, r1)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_create_radial_gradient_ffi(obj: JsValue, x0: JsValue, y0: JsValue, r0: JsValue, x1: JsValue, y1: JsValue, r1: JsValue) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_radial_gradient_ffi_js(obj, x0, y0, r0, x1, y1, r1).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_create_conic_gradient_ffi_js(obj: JsValue, start_angle: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, start_angle, x, y) => obj.createConicGradient(start_angle, x, y)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_create_conic_gradient_ffi(obj: JsValue, start_angle: JsValue, x: JsValue, y: JsValue) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_conic_gradient_ffi_js(obj, start_angle, x, y).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_create_pattern_ffi(obj: JsValue, image: JsValue, repetition: JsValue) -> JsValue = "(obj, image, repetition) => obj.createPattern(image, repetition)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_shadow_offset_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowOffsetX"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_shadow_offset_x_ffi(obj: JsValue) -> Double {
  offscreen_canvas_rendering_context2d_shadow_offset_x_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_shadow_offset_x_ffi(obj: JsValue, shadow_offset_x: JsValue) -> Unit = "(obj, shadowOffsetX) => { obj.shadowOffsetX = shadowOffsetX; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_shadow_offset_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowOffsetY"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_shadow_offset_y_ffi(obj: JsValue) -> Double {
  offscreen_canvas_rendering_context2d_shadow_offset_y_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_shadow_offset_y_ffi(obj: JsValue, shadow_offset_y: JsValue) -> Unit = "(obj, shadowOffsetY) => { obj.shadowOffsetY = shadowOffsetY; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_shadow_blur_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowBlur"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_shadow_blur_ffi(obj: JsValue) -> Double {
  offscreen_canvas_rendering_context2d_shadow_blur_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_shadow_blur_ffi(obj: JsValue, shadow_blur: JsValue) -> Unit = "(obj, shadowBlur) => { obj.shadowBlur = shadowBlur; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_shadow_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.shadowColor"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_shadow_color_ffi(obj: JsValue) -> String {
  offscreen_canvas_rendering_context2d_shadow_color_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_shadow_color_ffi(obj: JsValue, shadow_color: JsValue) -> Unit = "(obj, shadowColor) => { obj.shadowColor = shadowColor; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_filter_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.filter"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_filter_ffi(obj: JsValue) -> String {
  offscreen_canvas_rendering_context2d_filter_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_filter_ffi(obj: JsValue, filter: JsValue) -> Unit = "(obj, filter) => { obj.filter = filter; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_clear_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.clearRect(x, y, w, h)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_fill_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.fillRect(x, y, w, h)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_stroke_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.strokeRect(x, y, w, h)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_begin_path_ffi(obj: JsValue) -> Unit = "(obj) => obj.beginPath()"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_fill_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "(obj, fill_rule) => obj.fill(fill_rule)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_fill_path_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "(obj, path, fill_rule) => obj.fill(path, fill_rule)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_stroke_ffi(obj: JsValue) -> Unit = "(obj) => obj.stroke()"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_stroke_path_ffi(obj: JsValue, path: JsValue) -> Unit = "(obj, path) => obj.stroke(path)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_clip_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "(obj, fill_rule) => obj.clip(fill_rule)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_clip_path_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "(obj, path, fill_rule) => obj.clip(path, fill_rule)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_is_point_in_path_ffi_js(obj: JsValue, x: JsValue, y: JsValue, fill_rule: JsValue) -> JsValue = "(obj, x, y, fill_rule) => obj.isPointInPath(x, y, fill_rule)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_is_point_in_path_ffi(obj: JsValue, x: JsValue, y: JsValue, fill_rule: JsValue) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_path_ffi_js(obj, x, y, fill_rule).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_is_point_in_path_with_path_ffi_js(obj: JsValue, path: JsValue, x: JsValue, y: JsValue, fill_rule: JsValue) -> JsValue = "(obj, path, x, y, fill_rule) => obj.isPointInPath(path, x, y, fill_rule)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_is_point_in_path_with_path_ffi(obj: JsValue, path: JsValue, x: JsValue, y: JsValue, fill_rule: JsValue) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_path_with_path_ffi_js(obj, path, x, y, fill_rule).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_is_point_in_stroke_ffi_js(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.isPointInStroke(x, y)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_is_point_in_stroke_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_stroke_ffi_js(obj, x, y).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_is_point_in_stroke_with_path_ffi_js(obj: JsValue, path: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, path, x, y) => obj.isPointInStroke(path, x, y)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_is_point_in_stroke_with_path_ffi(obj: JsValue, path: JsValue, x: JsValue, y: JsValue) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_stroke_with_path_ffi_js(obj, path, x, y).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_fill_text_ffi(obj: JsValue, text: JsValue, x: JsValue, y: JsValue, max_width: JsValue) -> Unit = "(obj, text, x, y, max_width) => obj.fillText(text, x, y, max_width)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_stroke_text_ffi(obj: JsValue, text: JsValue, x: JsValue, y: JsValue, max_width: JsValue) -> Unit = "(obj, text, x, y, max_width) => obj.strokeText(text, x, y, max_width)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_measure_text_ffi_js(obj: JsValue, text: JsValue) -> JsValue = "(obj, text) => obj.measureText(text)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_measure_text_ffi(obj: JsValue, text: JsValue) -> TextMetrics {
  offscreen_canvas_rendering_context2d_measure_text_ffi_js(obj, text).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_draw_image_ffi(obj: JsValue, image: JsValue, dx: JsValue, dy: JsValue) -> Unit = "(obj, image, dx, dy) => obj.drawImage(image, dx, dy)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_draw_image_scaled_ffi(obj: JsValue, image: JsValue, dx: JsValue, dy: JsValue, dw: JsValue, dh: JsValue) -> Unit = "(obj, image, dx, dy, dw, dh) => obj.drawImage(image, dx, dy, dw, dh)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_draw_image_cropped_ffi(obj: JsValue, image: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, dx: JsValue, dy: JsValue, dw: JsValue, dh: JsValue) -> Unit = "(obj, image, sx, sy, sw, sh, dx, dy, dw, dh) => obj.drawImage(image, sx, sy, sw, sh, dx, dy, dw, dh)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_create_image_data_ffi_js(obj: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> JsValue = "(obj, sw, sh, settings) => obj.createImageData(sw, sh, settings)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_create_image_data_ffi(obj: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> ImageData {
  offscreen_canvas_rendering_context2d_create_image_data_ffi_js(obj, sw, sh, settings).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_create_image_data_from_ffi_js(obj: JsValue, image_data: JsValue) -> JsValue = "(obj, image_data) => obj.createImageData(image_data)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_create_image_data_from_ffi(obj: JsValue, image_data: JsValue) -> ImageData {
  offscreen_canvas_rendering_context2d_create_image_data_from_ffi_js(obj, image_data).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_get_image_data_ffi_js(obj: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> JsValue = "(obj, sx, sy, sw, sh, settings) => obj.getImageData(sx, sy, sw, sh, settings)"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_get_image_data_ffi(obj: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> ImageData {
  offscreen_canvas_rendering_context2d_get_image_data_ffi_js(obj, sx, sy, sw, sh, settings).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_put_image_data_ffi(obj: JsValue, image_data: JsValue, dx: JsValue, dy: JsValue) -> Unit = "(obj, image_data, dx, dy) => obj.putImageData(image_data, dx, dy)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_put_image_data_dirty_rect_ffi(obj: JsValue, image_data: JsValue, dx: JsValue, dy: JsValue, dirty_x: JsValue, dirty_y: JsValue, dirty_width: JsValue, dirty_height: JsValue) -> Unit = "(obj, image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height) => obj.putImageData(image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_line_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lineWidth"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_line_width_ffi(obj: JsValue) -> Double {
  offscreen_canvas_rendering_context2d_line_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_line_width_ffi(obj: JsValue, line_width: JsValue) -> Unit = "(obj, lineWidth) => { obj.lineWidth = lineWidth; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_line_cap_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lineCap"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_line_cap_ffi(obj: JsValue) -> CanvasLineCap {
  CanvasLineCap::from_unchecked(offscreen_canvas_rendering_context2d_line_cap_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_line_cap_ffi(obj: JsValue, line_cap: JsValue) -> Unit = "(obj, lineCap) => { obj.lineCap = lineCap; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_line_join_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lineJoin"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_line_join_ffi(obj: JsValue) -> CanvasLineJoin {
  CanvasLineJoin::from_unchecked(offscreen_canvas_rendering_context2d_line_join_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_line_join_ffi(obj: JsValue, line_join: JsValue) -> Unit = "(obj, lineJoin) => { obj.lineJoin = lineJoin; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_miter_limit_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.miterLimit"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_miter_limit_ffi(obj: JsValue) -> Double {
  offscreen_canvas_rendering_context2d_miter_limit_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_miter_limit_ffi(obj: JsValue, miter_limit: JsValue) -> Unit = "(obj, miterLimit) => { obj.miterLimit = miterLimit; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_line_dash_ffi(obj: JsValue, segments: JsValue) -> Unit = "(obj, segments) => obj.setLineDash(segments)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_get_line_dash_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getLineDash()"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_get_line_dash_ffi(obj: JsValue) -> Array[Double] {
  offscreen_canvas_rendering_context2d_get_line_dash_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_line_dash_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lineDashOffset"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_line_dash_offset_ffi(obj: JsValue) -> Double {
  offscreen_canvas_rendering_context2d_line_dash_offset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_line_dash_offset_ffi(obj: JsValue, line_dash_offset: JsValue) -> Unit = "(obj, lineDashOffset) => { obj.lineDashOffset = lineDashOffset; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_lang_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lang"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_lang_ffi(obj: JsValue) -> String {
  offscreen_canvas_rendering_context2d_lang_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_lang_ffi(obj: JsValue, lang: JsValue) -> Unit = "(obj, lang) => { obj.lang = lang; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_font_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.font"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_font_ffi(obj: JsValue) -> String {
  offscreen_canvas_rendering_context2d_font_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_font_ffi(obj: JsValue, font: JsValue) -> Unit = "(obj, font) => { obj.font = font; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_text_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.textAlign"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_text_align_ffi(obj: JsValue) -> CanvasTextAlign {
  CanvasTextAlign::from_unchecked(offscreen_canvas_rendering_context2d_text_align_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_text_align_ffi(obj: JsValue, text_align: JsValue) -> Unit = "(obj, textAlign) => { obj.textAlign = textAlign; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_text_baseline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.textBaseline"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_text_baseline_ffi(obj: JsValue) -> CanvasTextBaseline {
  CanvasTextBaseline::from_unchecked(offscreen_canvas_rendering_context2d_text_baseline_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_text_baseline_ffi(obj: JsValue, text_baseline: JsValue) -> Unit = "(obj, textBaseline) => { obj.textBaseline = textBaseline; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.direction"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_direction_ffi(obj: JsValue) -> CanvasDirection {
  CanvasDirection::from_unchecked(offscreen_canvas_rendering_context2d_direction_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_direction_ffi(obj: JsValue, direction: JsValue) -> Unit = "(obj, direction) => { obj.direction = direction; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_letter_spacing_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.letterSpacing"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_letter_spacing_ffi(obj: JsValue) -> String {
  offscreen_canvas_rendering_context2d_letter_spacing_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_letter_spacing_ffi(obj: JsValue, letter_spacing: JsValue) -> Unit = "(obj, letterSpacing) => { obj.letterSpacing = letterSpacing; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_font_kerning_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fontKerning"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_font_kerning_ffi(obj: JsValue) -> CanvasFontKerning {
  CanvasFontKerning::from_unchecked(offscreen_canvas_rendering_context2d_font_kerning_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_font_kerning_ffi(obj: JsValue, font_kerning: JsValue) -> Unit = "(obj, fontKerning) => { obj.fontKerning = fontKerning; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_font_stretch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fontStretch"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_font_stretch_ffi(obj: JsValue) -> CanvasFontStretch {
  CanvasFontStretch::from_unchecked(offscreen_canvas_rendering_context2d_font_stretch_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_font_stretch_ffi(obj: JsValue, font_stretch: JsValue) -> Unit = "(obj, fontStretch) => { obj.fontStretch = fontStretch; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_font_variant_caps_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fontVariantCaps"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_font_variant_caps_ffi(obj: JsValue) -> CanvasFontVariantCaps {
  CanvasFontVariantCaps::from_unchecked(offscreen_canvas_rendering_context2d_font_variant_caps_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_font_variant_caps_ffi(obj: JsValue, font_variant_caps: JsValue) -> Unit = "(obj, fontVariantCaps) => { obj.fontVariantCaps = fontVariantCaps; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_text_rendering_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.textRendering"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_text_rendering_ffi(obj: JsValue) -> CanvasTextRendering {
  CanvasTextRendering::from_unchecked(offscreen_canvas_rendering_context2d_text_rendering_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_text_rendering_ffi(obj: JsValue, text_rendering: JsValue) -> Unit = "(obj, textRendering) => { obj.textRendering = textRendering; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_word_spacing_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.wordSpacing"

///|
#cfg(target="js")
fn offscreen_canvas_rendering_context2d_word_spacing_ffi(obj: JsValue) -> String {
  offscreen_canvas_rendering_context2d_word_spacing_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_set_word_spacing_ffi(obj: JsValue, word_spacing: JsValue) -> Unit = "(obj, wordSpacing) => { obj.wordSpacing = wordSpacing; }"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_close_path_ffi(obj: JsValue) -> Unit = "(obj) => obj.closePath()"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_move_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.moveTo(x, y)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_line_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.lineTo(x, y)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_quadratic_curve_to_ffi(obj: JsValue, cpx: JsValue, cpy: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, cpx, cpy, x, y) => obj.quadraticCurveTo(cpx, cpy, x, y)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_bezier_curve_to_ffi(obj: JsValue, cp1x: JsValue, cp1y: JsValue, cp2x: JsValue, cp2y: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, cp1x, cp1y, cp2x, cp2y, x, y) => obj.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_arc_to_ffi(obj: JsValue, x1: JsValue, y1: JsValue, x2: JsValue, y2: JsValue, radius: JsValue) -> Unit = "(obj, x1, y1, x2, y2, radius) => obj.arcTo(x1, y1, x2, y2, radius)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.rect(x, y, w, h)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_round_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue, radii: JsValue) -> Unit = "(obj, x, y, w, h, radii) => obj.roundRect(x, y, w, h, radii)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_arc_ffi(obj: JsValue, x: JsValue, y: JsValue, radius: JsValue, start_angle: JsValue, end_angle: JsValue, counterclockwise: JsValue) -> Unit = "(obj, x, y, radius, start_angle, end_angle, counterclockwise) => obj.arc(x, y, radius, start_angle, end_angle, counterclockwise)"

#cfg(target="js")
extern "js" fn offscreen_canvas_rendering_context2d_ellipse_ffi(obj: JsValue, x: JsValue, y: JsValue, radius_x: JsValue, radius_y: JsValue, rotation: JsValue, start_angle: JsValue, end_angle: JsValue, counterclockwise: JsValue) -> Unit = "(obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => obj.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_canvas_ffi(obj: JsValue) -> OffscreenCanvas = "webapi_OffscreenCanvasRenderingContext2D" "get_canvas"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_get_context_attributes_ffi(obj: JsValue) -> CanvasRenderingContext2DSettings = "webapi_OffscreenCanvasRenderingContext2D" "getContextAttributes"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_save_ffi(obj: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "save"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_restore_ffi(obj: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "restore"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_reset_ffi(obj: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "reset"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_is_context_lost_ffi(obj: JsValue) -> Bool = "webapi_OffscreenCanvasRenderingContext2D" "isContextLost"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_scale_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "scale"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_rotate_ffi(obj: JsValue, angle: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "rotate"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_translate_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "translate"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_transform_ffi(obj: JsValue, a: JsValue, b: JsValue, c: JsValue, d: JsValue, e: JsValue, f: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "transform"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_get_transform_ffi(obj: JsValue) -> DOMMatrix = "webapi_OffscreenCanvasRenderingContext2D" "getTransform"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_transform_ffi(obj: JsValue, a: JsValue, b: JsValue, c: JsValue, d: JsValue, e: JsValue, f: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "setTransform"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_transform_matrix_ffi(obj: JsValue, transform: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_transform_matrix"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_reset_transform_ffi(obj: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "resetTransform"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_global_alpha_ffi(obj: JsValue) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "get_globalAlpha"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_global_alpha_ffi(obj: JsValue, global_alpha: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_globalAlpha"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_global_composite_operation_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_globalCompositeOperation"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_global_composite_operation_ffi(obj: JsValue) -> String {
  jsvalue_to_string(offscreen_canvas_rendering_context2d_global_composite_operation_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_global_composite_operation_ffi(obj: JsValue, global_composite_operation: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_globalCompositeOperation"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_image_smoothing_enabled_ffi(obj: JsValue) -> Bool = "webapi_OffscreenCanvasRenderingContext2D" "get_imageSmoothingEnabled"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_image_smoothing_enabled_ffi(obj: JsValue, image_smoothing_enabled: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_imageSmoothingEnabled"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_imageSmoothingQuality"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi(obj: JsValue) -> ImageSmoothingQuality {
  ImageSmoothingQuality::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_image_smoothing_quality_ffi(obj: JsValue, image_smoothing_quality: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_imageSmoothingQuality"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_stroke_style_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_strokeStyle"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_stroke_style_ffi(obj: JsValue) -> OffscreenCanvasRenderingContext2DStrokeStyle {
  offscreen_canvas_rendering_context2d_stroke_style_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_stroke_style_ffi(obj: JsValue, stroke_style: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_strokeStyle"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_fill_style_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_fillStyle"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_fill_style_ffi(obj: JsValue) -> OffscreenCanvasRenderingContext2DFillStyle {
  offscreen_canvas_rendering_context2d_fill_style_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_fill_style_ffi(obj: JsValue, fill_style: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_fillStyle"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_create_linear_gradient_ffi(obj: JsValue, x0: JsValue, y0: JsValue, x1: JsValue, y1: JsValue) -> CanvasGradient = "webapi_OffscreenCanvasRenderingContext2D" "createLinearGradient"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_create_radial_gradient_ffi(obj: JsValue, x0: JsValue, y0: JsValue, r0: JsValue, x1: JsValue, y1: JsValue, r1: JsValue) -> CanvasGradient = "webapi_OffscreenCanvasRenderingContext2D" "createRadialGradient"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_create_conic_gradient_ffi(obj: JsValue, start_angle: JsValue, x: JsValue, y: JsValue) -> CanvasGradient = "webapi_OffscreenCanvasRenderingContext2D" "createConicGradient"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_create_pattern_ffi(obj: JsValue, image: JsValue, repetition: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "createPattern"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_shadow_offset_x_ffi(obj: JsValue) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "get_shadowOffsetX"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_shadow_offset_x_ffi(obj: JsValue, shadow_offset_x: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_shadowOffsetX"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_shadow_offset_y_ffi(obj: JsValue) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "get_shadowOffsetY"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_shadow_offset_y_ffi(obj: JsValue, shadow_offset_y: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_shadowOffsetY"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_shadow_blur_ffi(obj: JsValue) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "get_shadowBlur"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_shadow_blur_ffi(obj: JsValue, shadow_blur: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_shadowBlur"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_shadow_color_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_shadowColor"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_shadow_color_ffi(obj: JsValue) -> String {
  jsvalue_to_string(offscreen_canvas_rendering_context2d_shadow_color_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_shadow_color_ffi(obj: JsValue, shadow_color: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_shadowColor"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_filter_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_filter"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_filter_ffi(obj: JsValue) -> String {
  jsvalue_to_string(offscreen_canvas_rendering_context2d_filter_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_filter_ffi(obj: JsValue, filter: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_filter"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_clear_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "clearRect"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_fill_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "fillRect"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_stroke_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "strokeRect"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_begin_path_ffi(obj: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "beginPath"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_fill_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "fill"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_fill_path_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "fill_path"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_stroke_ffi(obj: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "stroke"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_stroke_path_ffi(obj: JsValue, path: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "stroke_path"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_clip_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "clip"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_clip_path_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "clip_path"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_is_point_in_path_ffi(obj: JsValue, x: JsValue, y: JsValue, fill_rule: JsValue) -> Bool = "webapi_OffscreenCanvasRenderingContext2D" "isPointInPath"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_is_point_in_path_with_path_ffi(obj: JsValue, path: JsValue, x: JsValue, y: JsValue, fill_rule: JsValue) -> Bool = "webapi_OffscreenCanvasRenderingContext2D" "is_point_in_path_with_path"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_is_point_in_stroke_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Bool = "webapi_OffscreenCanvasRenderingContext2D" "isPointInStroke"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_is_point_in_stroke_with_path_ffi(obj: JsValue, path: JsValue, x: JsValue, y: JsValue) -> Bool = "webapi_OffscreenCanvasRenderingContext2D" "is_point_in_stroke_with_path"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_fill_text_ffi(obj: JsValue, text: JsValue, x: JsValue, y: JsValue, max_width: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "fillText"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_stroke_text_ffi(obj: JsValue, text: JsValue, x: JsValue, y: JsValue, max_width: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "strokeText"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_measure_text_ffi(obj: JsValue, text: JsValue) -> TextMetrics = "webapi_OffscreenCanvasRenderingContext2D" "measureText"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_draw_image_ffi(obj: JsValue, image: JsValue, dx: JsValue, dy: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "drawImage"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_draw_image_scaled_ffi(obj: JsValue, image: JsValue, dx: JsValue, dy: JsValue, dw: JsValue, dh: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "draw_image_scaled"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_draw_image_cropped_ffi(obj: JsValue, image: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, dx: JsValue, dy: JsValue, dw: JsValue, dh: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "draw_image_cropped"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_create_image_data_ffi(obj: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> ImageData = "webapi_OffscreenCanvasRenderingContext2D" "createImageData"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_create_image_data_from_ffi(obj: JsValue, image_data: JsValue) -> ImageData = "webapi_OffscreenCanvasRenderingContext2D" "create_image_data_from"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_get_image_data_ffi(obj: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> ImageData = "webapi_OffscreenCanvasRenderingContext2D" "getImageData"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_put_image_data_ffi(obj: JsValue, image_data: JsValue, dx: JsValue, dy: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "putImageData"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_put_image_data_dirty_rect_ffi(obj: JsValue, image_data: JsValue, dx: JsValue, dy: JsValue, dirty_x: JsValue, dirty_y: JsValue, dirty_width: JsValue, dirty_height: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "put_image_data_dirty_rect"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_line_width_ffi(obj: JsValue) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "get_lineWidth"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_line_width_ffi(obj: JsValue, line_width: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lineWidth"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_line_cap_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_lineCap"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_line_cap_ffi(obj: JsValue) -> CanvasLineCap {
  CanvasLineCap::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_line_cap_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_line_cap_ffi(obj: JsValue, line_cap: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lineCap"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_line_join_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_lineJoin"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_line_join_ffi(obj: JsValue) -> CanvasLineJoin {
  CanvasLineJoin::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_line_join_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_line_join_ffi(obj: JsValue, line_join: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lineJoin"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_miter_limit_ffi(obj: JsValue) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "get_miterLimit"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_miter_limit_ffi(obj: JsValue, miter_limit: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_miterLimit"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_line_dash_ffi(obj: JsValue, segments: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "setLineDash"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_get_line_dash_ffi_wasm(obj: JsValue) -> JsArray = "webapi_OffscreenCanvasRenderingContext2D" "getLineDash"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_get_line_dash_ffi(obj: JsValue) -> Array[Double] {
  offscreen_canvas_rendering_context2d_get_line_dash_ffi_wasm(obj).to_value_array()
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_line_dash_offset_ffi(obj: JsValue) -> Double = "webapi_OffscreenCanvasRenderingContext2D" "get_lineDashOffset"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_line_dash_offset_ffi(obj: JsValue, line_dash_offset: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lineDashOffset"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_lang_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_lang"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_lang_ffi(obj: JsValue) -> String {
  jsvalue_to_string(offscreen_canvas_rendering_context2d_lang_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_lang_ffi(obj: JsValue, lang: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_lang"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_font_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_font"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_font_ffi(obj: JsValue) -> String {
  jsvalue_to_string(offscreen_canvas_rendering_context2d_font_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_font_ffi(obj: JsValue, font: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_font"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_text_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_textAlign"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_text_align_ffi(obj: JsValue) -> CanvasTextAlign {
  CanvasTextAlign::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_text_align_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_text_align_ffi(obj: JsValue, text_align: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_textAlign"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_text_baseline_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_textBaseline"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_text_baseline_ffi(obj: JsValue) -> CanvasTextBaseline {
  CanvasTextBaseline::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_text_baseline_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_text_baseline_ffi(obj: JsValue, text_baseline: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_textBaseline"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_direction_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_direction"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_direction_ffi(obj: JsValue) -> CanvasDirection {
  CanvasDirection::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_direction_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_direction_ffi(obj: JsValue, direction: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_direction"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_letter_spacing_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_letterSpacing"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_letter_spacing_ffi(obj: JsValue) -> String {
  jsvalue_to_string(offscreen_canvas_rendering_context2d_letter_spacing_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_letter_spacing_ffi(obj: JsValue, letter_spacing: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_letterSpacing"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_font_kerning_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_fontKerning"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_font_kerning_ffi(obj: JsValue) -> CanvasFontKerning {
  CanvasFontKerning::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_font_kerning_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_font_kerning_ffi(obj: JsValue, font_kerning: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_fontKerning"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_font_stretch_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_fontStretch"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_font_stretch_ffi(obj: JsValue) -> CanvasFontStretch {
  CanvasFontStretch::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_font_stretch_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_font_stretch_ffi(obj: JsValue, font_stretch: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_fontStretch"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_font_variant_caps_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_fontVariantCaps"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_font_variant_caps_ffi(obj: JsValue) -> CanvasFontVariantCaps {
  CanvasFontVariantCaps::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_font_variant_caps_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_font_variant_caps_ffi(obj: JsValue, font_variant_caps: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_fontVariantCaps"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_text_rendering_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_textRendering"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_text_rendering_ffi(obj: JsValue) -> CanvasTextRendering {
  CanvasTextRendering::from_unchecked(jsvalue_to_string(offscreen_canvas_rendering_context2d_text_rendering_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_text_rendering_ffi(obj: JsValue, text_rendering: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_textRendering"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_word_spacing_ffi_wasm(obj: JsValue) -> JsValue = "webapi_OffscreenCanvasRenderingContext2D" "get_wordSpacing"

///|
#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_word_spacing_ffi(obj: JsValue) -> String {
  jsvalue_to_string(offscreen_canvas_rendering_context2d_word_spacing_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_set_word_spacing_ffi(obj: JsValue, word_spacing: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "set_wordSpacing"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_close_path_ffi(obj: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "closePath"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_move_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "moveTo"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_line_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "lineTo"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_quadratic_curve_to_ffi(obj: JsValue, cpx: JsValue, cpy: JsValue, x: JsValue, y: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "quadraticCurveTo"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_bezier_curve_to_ffi(obj: JsValue, cp1x: JsValue, cp1y: JsValue, cp2x: JsValue, cp2y: JsValue, x: JsValue, y: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "bezierCurveTo"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_arc_to_ffi(obj: JsValue, x1: JsValue, y1: JsValue, x2: JsValue, y2: JsValue, radius: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "arcTo"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "rect"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_round_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue, radii: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "roundRect"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_arc_ffi(obj: JsValue, x: JsValue, y: JsValue, radius: JsValue, start_angle: JsValue, end_angle: JsValue, counterclockwise: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "arc"

#cfg(target="wasm-gc")
fn offscreen_canvas_rendering_context2d_ellipse_ffi(obj: JsValue, x: JsValue, y: JsValue, radius_x: JsValue, radius_y: JsValue, rotation: JsValue, start_angle: JsValue, end_angle: JsValue, counterclockwise: JsValue) -> Unit = "webapi_OffscreenCanvasRenderingContext2D" "ellipse"