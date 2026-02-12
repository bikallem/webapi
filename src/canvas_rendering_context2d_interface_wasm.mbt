///|
fn canvas_rendering_context2d_canvas_ffi(obj : JsValue) -> HTMLCanvasElement = "webapi_CanvasRenderingContext2D" "get_canvas"

///|
fn canvas_rendering_context2d_get_context_attributes_ffi(
  obj : JsValue,
) -> CanvasRenderingContext2DSettings = "webapi_CanvasRenderingContext2D" "getContextAttributes"

///|
fn canvas_rendering_context2d_save_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "save"

///|
fn canvas_rendering_context2d_restore_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "restore"

///|
fn canvas_rendering_context2d_reset_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "reset"

///|
fn canvas_rendering_context2d_is_context_lost_ffi(obj : JsValue) -> Bool = "webapi_CanvasRenderingContext2D" "isContextLost"

///|
fn canvas_rendering_context2d_scale_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "scale"

///|
fn canvas_rendering_context2d_rotate_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "rotate"

///|
fn canvas_rendering_context2d_translate_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "translate"

///|
fn canvas_rendering_context2d_transform_ffi(
  obj : JsValue,
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "transform"

///|
fn canvas_rendering_context2d_get_transform_ffi(obj : JsValue) -> DOMMatrix = "webapi_CanvasRenderingContext2D" "getTransform"

///|
fn canvas_rendering_context2d_set_transform_ffi(
  obj : JsValue,
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "setTransform"

///|
fn canvas_rendering_context2d_set_transform_2_ffi(
  obj : JsValue,
  transform : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "setTransform_2"

///|
fn canvas_rendering_context2d_reset_transform_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "resetTransform"

///|
fn canvas_rendering_context2d_global_alpha_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "get_globalAlpha"

///|
fn canvas_rendering_context2d_set_global_alpha_ffi(
  obj : JsValue,
  global_alpha : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_globalAlpha"

///|
fn canvas_rendering_context2d_global_composite_operation_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "get_globalCompositeOperation"

///|
fn canvas_rendering_context2d_global_composite_operation_ffi(
  obj : JsValue,
) -> String {
  jsvalue_to_string(
    canvas_rendering_context2d_global_composite_operation_ffi_wasm(obj),
  )
}

///|
fn canvas_rendering_context2d_set_global_composite_operation_ffi(
  obj : JsValue,
  global_composite_operation : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_globalCompositeOperation"

///|
fn canvas_rendering_context2d_image_smoothing_enabled_ffi(
  obj : JsValue,
) -> Bool = "webapi_CanvasRenderingContext2D" "get_imageSmoothingEnabled"

///|
fn canvas_rendering_context2d_set_image_smoothing_enabled_ffi(
  obj : JsValue,
  image_smoothing_enabled : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_imageSmoothingEnabled"

///|
fn canvas_rendering_context2d_image_smoothing_quality_ffi(
  obj : JsValue,
) -> ImageSmoothingQuality = "webapi_CanvasRenderingContext2D" "get_imageSmoothingQuality"

///|
fn canvas_rendering_context2d_set_image_smoothing_quality_ffi(
  obj : JsValue,
  image_smoothing_quality : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_imageSmoothingQuality"

///|
fn canvas_rendering_context2d_stroke_style_ffi(
  obj : JsValue,
) -> CanvasRenderingContext2DStrokeStyle = "webapi_CanvasRenderingContext2D" "get_strokeStyle"

///|
fn canvas_rendering_context2d_set_stroke_style_ffi(
  obj : JsValue,
  stroke_style : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_strokeStyle"

///|
fn canvas_rendering_context2d_fill_style_ffi(
  obj : JsValue,
) -> CanvasRenderingContext2DFillStyle = "webapi_CanvasRenderingContext2D" "get_fillStyle"

///|
fn canvas_rendering_context2d_set_fill_style_ffi(
  obj : JsValue,
  fill_style : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_fillStyle"

///|
fn canvas_rendering_context2d_create_linear_gradient_ffi(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
) -> CanvasGradient = "webapi_CanvasRenderingContext2D" "createLinearGradient"

///|
fn canvas_rendering_context2d_create_radial_gradient_ffi(
  obj : JsValue,
  x0 : JsValue,
  y0 : JsValue,
  r0 : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  r1 : JsValue,
) -> CanvasGradient = "webapi_CanvasRenderingContext2D" "createRadialGradient"

///|
fn canvas_rendering_context2d_create_conic_gradient_ffi(
  obj : JsValue,
  start_angle : JsValue,
  x : JsValue,
  y : JsValue,
) -> CanvasGradient = "webapi_CanvasRenderingContext2D" "createConicGradient"

///|
fn canvas_rendering_context2d_create_pattern_ffi(
  obj : JsValue,
  image : JsValue,
  repetition : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2D" "createPattern"

///|
fn canvas_rendering_context2d_shadow_offset_x_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "get_shadowOffsetX"

///|
fn canvas_rendering_context2d_set_shadow_offset_x_ffi(
  obj : JsValue,
  shadow_offset_x : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_shadowOffsetX"

///|
fn canvas_rendering_context2d_shadow_offset_y_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "get_shadowOffsetY"

///|
fn canvas_rendering_context2d_set_shadow_offset_y_ffi(
  obj : JsValue,
  shadow_offset_y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_shadowOffsetY"

///|
fn canvas_rendering_context2d_shadow_blur_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "get_shadowBlur"

///|
fn canvas_rendering_context2d_set_shadow_blur_ffi(
  obj : JsValue,
  shadow_blur : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_shadowBlur"

///|
fn canvas_rendering_context2d_shadow_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "get_shadowColor"

///|
fn canvas_rendering_context2d_shadow_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(canvas_rendering_context2d_shadow_color_ffi_wasm(obj))
}

///|
fn canvas_rendering_context2d_set_shadow_color_ffi(
  obj : JsValue,
  shadow_color : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_shadowColor"

///|
fn canvas_rendering_context2d_filter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "get_filter"

///|
fn canvas_rendering_context2d_filter_ffi(obj : JsValue) -> String {
  jsvalue_to_string(canvas_rendering_context2d_filter_ffi_wasm(obj))
}

///|
fn canvas_rendering_context2d_set_filter_ffi(
  obj : JsValue,
  filter : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_filter"

///|
fn canvas_rendering_context2d_clear_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "clearRect"

///|
fn canvas_rendering_context2d_fill_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "fillRect"

///|
fn canvas_rendering_context2d_stroke_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "strokeRect"

///|
fn canvas_rendering_context2d_begin_path_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "beginPath"

///|
fn canvas_rendering_context2d_fill_ffi(
  obj : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "fill"

///|
fn canvas_rendering_context2d_fill_2_ffi(
  obj : JsValue,
  path : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "fill_2"

///|
fn canvas_rendering_context2d_stroke_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "stroke"

///|
fn canvas_rendering_context2d_stroke_2_ffi(
  obj : JsValue,
  path : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "stroke_2"

///|
fn canvas_rendering_context2d_clip_ffi(
  obj : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "clip"

///|
fn canvas_rendering_context2d_clip_2_ffi(
  obj : JsValue,
  path : JsValue,
  fill_rule : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "clip_2"

///|
fn canvas_rendering_context2d_is_point_in_path_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> Bool = "webapi_CanvasRenderingContext2D" "isPointInPath"

///|
fn canvas_rendering_context2d_is_point_in_path_2_ffi(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
  fill_rule : JsValue,
) -> Bool = "webapi_CanvasRenderingContext2D" "isPointInPath_2"

///|
fn canvas_rendering_context2d_is_point_in_stroke_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Bool = "webapi_CanvasRenderingContext2D" "isPointInStroke"

///|
fn canvas_rendering_context2d_is_point_in_stroke_2_ffi(
  obj : JsValue,
  path : JsValue,
  x : JsValue,
  y : JsValue,
) -> Bool = "webapi_CanvasRenderingContext2D" "isPointInStroke_2"

///|
fn canvas_rendering_context2d_draw_focus_if_needed_ffi(
  obj : JsValue,
  element : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "drawFocusIfNeeded"

///|
fn canvas_rendering_context2d_draw_focus_if_needed_2_ffi(
  obj : JsValue,
  path : JsValue,
  element : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "drawFocusIfNeeded_2"

///|
fn canvas_rendering_context2d_fill_text_ffi(
  obj : JsValue,
  text : JsValue,
  x : JsValue,
  y : JsValue,
  max_width : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "fillText"

///|
fn canvas_rendering_context2d_stroke_text_ffi(
  obj : JsValue,
  text : JsValue,
  x : JsValue,
  y : JsValue,
  max_width : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "strokeText"

///|
fn canvas_rendering_context2d_measure_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> TextMetrics = "webapi_CanvasRenderingContext2D" "measureText"

///|
fn canvas_rendering_context2d_draw_image_ffi(
  obj : JsValue,
  image : JsValue,
  dx : JsValue,
  dy : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "drawImage"

///|
fn canvas_rendering_context2d_draw_image_2_ffi(
  obj : JsValue,
  image : JsValue,
  dx : JsValue,
  dy : JsValue,
  dw : JsValue,
  dh : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "drawImage_2"

///|
fn canvas_rendering_context2d_draw_image_3_ffi(
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
) -> Unit = "webapi_CanvasRenderingContext2D" "drawImage_3"

///|
fn canvas_rendering_context2d_create_image_data_ffi(
  obj : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData = "webapi_CanvasRenderingContext2D" "createImageData"

///|
fn canvas_rendering_context2d_create_image_data_2_ffi(
  obj : JsValue,
  image_data : JsValue,
) -> ImageData = "webapi_CanvasRenderingContext2D" "createImageData_2"

///|
fn canvas_rendering_context2d_get_image_data_ffi(
  obj : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData = "webapi_CanvasRenderingContext2D" "getImageData"

///|
fn canvas_rendering_context2d_put_image_data_ffi(
  obj : JsValue,
  image_data : JsValue,
  dx : JsValue,
  dy : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "putImageData"

///|
fn canvas_rendering_context2d_put_image_data_2_ffi(
  obj : JsValue,
  image_data : JsValue,
  dx : JsValue,
  dy : JsValue,
  dirty_x : JsValue,
  dirty_y : JsValue,
  dirty_width : JsValue,
  dirty_height : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "putImageData_2"

///|
fn canvas_rendering_context2d_line_width_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "get_lineWidth"

///|
fn canvas_rendering_context2d_set_line_width_ffi(
  obj : JsValue,
  line_width : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lineWidth"

///|
fn canvas_rendering_context2d_line_cap_ffi(obj : JsValue) -> CanvasLineCap = "webapi_CanvasRenderingContext2D" "get_lineCap"

///|
fn canvas_rendering_context2d_set_line_cap_ffi(
  obj : JsValue,
  line_cap : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lineCap"

///|
fn canvas_rendering_context2d_line_join_ffi(obj : JsValue) -> CanvasLineJoin = "webapi_CanvasRenderingContext2D" "get_lineJoin"

///|
fn canvas_rendering_context2d_set_line_join_ffi(
  obj : JsValue,
  line_join : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lineJoin"

///|
fn canvas_rendering_context2d_miter_limit_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "get_miterLimit"

///|
fn canvas_rendering_context2d_set_miter_limit_ffi(
  obj : JsValue,
  miter_limit : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_miterLimit"

///|
fn canvas_rendering_context2d_set_line_dash_ffi(
  obj : JsValue,
  segments : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "setLineDash"

///|
fn canvas_rendering_context2d_get_line_dash_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "getLineDash"

///|
fn canvas_rendering_context2d_get_line_dash_ffi(obj : JsValue) -> Array[Double] {
  jsvalue_to_array(
    canvas_rendering_context2d_get_line_dash_ffi_wasm(obj),
    JsValue::unsafe_cast,
  )
}

///|
fn canvas_rendering_context2d_line_dash_offset_ffi(obj : JsValue) -> Double = "webapi_CanvasRenderingContext2D" "get_lineDashOffset"

///|
fn canvas_rendering_context2d_set_line_dash_offset_ffi(
  obj : JsValue,
  line_dash_offset : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lineDashOffset"

///|
fn canvas_rendering_context2d_lang_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "get_lang"

///|
fn canvas_rendering_context2d_lang_ffi(obj : JsValue) -> String {
  jsvalue_to_string(canvas_rendering_context2d_lang_ffi_wasm(obj))
}

///|
fn canvas_rendering_context2d_set_lang_ffi(
  obj : JsValue,
  lang : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_lang"

///|
fn canvas_rendering_context2d_font_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "get_font"

///|
fn canvas_rendering_context2d_font_ffi(obj : JsValue) -> String {
  jsvalue_to_string(canvas_rendering_context2d_font_ffi_wasm(obj))
}

///|
fn canvas_rendering_context2d_set_font_ffi(
  obj : JsValue,
  font : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_font"

///|
fn canvas_rendering_context2d_text_align_ffi(obj : JsValue) -> CanvasTextAlign = "webapi_CanvasRenderingContext2D" "get_textAlign"

///|
fn canvas_rendering_context2d_set_text_align_ffi(
  obj : JsValue,
  text_align : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_textAlign"

///|
fn canvas_rendering_context2d_text_baseline_ffi(
  obj : JsValue,
) -> CanvasTextBaseline = "webapi_CanvasRenderingContext2D" "get_textBaseline"

///|
fn canvas_rendering_context2d_set_text_baseline_ffi(
  obj : JsValue,
  text_baseline : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_textBaseline"

///|
fn canvas_rendering_context2d_direction_ffi(obj : JsValue) -> CanvasDirection = "webapi_CanvasRenderingContext2D" "get_direction"

///|
fn canvas_rendering_context2d_set_direction_ffi(
  obj : JsValue,
  direction : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_direction"

///|
fn canvas_rendering_context2d_letter_spacing_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "get_letterSpacing"

///|
fn canvas_rendering_context2d_letter_spacing_ffi(obj : JsValue) -> String {
  jsvalue_to_string(canvas_rendering_context2d_letter_spacing_ffi_wasm(obj))
}

///|
fn canvas_rendering_context2d_set_letter_spacing_ffi(
  obj : JsValue,
  letter_spacing : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_letterSpacing"

///|
fn canvas_rendering_context2d_font_kerning_ffi(
  obj : JsValue,
) -> CanvasFontKerning = "webapi_CanvasRenderingContext2D" "get_fontKerning"

///|
fn canvas_rendering_context2d_set_font_kerning_ffi(
  obj : JsValue,
  font_kerning : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_fontKerning"

///|
fn canvas_rendering_context2d_font_stretch_ffi(
  obj : JsValue,
) -> CanvasFontStretch = "webapi_CanvasRenderingContext2D" "get_fontStretch"

///|
fn canvas_rendering_context2d_set_font_stretch_ffi(
  obj : JsValue,
  font_stretch : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_fontStretch"

///|
fn canvas_rendering_context2d_font_variant_caps_ffi(
  obj : JsValue,
) -> CanvasFontVariantCaps = "webapi_CanvasRenderingContext2D" "get_fontVariantCaps"

///|
fn canvas_rendering_context2d_set_font_variant_caps_ffi(
  obj : JsValue,
  font_variant_caps : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_fontVariantCaps"

///|
fn canvas_rendering_context2d_text_rendering_ffi(
  obj : JsValue,
) -> CanvasTextRendering = "webapi_CanvasRenderingContext2D" "get_textRendering"

///|
fn canvas_rendering_context2d_set_text_rendering_ffi(
  obj : JsValue,
  text_rendering : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_textRendering"

///|
fn canvas_rendering_context2d_word_spacing_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2D" "get_wordSpacing"

///|
fn canvas_rendering_context2d_word_spacing_ffi(obj : JsValue) -> String {
  jsvalue_to_string(canvas_rendering_context2d_word_spacing_ffi_wasm(obj))
}

///|
fn canvas_rendering_context2d_set_word_spacing_ffi(
  obj : JsValue,
  word_spacing : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "set_wordSpacing"

///|
fn canvas_rendering_context2d_close_path_ffi(obj : JsValue) -> Unit = "webapi_CanvasRenderingContext2D" "closePath"

///|
fn canvas_rendering_context2d_move_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "moveTo"

///|
fn canvas_rendering_context2d_line_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "lineTo"

///|
fn canvas_rendering_context2d_quadratic_curve_to_ffi(
  obj : JsValue,
  cpx : JsValue,
  cpy : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "quadraticCurveTo"

///|
fn canvas_rendering_context2d_bezier_curve_to_ffi(
  obj : JsValue,
  cp1x : JsValue,
  cp1y : JsValue,
  cp2x : JsValue,
  cp2y : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "bezierCurveTo"

///|
fn canvas_rendering_context2d_arc_to_ffi(
  obj : JsValue,
  x1 : JsValue,
  y1 : JsValue,
  x2 : JsValue,
  y2 : JsValue,
  radius : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "arcTo"

///|
fn canvas_rendering_context2d_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "rect"

///|
fn canvas_rendering_context2d_round_rect_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  w : JsValue,
  h : JsValue,
  radii : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "roundRect"

///|
fn canvas_rendering_context2d_arc_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  radius : JsValue,
  start_angle : JsValue,
  end_angle : JsValue,
  counterclockwise : JsValue,
) -> Unit = "webapi_CanvasRenderingContext2D" "arc"

///|
fn canvas_rendering_context2d_ellipse_ffi(
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
