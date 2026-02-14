///|
extern "js" fn offscreen_canvas_rendering_context2d_canvas_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.canvas"

///|
fn offscreen_canvas_rendering_context2d_canvas_ffi(
  obj : JsValue,
) -> OffscreenCanvas {
  offscreen_canvas_rendering_context2d_canvas_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_get_context_attributes_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getContextAttributes()"

///|
fn offscreen_canvas_rendering_context2d_get_context_attributes_ffi(
  obj : JsValue,
) -> CanvasRenderingContext2DSettings {
  offscreen_canvas_rendering_context2d_get_context_attributes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_save_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.save()"

///|
extern "js" fn offscreen_canvas_rendering_context2d_restore_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.restore()"

///|
extern "js" fn offscreen_canvas_rendering_context2d_reset_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.reset()"

///|
extern "js" fn offscreen_canvas_rendering_context2d_is_context_lost_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.isContextLost()"

///|
fn offscreen_canvas_rendering_context2d_is_context_lost_ffi(
  obj : JsValue,
) -> Bool {
  offscreen_canvas_rendering_context2d_is_context_lost_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_scale_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.scale(x, y)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_rotate_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "(obj, angle) => obj.rotate(angle)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_translate_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.translate(x, y)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_transform_ffi(
  obj : JsValue,
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
) -> Unit = "(obj, a, b, c, d, e, f) => obj.transform(a, b, c, d, e, f)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_get_transform_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getTransform()"

///|
fn offscreen_canvas_rendering_context2d_get_transform_ffi(
  obj : JsValue,
) -> DOMMatrix {
  offscreen_canvas_rendering_context2d_get_transform_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_transform_ffi(
  obj : JsValue,
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
) -> Unit = "(obj, a, b, c, d, e, f) => obj.setTransform(a, b, c, d, e, f)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_transform_matrix_ffi(
  obj : JsValue,
  transform : JsValue,
) -> Unit = "(obj, transform) => obj.setTransform(transform)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_reset_transform_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.resetTransform()"

///|
extern "js" fn offscreen_canvas_rendering_context2d_global_alpha_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.globalAlpha"

///|
fn offscreen_canvas_rendering_context2d_global_alpha_ffi(
  obj : JsValue,
) -> Double {
  offscreen_canvas_rendering_context2d_global_alpha_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_global_alpha_ffi(
  obj : JsValue,
  global_alpha : JsValue,
) -> Unit = "(obj, globalAlpha) => { obj.globalAlpha = globalAlpha; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_global_composite_operation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.globalCompositeOperation"

///|
fn offscreen_canvas_rendering_context2d_global_composite_operation_ffi(
  obj : JsValue,
) -> String {
  offscreen_canvas_rendering_context2d_global_composite_operation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_global_composite_operation_ffi(
  obj : JsValue,
  global_composite_operation : JsValue,
) -> Unit = "(obj, globalCompositeOperation) => { obj.globalCompositeOperation = globalCompositeOperation; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_image_smoothing_enabled_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.imageSmoothingEnabled"

///|
fn offscreen_canvas_rendering_context2d_image_smoothing_enabled_ffi(
  obj : JsValue,
) -> Bool {
  offscreen_canvas_rendering_context2d_image_smoothing_enabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_image_smoothing_enabled_ffi(
  obj : JsValue,
  image_smoothing_enabled : JsValue,
) -> Unit = "(obj, imageSmoothingEnabled) => { obj.imageSmoothingEnabled = imageSmoothingEnabled; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.imageSmoothingQuality"

///|
fn offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi(
  obj : JsValue,
) -> ImageSmoothingQuality {
  ImageSmoothingQuality::from_unchecked(
    offscreen_canvas_rendering_context2d_image_smoothing_quality_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_image_smoothing_quality_ffi(
  obj : JsValue,
  image_smoothing_quality : JsValue,
) -> Unit = "(obj, imageSmoothingQuality) => { obj.imageSmoothingQuality = imageSmoothingQuality; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_stroke_style_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.strokeStyle"

///|
fn offscreen_canvas_rendering_context2d_stroke_style_ffi(
  obj : JsValue,
) -> OffscreenCanvasRenderingContext2DStrokeStyle {
  offscreen_canvas_rendering_context2d_stroke_style_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_stroke_style_ffi(
  obj : JsValue,
  stroke_style : JsValue,
) -> Unit = "(obj, strokeStyle) => { obj.strokeStyle = strokeStyle; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_fill_style_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fillStyle"

///|
fn offscreen_canvas_rendering_context2d_fill_style_ffi(
  obj : JsValue,
) -> OffscreenCanvasRenderingContext2DFillStyle {
  offscreen_canvas_rendering_context2d_fill_style_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_fill_style_ffi(
  obj : JsValue,
  fill_style : JsValue,
) -> Unit = "(obj, fillStyle) => { obj.fillStyle = fillStyle; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_create_linear_gradient_ffi_js(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
) -> JsValue = "(obj, x0, y0, x1, y1) => obj.createLinearGradient(x0, y0, x1, y1)"

///|
fn offscreen_canvas_rendering_context2d_create_linear_gradient_ffi(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_linear_gradient_ffi_js(
    obj, x0, y0, x1, y1,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_create_radial_gradient_ffi_js(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  r0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  r1 : JsValue,
) -> JsValue = "(obj, x0, y0, r0, x1, y1, r1) => obj.createRadialGradient(x0, y0, r0, x1, y1, r1)"

///|
fn offscreen_canvas_rendering_context2d_create_radial_gradient_ffi(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  r0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  r1 : JsValue,
) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_radial_gradient_ffi_js(
    obj, x0, y0, r0, x1, y1, r1,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_create_conic_gradient_ffi_js(
  obj : JsValue,
  start_angle : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, start_angle, x, y) => obj.createConicGradient(start_angle, x, y)"

///|
fn offscreen_canvas_rendering_context2d_create_conic_gradient_ffi(
  obj : JsValue,
  start_angle : JsValue,
  x : JsValue,
  y : JsValue,
) -> CanvasGradient {
  offscreen_canvas_rendering_context2d_create_conic_gradient_ffi_js(
    obj, start_angle, x, y,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_create_pattern_ffi(
  obj : JsValue,
  image : JsValue,
  repetition : JsValue,
) -> JsValue = "(obj, image, repetition) => obj.createPattern(image, repetition)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_shadow_offset_x_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.shadowOffsetX"

///|
fn offscreen_canvas_rendering_context2d_shadow_offset_x_ffi(
  obj : JsValue,
) -> Double {
  offscreen_canvas_rendering_context2d_shadow_offset_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_shadow_offset_x_ffi(
  obj : JsValue,
  shadow_offset_x : JsValue,
) -> Unit = "(obj, shadowOffsetX) => { obj.shadowOffsetX = shadowOffsetX; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_shadow_offset_y_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.shadowOffsetY"

///|
fn offscreen_canvas_rendering_context2d_shadow_offset_y_ffi(
  obj : JsValue,
) -> Double {
  offscreen_canvas_rendering_context2d_shadow_offset_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_shadow_offset_y_ffi(
  obj : JsValue,
  shadow_offset_y : JsValue,
) -> Unit = "(obj, shadowOffsetY) => { obj.shadowOffsetY = shadowOffsetY; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_shadow_blur_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.shadowBlur"

///|
fn offscreen_canvas_rendering_context2d_shadow_blur_ffi(
  obj : JsValue,
) -> Double {
  offscreen_canvas_rendering_context2d_shadow_blur_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_shadow_blur_ffi(
  obj : JsValue,
  shadow_blur : JsValue,
) -> Unit = "(obj, shadowBlur) => { obj.shadowBlur = shadowBlur; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_shadow_color_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.shadowColor"

///|
fn offscreen_canvas_rendering_context2d_shadow_color_ffi(
  obj : JsValue,
) -> String {
  offscreen_canvas_rendering_context2d_shadow_color_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_shadow_color_ffi(
  obj : JsValue,
  shadow_color : JsValue,
) -> Unit = "(obj, shadowColor) => { obj.shadowColor = shadowColor; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_filter_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.filter"

///|
fn offscreen_canvas_rendering_context2d_filter_ffi(obj : JsValue) -> String {
  offscreen_canvas_rendering_context2d_filter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_filter_ffi(
  obj : JsValue,
  filter : JsValue,
) -> Unit = "(obj, filter) => { obj.filter = filter; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_clear_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "(obj, x, y, w, h) => obj.clearRect(x, y, w, h)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_fill_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "(obj, x, y, w, h) => obj.fillRect(x, y, w, h)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_stroke_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "(obj, x, y, w, h) => obj.strokeRect(x, y, w, h)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_begin_path_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.beginPath()"

///|
extern "js" fn offscreen_canvas_rendering_context2d_fill_ffi(
  obj : JsValue,
  fill_rule : JsValue,
) -> Unit = "(obj, fill_rule) => obj.fill(fill_rule)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_fill_path_ffi(
  obj : JsValue,
  path : JsValue,
  fill_rule : JsValue,
) -> Unit = "(obj, path, fill_rule) => obj.fill(path, fill_rule)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_stroke_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.stroke()"

///|
extern "js" fn offscreen_canvas_rendering_context2d_stroke_path_ffi(
  obj : JsValue,
  path : JsValue,
) -> Unit = "(obj, path) => obj.stroke(path)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_clip_ffi(
  obj : JsValue,
  fill_rule : JsValue,
) -> Unit = "(obj, fill_rule) => obj.clip(fill_rule)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_clip_path_ffi(
  obj : JsValue,
  path : JsValue,
  fill_rule : JsValue,
) -> Unit = "(obj, path, fill_rule) => obj.clip(path, fill_rule)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_is_point_in_path_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> JsValue = "(obj, x, y, fill_rule) => obj.isPointInPath(x, y, fill_rule)"

///|
fn offscreen_canvas_rendering_context2d_is_point_in_path_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_path_ffi_js(
    obj, x, y, fill_rule,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_is_point_in_path_with_path_ffi_js(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> JsValue = "(obj, path, x, y, fill_rule) => obj.isPointInPath(path, x, y, fill_rule)"

///|
fn offscreen_canvas_rendering_context2d_is_point_in_path_with_path_ffi(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_path_with_path_ffi_js(
    obj, path, x, y, fill_rule,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_is_point_in_stroke_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.isPointInStroke(x, y)"

///|
fn offscreen_canvas_rendering_context2d_is_point_in_stroke_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_stroke_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_is_point_in_stroke_with_path_ffi_js(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, path, x, y) => obj.isPointInStroke(path, x, y)"

///|
fn offscreen_canvas_rendering_context2d_is_point_in_stroke_with_path_ffi(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
) -> Bool {
  offscreen_canvas_rendering_context2d_is_point_in_stroke_with_path_ffi_js(
    obj, path, x, y,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_fill_text_ffi(
  obj : JsValue,
  text : JsValue,
  x : JsValue,
  y : JsValue,
  max_width : JsValue,
) -> Unit = "(obj, text, x, y, max_width) => obj.fillText(text, x, y, max_width)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_stroke_text_ffi(
  obj : JsValue,
  text : JsValue,
  x : JsValue,
  y : JsValue,
  max_width : JsValue,
) -> Unit = "(obj, text, x, y, max_width) => obj.strokeText(text, x, y, max_width)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_measure_text_ffi_js(
  obj : JsValue,
  text : JsValue,
) -> JsValue = "(obj, text) => obj.measureText(text)"

///|
fn offscreen_canvas_rendering_context2d_measure_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> TextMetrics {
  offscreen_canvas_rendering_context2d_measure_text_ffi_js(obj, text).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_draw_image_ffi(
  obj : JsValue,
  image : JsValue,
  dx : JsValue,
  dy : JsValue,
) -> Unit = "(obj, image, dx, dy) => obj.drawImage(image, dx, dy)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_draw_image_scaled_ffi(
  obj : JsValue,
  image : JsValue,
  dx : JsValue,
  dy : JsValue,
  dw : JsValue,
  dh : JsValue,
) -> Unit = "(obj, image, dx, dy, dw, dh) => obj.drawImage(image, dx, dy, dw, dh)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_draw_image_cropped_ffi(
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
) -> Unit = "(obj, image, sx, sy, sw, sh, dx, dy, dw, dh) => obj.drawImage(image, sx, sy, sw, sh, dx, dy, dw, dh)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_create_image_data_ffi_js(
  obj : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> JsValue = "(obj, sw, sh, settings) => obj.createImageData(sw, sh, settings)"

///|
fn offscreen_canvas_rendering_context2d_create_image_data_ffi(
  obj : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData {
  offscreen_canvas_rendering_context2d_create_image_data_ffi_js(
    obj, sw, sh, settings,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_create_image_data_from_ffi_js(
  obj : JsValue,
  image_data : JsValue,
) -> JsValue = "(obj, image_data) => obj.createImageData(image_data)"

///|
fn offscreen_canvas_rendering_context2d_create_image_data_from_ffi(
  obj : JsValue,
  image_data : JsValue,
) -> ImageData {
  offscreen_canvas_rendering_context2d_create_image_data_from_ffi_js(
    obj, image_data,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_get_image_data_ffi_js(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> JsValue = "(obj, sx, sy, sw, sh, settings) => obj.getImageData(sx, sy, sw, sh, settings)"

///|
fn offscreen_canvas_rendering_context2d_get_image_data_ffi(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData {
  offscreen_canvas_rendering_context2d_get_image_data_ffi_js(
    obj, sx, sy, sw, sh, settings,
  ).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_put_image_data_ffi(
  obj : JsValue,
  image_data : JsValue,
  dx : JsValue,
  dy : JsValue,
) -> Unit = "(obj, image_data, dx, dy) => obj.putImageData(image_data, dx, dy)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_put_image_data_dirty_rect_ffi(
  obj : JsValue,
  image_data : JsValue,
  dx : JsValue,
  dy : JsValue,
  dirty_x : JsValue,
  dirty_y : JsValue,
  dirty_width : JsValue,
  dirty_height : JsValue,
) -> Unit = "(obj, image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height) => obj.putImageData(image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_line_width_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lineWidth"

///|
fn offscreen_canvas_rendering_context2d_line_width_ffi(obj : JsValue) -> Double {
  offscreen_canvas_rendering_context2d_line_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_line_width_ffi(
  obj : JsValue,
  line_width : JsValue,
) -> Unit = "(obj, lineWidth) => { obj.lineWidth = lineWidth; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_line_cap_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lineCap"

///|
fn offscreen_canvas_rendering_context2d_line_cap_ffi(
  obj : JsValue,
) -> CanvasLineCap {
  CanvasLineCap::from_unchecked(
    offscreen_canvas_rendering_context2d_line_cap_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_line_cap_ffi(
  obj : JsValue,
  line_cap : JsValue,
) -> Unit = "(obj, lineCap) => { obj.lineCap = lineCap; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_line_join_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lineJoin"

///|
fn offscreen_canvas_rendering_context2d_line_join_ffi(
  obj : JsValue,
) -> CanvasLineJoin {
  CanvasLineJoin::from_unchecked(
    offscreen_canvas_rendering_context2d_line_join_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_line_join_ffi(
  obj : JsValue,
  line_join : JsValue,
) -> Unit = "(obj, lineJoin) => { obj.lineJoin = lineJoin; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_miter_limit_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.miterLimit"

///|
fn offscreen_canvas_rendering_context2d_miter_limit_ffi(
  obj : JsValue,
) -> Double {
  offscreen_canvas_rendering_context2d_miter_limit_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_miter_limit_ffi(
  obj : JsValue,
  miter_limit : JsValue,
) -> Unit = "(obj, miterLimit) => { obj.miterLimit = miterLimit; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_line_dash_ffi(
  obj : JsValue,
  segments : JsValue,
) -> Unit = "(obj, segments) => obj.setLineDash(segments)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_get_line_dash_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getLineDash()"

///|
fn offscreen_canvas_rendering_context2d_get_line_dash_ffi(
  obj : JsValue,
) -> Array[Double] {
  offscreen_canvas_rendering_context2d_get_line_dash_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_line_dash_offset_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lineDashOffset"

///|
fn offscreen_canvas_rendering_context2d_line_dash_offset_ffi(
  obj : JsValue,
) -> Double {
  offscreen_canvas_rendering_context2d_line_dash_offset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_line_dash_offset_ffi(
  obj : JsValue,
  line_dash_offset : JsValue,
) -> Unit = "(obj, lineDashOffset) => { obj.lineDashOffset = lineDashOffset; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_lang_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lang"

///|
fn offscreen_canvas_rendering_context2d_lang_ffi(obj : JsValue) -> String {
  offscreen_canvas_rendering_context2d_lang_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_lang_ffi(
  obj : JsValue,
  lang : JsValue,
) -> Unit = "(obj, lang) => { obj.lang = lang; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_font_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.font"

///|
fn offscreen_canvas_rendering_context2d_font_ffi(obj : JsValue) -> String {
  offscreen_canvas_rendering_context2d_font_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_font_ffi(
  obj : JsValue,
  font : JsValue,
) -> Unit = "(obj, font) => { obj.font = font; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_text_align_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.textAlign"

///|
fn offscreen_canvas_rendering_context2d_text_align_ffi(
  obj : JsValue,
) -> CanvasTextAlign {
  CanvasTextAlign::from_unchecked(
    offscreen_canvas_rendering_context2d_text_align_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_text_align_ffi(
  obj : JsValue,
  text_align : JsValue,
) -> Unit = "(obj, textAlign) => { obj.textAlign = textAlign; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_text_baseline_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.textBaseline"

///|
fn offscreen_canvas_rendering_context2d_text_baseline_ffi(
  obj : JsValue,
) -> CanvasTextBaseline {
  CanvasTextBaseline::from_unchecked(
    offscreen_canvas_rendering_context2d_text_baseline_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_text_baseline_ffi(
  obj : JsValue,
  text_baseline : JsValue,
) -> Unit = "(obj, textBaseline) => { obj.textBaseline = textBaseline; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_direction_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.direction"

///|
fn offscreen_canvas_rendering_context2d_direction_ffi(
  obj : JsValue,
) -> CanvasDirection {
  CanvasDirection::from_unchecked(
    offscreen_canvas_rendering_context2d_direction_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_direction_ffi(
  obj : JsValue,
  direction : JsValue,
) -> Unit = "(obj, direction) => { obj.direction = direction; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_letter_spacing_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.letterSpacing"

///|
fn offscreen_canvas_rendering_context2d_letter_spacing_ffi(
  obj : JsValue,
) -> String {
  offscreen_canvas_rendering_context2d_letter_spacing_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_letter_spacing_ffi(
  obj : JsValue,
  letter_spacing : JsValue,
) -> Unit = "(obj, letterSpacing) => { obj.letterSpacing = letterSpacing; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_font_kerning_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fontKerning"

///|
fn offscreen_canvas_rendering_context2d_font_kerning_ffi(
  obj : JsValue,
) -> CanvasFontKerning {
  CanvasFontKerning::from_unchecked(
    offscreen_canvas_rendering_context2d_font_kerning_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_font_kerning_ffi(
  obj : JsValue,
  font_kerning : JsValue,
) -> Unit = "(obj, fontKerning) => { obj.fontKerning = fontKerning; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_font_stretch_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fontStretch"

///|
fn offscreen_canvas_rendering_context2d_font_stretch_ffi(
  obj : JsValue,
) -> CanvasFontStretch {
  CanvasFontStretch::from_unchecked(
    offscreen_canvas_rendering_context2d_font_stretch_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_font_stretch_ffi(
  obj : JsValue,
  font_stretch : JsValue,
) -> Unit = "(obj, fontStretch) => { obj.fontStretch = fontStretch; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_font_variant_caps_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fontVariantCaps"

///|
fn offscreen_canvas_rendering_context2d_font_variant_caps_ffi(
  obj : JsValue,
) -> CanvasFontVariantCaps {
  CanvasFontVariantCaps::from_unchecked(
    offscreen_canvas_rendering_context2d_font_variant_caps_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_font_variant_caps_ffi(
  obj : JsValue,
  font_variant_caps : JsValue,
) -> Unit = "(obj, fontVariantCaps) => { obj.fontVariantCaps = fontVariantCaps; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_text_rendering_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.textRendering"

///|
fn offscreen_canvas_rendering_context2d_text_rendering_ffi(
  obj : JsValue,
) -> CanvasTextRendering {
  CanvasTextRendering::from_unchecked(
    offscreen_canvas_rendering_context2d_text_rendering_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_text_rendering_ffi(
  obj : JsValue,
  text_rendering : JsValue,
) -> Unit = "(obj, textRendering) => { obj.textRendering = textRendering; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_word_spacing_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.wordSpacing"

///|
fn offscreen_canvas_rendering_context2d_word_spacing_ffi(
  obj : JsValue,
) -> String {
  offscreen_canvas_rendering_context2d_word_spacing_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn offscreen_canvas_rendering_context2d_set_word_spacing_ffi(
  obj : JsValue,
  word_spacing : JsValue,
) -> Unit = "(obj, wordSpacing) => { obj.wordSpacing = wordSpacing; }"

///|
extern "js" fn offscreen_canvas_rendering_context2d_close_path_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.closePath()"

///|
extern "js" fn offscreen_canvas_rendering_context2d_move_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.moveTo(x, y)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_line_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.lineTo(x, y)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_quadratic_curve_to_ffi(
  obj : JsValue,
  cpx : JsValue,
  cpy : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, cpx, cpy, x, y) => obj.quadraticCurveTo(cpx, cpy, x, y)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_bezier_curve_to_ffi(
  obj : JsValue,
  cp1x : JsValue,
  cp1y : JsValue,
  cp2x : JsValue,
  cp2y : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, cp1x, cp1y, cp2x, cp2y, x, y) => obj.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_arc_to_ffi(
  obj : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  x2 : JsValue,
  y2 : JsValue,
  radius : JsValue,
) -> Unit = "(obj, x1, y1, x2, y2, radius) => obj.arcTo(x1, y1, x2, y2, radius)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "(obj, x, y, w, h) => obj.rect(x, y, w, h)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_round_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
  radii : JsValue,
) -> Unit = "(obj, x, y, w, h, radii) => obj.roundRect(x, y, w, h, radii)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_arc_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "(obj, x, y, radius, start_angle, end_angle, counterclockwise) => obj.arc(x, y, radius, start_angle, end_angle, counterclockwise)"

///|
extern "js" fn offscreen_canvas_rendering_context2d_ellipse_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius_x : JsValue,
  radius_y : JsValue,
  rotation : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "(obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => obj.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)"
