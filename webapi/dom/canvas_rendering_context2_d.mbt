// Auto-generated MoonBit bindings for CanvasRenderingContext2D

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface CanvasRenderingContext2D {
//   // back-reference to the canvas
//   readonly attribute HTMLCanvasElement canvas;
// };
// 
// interface mixin CanvasSettings {
//   // settings
//   CanvasRenderingContext2DSettings getContextAttributes();
// };
// 
// interface mixin CanvasState {
//   // state
//   undefined save(); // push state on state stack
//   undefined restore(); // pop state stack and restore state
//   undefined reset(); // reset the rendering context to its default state
//   boolean isContextLost(); // return whether context is lost
// };
// 
// interface mixin CanvasTransform {
//   // transformations (default transform is the identity matrix)
//   undefined scale(unrestricted double x, unrestricted double y);
//   undefined rotate(unrestricted double angle);
//   undefined translate(unrestricted double x, unrestricted double y);
//   undefined transform(unrestricted double a, unrestricted double b, unrestricted double c, unrestricted double d, unrestricted double e, unrestricted double f);
// 
//   [NewObject] DOMMatrix getTransform();
//   undefined setTransform(unrestricted double a, unrestricted double b, unrestricted double c, unrestricted double d, unrestricted double e, unrestricted double f);
//   undefined setTransform(optional DOMMatrix2DInit transform = {});
//   undefined resetTransform();
// 
// };
// 
// interface mixin CanvasCompositing {
//   // compositing
//   attribute unrestricted double globalAlpha; // (default 1.0)
//   attribute DOMString globalCompositeOperation; // (default "source-over")
// };
// 
// interface mixin CanvasImageSmoothing {
//   // image smoothing
//   attribute boolean imageSmoothingEnabled; // (default true)
//   attribute ImageSmoothingQuality imageSmoothingQuality; // (default low)
// 
// };
// 
// interface mixin CanvasFillStrokeStyles {
//   // colors and styles (see also the CanvasPathDrawingStyles and CanvasTextDrawingStyles interfaces)
//   attribute (DOMString or CanvasGradient or CanvasPattern) strokeStyle; // (default black)
//   attribute (DOMString or CanvasGradient or CanvasPattern) fillStyle; // (default black)
//   CanvasGradient createLinearGradient(double x0, double y0, double x1, double y1);
//   CanvasGradient createRadialGradient(double x0, double y0, double r0, double x1, double y1, double r1);
//   CanvasGradient createConicGradient(double startAngle, double x, double y);
//   CanvasPattern? createPattern(CanvasImageSource image, [LegacyNullToEmptyString] DOMString repetition);
// 
// };
// 
// interface mixin CanvasShadowStyles {
//   // shadows
//   attribute unrestricted double shadowOffsetX; // (default 0)
//   attribute unrestricted double shadowOffsetY; // (default 0)
//   attribute unrestricted double shadowBlur; // (default 0)
//   attribute DOMString shadowColor; // (default transparent black)
// };
// 
// interface mixin CanvasFilters {
//   // filters
//   attribute DOMString filter; // (default "none")
// };
// 
// interface mixin CanvasRect {
//   // rects
//   undefined clearRect(unrestricted double x, unrestricted double y, unrestricted double w, unrestricted double h);
//   undefined fillRect(unrestricted double x, unrestricted double y, unrestricted double w, unrestricted double h);
//   undefined strokeRect(unrestricted double x, unrestricted double y, unrestricted double w, unrestricted double h);
// };
// 
// interface mixin CanvasDrawPath {
//   // path API (see also CanvasPath)
//   undefined beginPath();
//   undefined fill(optional CanvasFillRule fillRule = "nonzero");
//   undefined fill(Path2D path, optional CanvasFillRule fillRule = "nonzero");
//   undefined stroke();
//   undefined stroke(Path2D path);
//   undefined clip(optional CanvasFillRule fillRule = "nonzero");
//   undefined clip(Path2D path, optional CanvasFillRule fillRule = "nonzero");
//   boolean isPointInPath(unrestricted double x, unrestricted double y, optional CanvasFillRule fillRule = "nonzero");
//   boolean isPointInPath(Path2D path, unrestricted double x, unrestricted double y, optional CanvasFillRule fillRule = "nonzero");
//   boolean isPointInStroke(unrestricted double x, unrestricted double y);
//   boolean isPointInStroke(Path2D path, unrestricted double x, unrestricted double y);
// };
// 
// interface mixin CanvasUserInterface {
//   undefined drawFocusIfNeeded(Element element);
//   undefined drawFocusIfNeeded(Path2D path, Element element);
// };
// 
// interface mixin CanvasText {
//   // text (see also the CanvasPathDrawingStyles and CanvasTextDrawingStyles interfaces)
//   undefined fillText(DOMString text, unrestricted double x, unrestricted double y, optional unrestricted double maxWidth);
//   undefined strokeText(DOMString text, unrestricted double x, unrestricted double y, optional unrestricted double maxWidth);
//   TextMetrics measureText(DOMString text);
// };
// 
// interface mixin CanvasDrawImage {
//   // drawing images
//   undefined drawImage(CanvasImageSource image, unrestricted double dx, unrestricted double dy);
//   undefined drawImage(CanvasImageSource image, unrestricted double dx, unrestricted double dy, unrestricted double dw, unrestricted double dh);
//   undefined drawImage(CanvasImageSource image, unrestricted double sx, unrestricted double sy, unrestricted double sw, unrestricted double sh, unrestricted double dx, unrestricted double dy, unrestricted double dw, unrestricted double dh);
// };
// 
// interface mixin CanvasImageData {
//   // pixel manipulation
//   ImageData createImageData([EnforceRange] long sw, [EnforceRange] long sh, optional ImageDataSettings settings = {});
//   ImageData createImageData(ImageData imageData);
//   ImageData getImageData([EnforceRange] long sx, [EnforceRange] long sy, [EnforceRange] long sw, [EnforceRange] long sh, optional ImageDataSettings settings = {});
//   undefined putImageData(ImageData imageData, [EnforceRange] long dx, [EnforceRange] long dy);
//   undefined putImageData(ImageData imageData, [EnforceRange] long dx, [EnforceRange] long dy, [EnforceRange] long dirtyX, [EnforceRange] long dirtyY, [EnforceRange] long dirtyWidth, [EnforceRange] long dirtyHeight);
// };
// 
// interface mixin CanvasPathDrawingStyles {
//   // line caps/joins
//   attribute unrestricted double lineWidth; // (default 1)
//   attribute CanvasLineCap lineCap; // (default "butt")
//   attribute CanvasLineJoin lineJoin; // (default "miter")
//   attribute unrestricted double miterLimit; // (default 10)
// 
//   // dashed lines
//   undefined setLineDash(sequence<unrestricted double> segments); // default empty
//   sequence<unrestricted double> getLineDash();
//   attribute unrestricted double lineDashOffset;
// };
// 
// interface mixin CanvasTextDrawingStyles {
//   // text
//   attribute DOMString lang; // (default: "inherit")
//   attribute DOMString font; // (default 10px sans-serif)
//   attribute CanvasTextAlign textAlign; // (default: "start")
//   attribute CanvasTextBaseline textBaseline; // (default: "alphabetic")
//   attribute CanvasDirection direction; // (default: "inherit")
//   attribute DOMString letterSpacing; // (default: "0px")
//   attribute CanvasFontKerning fontKerning; // (default: "auto")
//   attribute CanvasFontStretch fontStretch; // (default: "normal")
//   attribute CanvasFontVariantCaps fontVariantCaps; // (default: "normal")
//   attribute CanvasTextRendering textRendering; // (default: "auto")
//   attribute DOMString wordSpacing; // (default: "0px")
// };
// 
// interface mixin CanvasPath {
//   // shared path API methods
//   undefined closePath();
//   undefined moveTo(unrestricted double x, unrestricted double y);
//   undefined lineTo(unrestricted double x, unrestricted double y);
//   undefined quadraticCurveTo(unrestricted double cpx, unrestricted double cpy, unrestricted double x, unrestricted double y);
//   undefined bezierCurveTo(unrestricted double cp1x, unrestricted double cp1y, unrestricted double cp2x, unrestricted double cp2y, unrestricted double x, unrestricted double y);
//   undefined arcTo(unrestricted double x1, unrestricted double y1, unrestricted double x2, unrestricted double y2, unrestricted double radius);
//   undefined rect(unrestricted double x, unrestricted double y, unrestricted double w, unrestricted double h);
//   undefined roundRect(unrestricted double x, unrestricted double y, unrestricted double w, unrestricted double h, optional (unrestricted double or DOMPointInit or sequence<(unrestricted double or DOMPointInit)>) radii = 0);
//   undefined arc(unrestricted double x, unrestricted double y, unrestricted double radius, unrestricted double startAngle, unrestricted double endAngle, optional boolean counterclockwise = false);
//   undefined ellipse(unrestricted double x, unrestricted double y, unrestricted double radiusX, unrestricted double radiusY, unrestricted double rotation, unrestricted double startAngle, unrestricted double endAngle, optional boolean counterclockwise = false);
// };

///|
#external
pub type CanvasRenderingContext2D

///|
pub trait TCanvasRenderingContext2D: TJsValue {
  canvas(self : Self) -> HTMLCanvasElement = _
  global_alpha(self : Self) -> Double = _
  set_global_alpha(self : Self, value : Double) -> Unit = _
  global_composite_operation(self : Self) -> String = _
  set_global_composite_operation(self : Self, value : String) -> Unit = _
  image_smoothing_enabled(self : Self) -> Bool = _
  set_image_smoothing_enabled(self : Self, value : Bool) -> Unit = _
  image_smoothing_quality(self : Self) -> ImageSmoothingQuality = _
  set_image_smoothing_quality(self : Self, value : ImageSmoothingQuality) -> Unit = _
  stroke_style(self : Self) -> JsValue = _
  set_stroke_style(self : Self, value : JsValue) -> Unit = _
  fill_style(self : Self) -> JsValue = _
  set_fill_style(self : Self, value : JsValue) -> Unit = _
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
  ) -> JsValue = _
  create_radial_gradient(
    self : Self,
    x0 : Double,
    y0 : Double,
    r0 : Double,
    x1 : Double,
    y1 : Double,
    r1 : Double,
  ) -> JsValue = _
  create_conic_gradient(
    self : Self,
    start_angle : Double,
    x : Double,
    y : Double,
  ) -> JsValue = _
  create_pattern(self : Self, image : JsValue, repetition : String) -> JsValue? = _
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
  draw_focus_if_needed(self : Self, element : Element) -> Unit = _
  draw_focus_if_needed2(self : Self, path : JsValue, element : Element) -> Unit = _
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
  draw_image(self : Self, image : JsValue, dx : Double, dy : Double) -> Unit = _
  draw_image2(
    self : Self,
    image : JsValue,
    dx : Double,
    dy : Double,
    dw : Double,
    dh : Double,
  ) -> Unit = _
  draw_image3(
    self : Self,
    image : JsValue,
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
  ) -> JsValue = _
  create_image_data2(self : Self, image_data : JsValue) -> JsValue = _
  get_image_data(
    self : Self,
    sx : Int,
    sy : Int,
    sw : Int,
    sh : Int,
    settings? : ImageDataSettings,
  ) -> JsValue = _
  put_image_data(self : Self, image_data : JsValue, dx : Int, dy : Int) -> Unit = _
  put_image_data2(
    self : Self,
    image_data : JsValue,
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
pub impl TCanvasRenderingContext2D for CanvasRenderingContext2D

///|
pub impl TJsValue for CanvasRenderingContext2D with to_js(
  self : CanvasRenderingContext2D,
) -> JsValue = "%identity"

///|
pub fn CanvasRenderingContext2D::null() -> CanvasRenderingContext2D = "JsValue" "null"

///|
pub fn CanvasRenderingContext2D::is_null(
  self : CanvasRenderingContext2D,
) -> Bool = "JsValue" "isNull"

///|
fn canvas_rendering_context2_d_get_context_attributes_ffi(
  obj : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "getContextAttributes"

///|
impl TCanvasRenderingContext2D with get_context_attributes(self : Self) -> CanvasRenderingContext2DSettings {
  canvas_rendering_context2_d_get_context_attributes_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_save_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "save"

///|
impl TCanvasRenderingContext2D with save(self : Self) -> Unit {
  canvas_rendering_context2_d_save_ffi(TJsValue::to_js(self))
}

///|
fn canvas_rendering_context2_d_restore_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "restore"

///|
impl TCanvasRenderingContext2D with restore(self : Self) -> Unit {
  canvas_rendering_context2_d_restore_ffi(TJsValue::to_js(self))
}

///|
fn canvas_rendering_context2_d_reset_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "reset"

///|
impl TCanvasRenderingContext2D with reset(self : Self) -> Unit {
  canvas_rendering_context2_d_reset_ffi(TJsValue::to_js(self))
}

///|
fn canvas_rendering_context2_d_is_context_lost_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "isContextLost"

///|
impl TCanvasRenderingContext2D with is_context_lost(self : Self) -> Bool {
  canvas_rendering_context2_d_is_context_lost_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_scale_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "scale"

///|
impl TCanvasRenderingContext2D with scale(self : Self, x : Double, y : Double) -> Unit {
  canvas_rendering_context2_d_scale_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn canvas_rendering_context2_d_rotate_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "rotate"

///|
impl TCanvasRenderingContext2D with rotate(self : Self, angle : Double) -> Unit {
  canvas_rendering_context2_d_rotate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(angle),
  )
}

///|
fn canvas_rendering_context2_d_translate_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "translate"

///|
impl TCanvasRenderingContext2D with translate(
  self : Self,
  x : Double,
  y : Double,
) -> Unit {
  canvas_rendering_context2_d_translate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn canvas_rendering_context2_d_transform_ffi(
  obj : JsValue,
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "transform"

///|
impl TCanvasRenderingContext2D with transform(
  self : Self,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit {
  canvas_rendering_context2_d_transform_ffi(
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
fn canvas_rendering_context2_d_get_transform_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "getTransform"

///|
impl TCanvasRenderingContext2D with get_transform(self : Self) -> JsValue {
  canvas_rendering_context2_d_get_transform_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_set_transform_ffi(
  obj : JsValue,
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "setTransform"

///|
impl TCanvasRenderingContext2D with set_transform(
  self : Self,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit {
  canvas_rendering_context2_d_set_transform_ffi(
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
fn canvas_rendering_context2_d_set_transform_ffi2(
  obj : JsValue,
  transform : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "setTransform"

///|
impl TCanvasRenderingContext2D with set_transform2(
  self : Self,
  transform? : DOMMatrix2DInit = DOMMatrix2DInit::empty(),
) -> Unit {
  canvas_rendering_context2_d_set_transform_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(transform),
  )
}

///|
fn canvas_rendering_context2_d_reset_transform_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "resetTransform"

///|
impl TCanvasRenderingContext2D with reset_transform(self : Self) -> Unit {
  canvas_rendering_context2_d_reset_transform_ffi(TJsValue::to_js(self))
}

///|
fn canvas_rendering_context2_d_create_linear_gradient_ffi(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "createLinearGradient"

///|
impl TCanvasRenderingContext2D with create_linear_gradient(
  self : Self,
  x0 : Double,
  y0 : Double,
  x1 : Double,
  y1 : Double,
) -> JsValue {
  canvas_rendering_context2_d_create_linear_gradient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x0),
    TJsValue::to_js(y0),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_create_radial_gradient_ffi(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  r0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  r1 : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "createRadialGradient"

///|
impl TCanvasRenderingContext2D with create_radial_gradient(
  self : Self,
  x0 : Double,
  y0 : Double,
  r0 : Double,
  x1 : Double,
  y1 : Double,
  r1 : Double,
) -> JsValue {
  canvas_rendering_context2_d_create_radial_gradient_ffi(
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
fn canvas_rendering_context2_d_create_conic_gradient_ffi(
  obj : JsValue,
  start_angle : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "createConicGradient"

///|
impl TCanvasRenderingContext2D with create_conic_gradient(
  self : Self,
  start_angle : Double,
  x : Double,
  y : Double,
) -> JsValue {
  canvas_rendering_context2_d_create_conic_gradient_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start_angle),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_create_pattern_ffi(
  obj : JsValue,
  image : JsValue,
  repetition : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "createPattern"

///|
impl TCanvasRenderingContext2D with create_pattern(
  self : Self,
  image : JsValue,
  repetition : String,
) -> JsValue? {
  canvas_rendering_context2_d_create_pattern_ffi(
    TJsValue::to_js(self),
    image,
    TJsValue::to_js(repetition),
  ).as_option()
}

///|
fn canvas_rendering_context2_d_clear_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "clearRect"

///|
impl TCanvasRenderingContext2D with clear_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  canvas_rendering_context2_d_clear_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
fn canvas_rendering_context2_d_fill_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "fillRect"

///|
impl TCanvasRenderingContext2D with fill_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  canvas_rendering_context2_d_fill_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
fn canvas_rendering_context2_d_stroke_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "strokeRect"

///|
impl TCanvasRenderingContext2D with stroke_rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  canvas_rendering_context2_d_stroke_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
fn canvas_rendering_context2_d_begin_path_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "beginPath"

///|
impl TCanvasRenderingContext2D with begin_path(self : Self) -> Unit {
  canvas_rendering_context2_d_begin_path_ffi(TJsValue::to_js(self))
}

///|
fn canvas_rendering_context2_d_fill_ffi(
  obj : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "fill"

///|
impl TCanvasRenderingContext2D with fill(
  self : Self,
  fill_rule? : CanvasFillRule,
) -> Unit {
  let fill_rule_js = opt_to_js(fill_rule)
  canvas_rendering_context2_d_fill_ffi(TJsValue::to_js(self), fill_rule_js)
}

///|
fn canvas_rendering_context2_d_fill_ffi2(
  obj : JsValue,
  path : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "fill"

///|
impl TCanvasRenderingContext2D with fill2(
  self : Self,
  path : JsValue,
  fill_rule? : CanvasFillRule,
) -> Unit {
  let fill_rule_js = opt_to_js(fill_rule)
  canvas_rendering_context2_d_fill_ffi2(
    TJsValue::to_js(self),
    path,
    fill_rule_js,
  )
}

///|
fn canvas_rendering_context2_d_stroke_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "stroke"

///|
impl TCanvasRenderingContext2D with stroke(self : Self) -> Unit {
  canvas_rendering_context2_d_stroke_ffi(TJsValue::to_js(self))
}

///|
fn canvas_rendering_context2_d_stroke_ffi2(
  obj : JsValue,
  path : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "stroke"

///|
impl TCanvasRenderingContext2D with stroke2(self : Self, path : JsValue) -> Unit {
  canvas_rendering_context2_d_stroke_ffi2(TJsValue::to_js(self), path)
}

///|
fn canvas_rendering_context2_d_clip_ffi(
  obj : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "clip"

///|
impl TCanvasRenderingContext2D with clip(
  self : Self,
  fill_rule? : CanvasFillRule,
) -> Unit {
  let fill_rule_js = opt_to_js(fill_rule)
  canvas_rendering_context2_d_clip_ffi(TJsValue::to_js(self), fill_rule_js)
}

///|
fn canvas_rendering_context2_d_clip_ffi2(
  obj : JsValue,
  path : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "clip"

///|
impl TCanvasRenderingContext2D with clip2(
  self : Self,
  path : JsValue,
  fill_rule? : CanvasFillRule,
) -> Unit {
  let fill_rule_js = opt_to_js(fill_rule)
  canvas_rendering_context2_d_clip_ffi2(
    TJsValue::to_js(self),
    path,
    fill_rule_js,
  )
}

///|
fn canvas_rendering_context2_d_is_point_in_path_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "isPointInPath"

///|
impl TCanvasRenderingContext2D with is_point_in_path(
  self : Self,
  x : Double,
  y : Double,
  fill_rule? : CanvasFillRule,
) -> Bool {
  let fill_rule_js = opt_to_js(fill_rule)
  canvas_rendering_context2_d_is_point_in_path_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    fill_rule_js,
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_is_point_in_path_ffi2(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "isPointInPath"

///|
impl TCanvasRenderingContext2D with is_point_in_path2(
  self : Self,
  path : JsValue,
  x : Double,
  y : Double,
  fill_rule? : CanvasFillRule,
) -> Bool {
  let fill_rule_js = opt_to_js(fill_rule)
  canvas_rendering_context2_d_is_point_in_path_ffi2(
    TJsValue::to_js(self),
    path,
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    fill_rule_js,
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_is_point_in_stroke_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "isPointInStroke"

///|
impl TCanvasRenderingContext2D with is_point_in_stroke(
  self : Self,
  x : Double,
  y : Double,
) -> Bool {
  canvas_rendering_context2_d_is_point_in_stroke_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_is_point_in_stroke_ffi2(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "isPointInStroke"

///|
impl TCanvasRenderingContext2D with is_point_in_stroke2(
  self : Self,
  path : JsValue,
  x : Double,
  y : Double,
) -> Bool {
  canvas_rendering_context2_d_is_point_in_stroke_ffi2(
    TJsValue::to_js(self),
    path,
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_draw_focus_if_needed_ffi(
  obj : JsValue,
  element : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "drawFocusIfNeeded"

///|
impl TCanvasRenderingContext2D with draw_focus_if_needed(
  self : Self,
  element : Element,
) -> Unit {
  canvas_rendering_context2_d_draw_focus_if_needed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(element),
  )
}

///|
fn canvas_rendering_context2_d_draw_focus_if_needed_ffi2(
  obj : JsValue,
  path : JsValue,
  element : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "drawFocusIfNeeded"

///|
impl TCanvasRenderingContext2D with draw_focus_if_needed2(
  self : Self,
  path : JsValue,
  element : Element,
) -> Unit {
  canvas_rendering_context2_d_draw_focus_if_needed_ffi2(
    TJsValue::to_js(self),
    path,
    TJsValue::to_js(element),
  )
}

///|
fn canvas_rendering_context2_d_fill_text_ffi(
  obj : JsValue,
  text : JsValue,
  x : JsValue,
  y : JsValue,
  max_width : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "fillText"

///|
impl TCanvasRenderingContext2D with fill_text(
  self : Self,
  text : String,
  x : Double,
  y : Double,
  max_width? : Double,
) -> Unit {
  let max_width_js = opt_to_js(max_width)
  canvas_rendering_context2_d_fill_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    max_width_js,
  )
}

///|
fn canvas_rendering_context2_d_stroke_text_ffi(
  obj : JsValue,
  text : JsValue,
  x : JsValue,
  y : JsValue,
  max_width : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "strokeText"

///|
impl TCanvasRenderingContext2D with stroke_text(
  self : Self,
  text : String,
  x : Double,
  y : Double,
  max_width? : Double,
) -> Unit {
  let max_width_js = opt_to_js(max_width)
  canvas_rendering_context2_d_stroke_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    max_width_js,
  )
}

///|
fn canvas_rendering_context2_d_measure_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "measureText"

///|
impl TCanvasRenderingContext2D with measure_text(self : Self, text : String) -> JsValue {
  canvas_rendering_context2_d_measure_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(text),
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_draw_image_ffi(
  obj : JsValue,
  image : JsValue,
  dx : JsValue,
  dy : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "drawImage"

///|
impl TCanvasRenderingContext2D with draw_image(
  self : Self,
  image : JsValue,
  dx : Double,
  dy : Double,
) -> Unit {
  canvas_rendering_context2_d_draw_image_ffi(
    TJsValue::to_js(self),
    image,
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
  )
}

///|
fn canvas_rendering_context2_d_draw_image_ffi2(
  obj : JsValue,
  image : JsValue,
  dx : JsValue,
  dy : JsValue,
  dw : JsValue,
  dh : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "drawImage"

///|
impl TCanvasRenderingContext2D with draw_image2(
  self : Self,
  image : JsValue,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit {
  canvas_rendering_context2_d_draw_image_ffi2(
    TJsValue::to_js(self),
    image,
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
    TJsValue::to_js(dw),
    TJsValue::to_js(dh),
  )
}

///|
fn canvas_rendering_context2_d_draw_image_ffi3(
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
) -> Unit = "webapi_CanvasRenderingContext2D" "drawImage"

///|
impl TCanvasRenderingContext2D with draw_image3(
  self : Self,
  image : JsValue,
  sx : Double,
  sy : Double,
  sw : Double,
  sh : Double,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit {
  canvas_rendering_context2_d_draw_image_ffi3(
    TJsValue::to_js(self),
    image,
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
fn canvas_rendering_context2_d_create_image_data_ffi(
  obj : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "createImageData"

///|
impl TCanvasRenderingContext2D with create_image_data(
  self : Self,
  sw : Int,
  sh : Int,
  settings? : ImageDataSettings = ImageDataSettings::empty(),
) -> JsValue {
  canvas_rendering_context2_d_create_image_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(settings),
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_create_image_data_ffi2(
  obj : JsValue,
  image_data : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "createImageData"

///|
impl TCanvasRenderingContext2D with create_image_data2(
  self : Self,
  image_data : JsValue,
) -> JsValue {
  canvas_rendering_context2_d_create_image_data_ffi2(
    TJsValue::to_js(self),
    image_data,
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_get_image_data_ffi(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "getImageData"

///|
impl TCanvasRenderingContext2D with get_image_data(
  self : Self,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  settings? : ImageDataSettings = ImageDataSettings::empty(),
) -> JsValue {
  canvas_rendering_context2_d_get_image_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(settings),
  ).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_put_image_data_ffi(
  obj : JsValue,
  image_data : JsValue,
  dx : JsValue,
  dy : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "putImageData"

///|
impl TCanvasRenderingContext2D with put_image_data(
  self : Self,
  image_data : JsValue,
  dx : Int,
  dy : Int,
) -> Unit {
  canvas_rendering_context2_d_put_image_data_ffi(
    TJsValue::to_js(self),
    image_data,
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
  )
}

///|
fn canvas_rendering_context2_d_put_image_data_ffi2(
  obj : JsValue,
  image_data : JsValue,
  dx : JsValue,
  dy : JsValue,
  dirty_x : JsValue,
  dirty_y : JsValue,
  dirty_width : JsValue,
  dirty_height : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "putImageData"

///|
impl TCanvasRenderingContext2D with put_image_data2(
  self : Self,
  image_data : JsValue,
  dx : Int,
  dy : Int,
  dirty_x : Int,
  dirty_y : Int,
  dirty_width : Int,
  dirty_height : Int,
) -> Unit {
  canvas_rendering_context2_d_put_image_data_ffi2(
    TJsValue::to_js(self),
    image_data,
    TJsValue::to_js(dx),
    TJsValue::to_js(dy),
    TJsValue::to_js(dirty_x),
    TJsValue::to_js(dirty_y),
    TJsValue::to_js(dirty_width),
    TJsValue::to_js(dirty_height),
  )
}

///|
fn canvas_rendering_context2_d_set_line_dash_ffi(
  obj : JsValue,
  segments : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "setLineDash"

///|
impl TCanvasRenderingContext2D with set_line_dash(
  self : Self,
  segments : Array[Double],
) -> Unit {
  canvas_rendering_context2_d_set_line_dash_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(segments),
  )
}

///|
fn canvas_rendering_context2_d_get_line_dash_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "getLineDash"

///|
impl TCanvasRenderingContext2D with get_line_dash(self : Self) -> Array[Double] {
  canvas_rendering_context2_d_get_line_dash_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_close_path_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "closePath"

///|
impl TCanvasRenderingContext2D with close_path(self : Self) -> Unit {
  canvas_rendering_context2_d_close_path_ffi(TJsValue::to_js(self))
}

///|
fn canvas_rendering_context2_d_move_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "moveTo"

///|
impl TCanvasRenderingContext2D with move_to(self : Self, x : Double, y : Double) -> Unit {
  canvas_rendering_context2_d_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn canvas_rendering_context2_d_line_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "lineTo"

///|
impl TCanvasRenderingContext2D with line_to(self : Self, x : Double, y : Double) -> Unit {
  canvas_rendering_context2_d_line_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn canvas_rendering_context2_d_quadratic_curve_to_ffi(
  obj : JsValue,
  cpx : JsValue,
  cpy : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "quadraticCurveTo"

///|
impl TCanvasRenderingContext2D with quadratic_curve_to(
  self : Self,
  cpx : Double,
  cpy : Double,
  x : Double,
  y : Double,
) -> Unit {
  canvas_rendering_context2_d_quadratic_curve_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cpx),
    TJsValue::to_js(cpy),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn canvas_rendering_context2_d_bezier_curve_to_ffi(
  obj : JsValue,
  cp1x : JsValue,
  cp1y : JsValue,
  cp2x : JsValue,
  cp2y : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "bezierCurveTo"

///|
impl TCanvasRenderingContext2D with bezier_curve_to(
  self : Self,
  cp1x : Double,
  cp1y : Double,
  cp2x : Double,
  cp2y : Double,
  x : Double,
  y : Double,
) -> Unit {
  canvas_rendering_context2_d_bezier_curve_to_ffi(
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
fn canvas_rendering_context2_d_arc_to_ffi(
  obj : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  x2 : JsValue,
  y2 : JsValue,
  radius : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "arcTo"

///|
impl TCanvasRenderingContext2D with arc_to(
  self : Self,
  x1 : Double,
  y1 : Double,
  x2 : Double,
  y2 : Double,
  radius : Double,
) -> Unit {
  canvas_rendering_context2_d_arc_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x1),
    TJsValue::to_js(y1),
    TJsValue::to_js(x2),
    TJsValue::to_js(y2),
    TJsValue::to_js(radius),
  )
}

///|
fn canvas_rendering_context2_d_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "rect"

///|
impl TCanvasRenderingContext2D with rect(
  self : Self,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit {
  canvas_rendering_context2_d_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
  )
}

///|
/// Arg : radii
pub(open) trait TRoundRectRadiiArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TRoundRectRadiiArg for JsValue with to_js(self : JsValue) -> JsValue = "%identity"

///|
pub impl TRoundRectRadiiArg for DOMPointInit with to_js(self : DOMPointInit) -> JsValue = "%identity"

///|
fn canvas_rendering_context2_d_round_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
  radii : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "roundRect"

///|
impl TCanvasRenderingContext2D with round_rect(
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
  canvas_rendering_context2_d_round_rect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(w),
    TJsValue::to_js(h),
    radii_js,
  )
}

///|
fn canvas_rendering_context2_d_arc_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "arc"

///|
impl TCanvasRenderingContext2D with arc(
  self : Self,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise? : Bool,
) -> Unit {
  let counterclockwise_js = opt_to_js(counterclockwise)
  canvas_rendering_context2_d_arc_ffi(
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
fn canvas_rendering_context2_d_ellipse_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius_x : JsValue,
  radius_y : JsValue,
  rotation : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "ellipse"

///|
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
  let counterclockwise_js = opt_to_js(counterclockwise)
  canvas_rendering_context2_d_ellipse_ffi(
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
fn canvas_rendering_context2_d_canvas_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "canvas"

///|
impl TCanvasRenderingContext2D with canvas(self : Self) -> HTMLCanvasElement {
  canvas_rendering_context2_d_canvas_ffi(self.to_js()).unsafe_cast()
}

///|
fn canvas_rendering_context2_d_global_alpha_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "globalAlpha"

///|
impl TCanvasRenderingContext2D with global_alpha(self : Self) -> Double {
  canvas_rendering_context2_d_global_alpha_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_global_alpha_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_globalAlpha"

///|
impl TCanvasRenderingContext2D with set_global_alpha(
  self : Self,
  value : Double,
) -> Unit {
  canvas_rendering_context2_d_set_global_alpha_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_global_composite_operation_ffi(
  obj : JsValue,
) -> String = "webapi_CanvasRenderingContext2D" "globalCompositeOperation"

///|
impl TCanvasRenderingContext2D with global_composite_operation(self : Self) -> String {
  canvas_rendering_context2_d_global_composite_operation_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_global_composite_operation_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_globalCompositeOperation"

///|
impl TCanvasRenderingContext2D with set_global_composite_operation(
  self : Self,
  value : String,
) -> Unit {
  canvas_rendering_context2_d_set_global_composite_operation_ffi(
    self.to_js(),
    value,
  )
}

///|
fn canvas_rendering_context2_d_image_smoothing_enabled_ffi(
  obj : JsValue,
) -> Bool = "webapi_CanvasRenderingContext2D" "imageSmoothingEnabled"

///|
impl TCanvasRenderingContext2D with image_smoothing_enabled(self : Self) -> Bool {
  canvas_rendering_context2_d_image_smoothing_enabled_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_image_smoothing_enabled_ffi(
  obj : JsValue,
  value : Bool,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_imageSmoothingEnabled"

///|
impl TCanvasRenderingContext2D with set_image_smoothing_enabled(
  self : Self,
  value : Bool,
) -> Unit {
  canvas_rendering_context2_d_set_image_smoothing_enabled_ffi(
    self.to_js(),
    value,
  )
}

///|
fn canvas_rendering_context2_d_image_smoothing_quality_ffi(
  obj : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "imageSmoothingQuality"

///|
impl TCanvasRenderingContext2D with image_smoothing_quality(self : Self) -> ImageSmoothingQuality {
  ImageSmoothingQuality::from_js(
    canvas_rendering_context2_d_image_smoothing_quality_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_image_smoothing_quality_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_imageSmoothingQuality"

///|
impl TCanvasRenderingContext2D with set_image_smoothing_quality(
  self : Self,
  value : ImageSmoothingQuality,
) -> Unit {
  canvas_rendering_context2_d_set_image_smoothing_quality_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_stroke_style_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "strokeStyle"

///|
impl TCanvasRenderingContext2D with stroke_style(self : Self) -> JsValue {
  canvas_rendering_context2_d_stroke_style_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_stroke_style_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_strokeStyle"

///|
impl TCanvasRenderingContext2D with set_stroke_style(
  self : Self,
  value : JsValue,
) -> Unit {
  canvas_rendering_context2_d_set_stroke_style_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_fill_style_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "fillStyle"

///|
impl TCanvasRenderingContext2D with fill_style(self : Self) -> JsValue {
  canvas_rendering_context2_d_fill_style_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_fill_style_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_fillStyle"

///|
impl TCanvasRenderingContext2D with set_fill_style(self : Self, value : JsValue) -> Unit {
  canvas_rendering_context2_d_set_fill_style_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_shadow_offset_x_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "shadowOffsetX"

///|
impl TCanvasRenderingContext2D with shadow_offset_x(self : Self) -> Double {
  canvas_rendering_context2_d_shadow_offset_x_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_shadow_offset_x_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_shadowOffsetX"

///|
impl TCanvasRenderingContext2D with set_shadow_offset_x(
  self : Self,
  value : Double,
) -> Unit {
  canvas_rendering_context2_d_set_shadow_offset_x_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_shadow_offset_y_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "shadowOffsetY"

///|
impl TCanvasRenderingContext2D with shadow_offset_y(self : Self) -> Double {
  canvas_rendering_context2_d_shadow_offset_y_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_shadow_offset_y_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_shadowOffsetY"

///|
impl TCanvasRenderingContext2D with set_shadow_offset_y(
  self : Self,
  value : Double,
) -> Unit {
  canvas_rendering_context2_d_set_shadow_offset_y_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_shadow_blur_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "shadowBlur"

///|
impl TCanvasRenderingContext2D with shadow_blur(self : Self) -> Double {
  canvas_rendering_context2_d_shadow_blur_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_shadow_blur_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_shadowBlur"

///|
impl TCanvasRenderingContext2D with set_shadow_blur(self : Self, value : Double) -> Unit {
  canvas_rendering_context2_d_set_shadow_blur_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_shadow_color_ffi(obj : JsValue) -> String = "webapi_CanvasRenderingContext2D" "shadowColor"

///|
impl TCanvasRenderingContext2D with shadow_color(self : Self) -> String {
  canvas_rendering_context2_d_shadow_color_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_shadow_color_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_shadowColor"

///|
impl TCanvasRenderingContext2D with set_shadow_color(
  self : Self,
  value : String,
) -> Unit {
  canvas_rendering_context2_d_set_shadow_color_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_filter_ffi(obj : JsValue) -> String = "webapi_CanvasRenderingContext2D" "filter"

///|
impl TCanvasRenderingContext2D with filter(self : Self) -> String {
  canvas_rendering_context2_d_filter_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_filter_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_filter"

///|
impl TCanvasRenderingContext2D with set_filter(self : Self, value : String) -> Unit {
  canvas_rendering_context2_d_set_filter_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_line_width_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "lineWidth"

///|
impl TCanvasRenderingContext2D with line_width(self : Self) -> Double {
  canvas_rendering_context2_d_line_width_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_line_width_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lineWidth"

///|
impl TCanvasRenderingContext2D with set_line_width(self : Self, value : Double) -> Unit {
  canvas_rendering_context2_d_set_line_width_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_line_cap_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "lineCap"

///|
impl TCanvasRenderingContext2D with line_cap(self : Self) -> CanvasLineCap {
  CanvasLineCap::from_js(canvas_rendering_context2_d_line_cap_ffi(self.to_js())).unwrap()
}

///|
fn canvas_rendering_context2_d_set_line_cap_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lineCap"

///|
impl TCanvasRenderingContext2D with set_line_cap(
  self : Self,
  value : CanvasLineCap,
) -> Unit {
  canvas_rendering_context2_d_set_line_cap_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_line_join_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "lineJoin"

///|
impl TCanvasRenderingContext2D with line_join(self : Self) -> CanvasLineJoin {
  CanvasLineJoin::from_js(
    canvas_rendering_context2_d_line_join_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_line_join_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lineJoin"

///|
impl TCanvasRenderingContext2D with set_line_join(
  self : Self,
  value : CanvasLineJoin,
) -> Unit {
  canvas_rendering_context2_d_set_line_join_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_miter_limit_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "miterLimit"

///|
impl TCanvasRenderingContext2D with miter_limit(self : Self) -> Double {
  canvas_rendering_context2_d_miter_limit_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_miter_limit_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_miterLimit"

///|
impl TCanvasRenderingContext2D with set_miter_limit(self : Self, value : Double) -> Unit {
  canvas_rendering_context2_d_set_miter_limit_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_line_dash_offset_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "lineDashOffset"

///|
impl TCanvasRenderingContext2D with line_dash_offset(self : Self) -> Double {
  canvas_rendering_context2_d_line_dash_offset_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_line_dash_offset_ffi(
  obj : JsValue,
  value : Double,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lineDashOffset"

///|
impl TCanvasRenderingContext2D with set_line_dash_offset(
  self : Self,
  value : Double,
) -> Unit {
  canvas_rendering_context2_d_set_line_dash_offset_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_lang_ffi(obj : JsValue) -> String = "webapi_CanvasRenderingContext2D" "lang"

///|
impl TCanvasRenderingContext2D with lang(self : Self) -> String {
  canvas_rendering_context2_d_lang_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_lang_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lang"

///|
impl TCanvasRenderingContext2D with set_lang(self : Self, value : String) -> Unit {
  canvas_rendering_context2_d_set_lang_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_font_ffi(obj : JsValue) -> String = "webapi_CanvasRenderingContext2D" "font"

///|
impl TCanvasRenderingContext2D with font(self : Self) -> String {
  canvas_rendering_context2_d_font_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_font_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_font"

///|
impl TCanvasRenderingContext2D with set_font(self : Self, value : String) -> Unit {
  canvas_rendering_context2_d_set_font_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_text_align_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "textAlign"

///|
impl TCanvasRenderingContext2D with text_align(self : Self) -> CanvasTextAlign {
  CanvasTextAlign::from_js(
    canvas_rendering_context2_d_text_align_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_text_align_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_textAlign"

///|
impl TCanvasRenderingContext2D with set_text_align(
  self : Self,
  value : CanvasTextAlign,
) -> Unit {
  canvas_rendering_context2_d_set_text_align_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_text_baseline_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "textBaseline"

///|
impl TCanvasRenderingContext2D with text_baseline(self : Self) -> CanvasTextBaseline {
  CanvasTextBaseline::from_js(
    canvas_rendering_context2_d_text_baseline_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_text_baseline_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_textBaseline"

///|
impl TCanvasRenderingContext2D with set_text_baseline(
  self : Self,
  value : CanvasTextBaseline,
) -> Unit {
  canvas_rendering_context2_d_set_text_baseline_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_direction_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "direction"

///|
impl TCanvasRenderingContext2D with direction(self : Self) -> CanvasDirection {
  CanvasDirection::from_js(
    canvas_rendering_context2_d_direction_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_direction_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_direction"

///|
impl TCanvasRenderingContext2D with set_direction(
  self : Self,
  value : CanvasDirection,
) -> Unit {
  canvas_rendering_context2_d_set_direction_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_letter_spacing_ffi(obj : JsValue) -> String = "webapi_CanvasRenderingContext2D" "letterSpacing"

///|
impl TCanvasRenderingContext2D with letter_spacing(self : Self) -> String {
  canvas_rendering_context2_d_letter_spacing_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_letter_spacing_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_letterSpacing"

///|
impl TCanvasRenderingContext2D with set_letter_spacing(
  self : Self,
  value : String,
) -> Unit {
  canvas_rendering_context2_d_set_letter_spacing_ffi(self.to_js(), value)
}

///|
fn canvas_rendering_context2_d_font_kerning_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "fontKerning"

///|
impl TCanvasRenderingContext2D with font_kerning(self : Self) -> CanvasFontKerning {
  CanvasFontKerning::from_js(
    canvas_rendering_context2_d_font_kerning_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_font_kerning_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_fontKerning"

///|
impl TCanvasRenderingContext2D with set_font_kerning(
  self : Self,
  value : CanvasFontKerning,
) -> Unit {
  canvas_rendering_context2_d_set_font_kerning_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_font_stretch_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "fontStretch"

///|
impl TCanvasRenderingContext2D with font_stretch(self : Self) -> CanvasFontStretch {
  CanvasFontStretch::from_js(
    canvas_rendering_context2_d_font_stretch_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_font_stretch_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_fontStretch"

///|
impl TCanvasRenderingContext2D with set_font_stretch(
  self : Self,
  value : CanvasFontStretch,
) -> Unit {
  canvas_rendering_context2_d_set_font_stretch_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_font_variant_caps_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "fontVariantCaps"

///|
impl TCanvasRenderingContext2D with font_variant_caps(self : Self) -> CanvasFontVariantCaps {
  CanvasFontVariantCaps::from_js(
    canvas_rendering_context2_d_font_variant_caps_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_font_variant_caps_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_fontVariantCaps"

///|
impl TCanvasRenderingContext2D with set_font_variant_caps(
  self : Self,
  value : CanvasFontVariantCaps,
) -> Unit {
  canvas_rendering_context2_d_set_font_variant_caps_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_text_rendering_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "textRendering"

///|
impl TCanvasRenderingContext2D with text_rendering(self : Self) -> CanvasTextRendering {
  CanvasTextRendering::from_js(
    canvas_rendering_context2_d_text_rendering_ffi(self.to_js()),
  ).unwrap()
}

///|
fn canvas_rendering_context2_d_set_text_rendering_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_textRendering"

///|
impl TCanvasRenderingContext2D with set_text_rendering(
  self : Self,
  value : CanvasTextRendering,
) -> Unit {
  canvas_rendering_context2_d_set_text_rendering_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn canvas_rendering_context2_d_word_spacing_ffi(obj : JsValue) -> String = "webapi_CanvasRenderingContext2D" "wordSpacing"

///|
impl TCanvasRenderingContext2D with word_spacing(self : Self) -> String {
  canvas_rendering_context2_d_word_spacing_ffi(self.to_js())
}

///|
fn canvas_rendering_context2_d_set_word_spacing_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_wordSpacing"

///|
impl TCanvasRenderingContext2D with set_word_spacing(
  self : Self,
  value : String,
) -> Unit {
  canvas_rendering_context2_d_set_word_spacing_ffi(self.to_js(), value)
}
