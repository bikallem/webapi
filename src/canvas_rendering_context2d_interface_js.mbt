extern "js" fn canvas_rendering_context2d_canvas_ffi(obj: JsValue) -> JsValue = "(obj) => obj.canvas"

extern "js" fn canvas_rendering_context2d_get_context_attributes_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getContextAttributes()"

extern "js" fn canvas_rendering_context2d_save_ffi(obj: JsValue) -> Unit = "(obj) => obj.save()"

extern "js" fn canvas_rendering_context2d_restore_ffi(obj: JsValue) -> Unit = "(obj) => obj.restore()"

extern "js" fn canvas_rendering_context2d_reset_ffi(obj: JsValue) -> Unit = "(obj) => obj.reset()"

extern "js" fn canvas_rendering_context2d_is_context_lost_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isContextLost()"

extern "js" fn canvas_rendering_context2d_scale_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.scale(x, y)"

extern "js" fn canvas_rendering_context2d_rotate_ffi(obj: JsValue, angle: JsValue) -> Unit = "(obj, angle) => obj.rotate(angle)"

extern "js" fn canvas_rendering_context2d_translate_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.translate(x, y)"

extern "js" fn canvas_rendering_context2d_transform_ffi(obj: JsValue, a: JsValue, b: JsValue, c: JsValue, d: JsValue, e: JsValue, f: JsValue) -> Unit = "(obj, a, b, c, d, e, f) => obj.transform(a, b, c, d, e, f)"

extern "js" fn canvas_rendering_context2d_get_transform_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getTransform()"

extern "js" fn canvas_rendering_context2d_set_transform_ffi(obj: JsValue, a: JsValue, b: JsValue, c: JsValue, d: JsValue, e: JsValue, f: JsValue) -> Unit = "(obj, a, b, c, d, e, f) => obj.setTransform(a, b, c, d, e, f)"

extern "js" fn canvas_rendering_context2d_set_transform_2_ffi(obj: JsValue, transform: JsValue) -> Unit = "(obj, transform) => obj.setTransform_2(transform)"

extern "js" fn canvas_rendering_context2d_reset_transform_ffi(obj: JsValue) -> Unit = "(obj) => obj.resetTransform()"

extern "js" fn canvas_rendering_context2d_global_alpha_ffi(obj: JsValue) -> JsValue = "(obj) => obj.globalAlpha"

extern "js" fn canvas_rendering_context2d_set_global_alpha_ffi(obj: JsValue, global_alpha: JsValue) -> Unit = "(obj, globalAlpha) => { obj.globalAlpha = globalAlpha; }"

extern "js" fn canvas_rendering_context2d_global_composite_operation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.globalCompositeOperation"

extern "js" fn canvas_rendering_context2d_set_global_composite_operation_ffi(obj: JsValue, global_composite_operation: JsValue) -> Unit = "(obj, globalCompositeOperation) => { obj.globalCompositeOperation = globalCompositeOperation; }"

extern "js" fn canvas_rendering_context2d_image_smoothing_enabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.imageSmoothingEnabled"

extern "js" fn canvas_rendering_context2d_set_image_smoothing_enabled_ffi(obj: JsValue, image_smoothing_enabled: JsValue) -> Unit = "(obj, imageSmoothingEnabled) => { obj.imageSmoothingEnabled = imageSmoothingEnabled; }"

extern "js" fn canvas_rendering_context2d_image_smoothing_quality_ffi(obj: JsValue) -> JsValue = "(obj) => obj.imageSmoothingQuality"

extern "js" fn canvas_rendering_context2d_set_image_smoothing_quality_ffi(obj: JsValue, image_smoothing_quality: JsValue) -> Unit = "(obj, imageSmoothingQuality) => { obj.imageSmoothingQuality = imageSmoothingQuality; }"

extern "js" fn canvas_rendering_context2d_stroke_style_ffi(obj: JsValue) -> JsValue = "(obj) => obj.strokeStyle"

extern "js" fn canvas_rendering_context2d_set_stroke_style_ffi(obj: JsValue, stroke_style: JsValue) -> Unit = "(obj, strokeStyle) => { obj.strokeStyle = strokeStyle; }"

extern "js" fn canvas_rendering_context2d_fill_style_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fillStyle"

extern "js" fn canvas_rendering_context2d_set_fill_style_ffi(obj: JsValue, fill_style: JsValue) -> Unit = "(obj, fillStyle) => { obj.fillStyle = fillStyle; }"

extern "js" fn canvas_rendering_context2d_create_linear_gradient_ffi(obj: JsValue, x0: JsValue, y0: JsValue, x1: JsValue, y1: JsValue) -> JsValue = "(obj, x0, y0, x1, y1) => obj.createLinearGradient(x0, y0, x1, y1)"

extern "js" fn canvas_rendering_context2d_create_radial_gradient_ffi(obj: JsValue, x0: JsValue, y0: JsValue, r0: JsValue, x1: JsValue, y1: JsValue, r1: JsValue) -> JsValue = "(obj, x0, y0, r0, x1, y1, r1) => obj.createRadialGradient(x0, y0, r0, x1, y1, r1)"

extern "js" fn canvas_rendering_context2d_create_conic_gradient_ffi(obj: JsValue, start_angle: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, start_angle, x, y) => obj.createConicGradient(start_angle, x, y)"

extern "js" fn canvas_rendering_context2d_create_pattern_ffi(obj: JsValue, image: JsValue, repetition: JsValue) -> JsValue = "(obj, image, repetition) => obj.createPattern(image, repetition)"

extern "js" fn canvas_rendering_context2d_shadow_offset_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowOffsetX"

extern "js" fn canvas_rendering_context2d_set_shadow_offset_x_ffi(obj: JsValue, shadow_offset_x: JsValue) -> Unit = "(obj, shadowOffsetX) => { obj.shadowOffsetX = shadowOffsetX; }"

extern "js" fn canvas_rendering_context2d_shadow_offset_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowOffsetY"

extern "js" fn canvas_rendering_context2d_set_shadow_offset_y_ffi(obj: JsValue, shadow_offset_y: JsValue) -> Unit = "(obj, shadowOffsetY) => { obj.shadowOffsetY = shadowOffsetY; }"

extern "js" fn canvas_rendering_context2d_shadow_blur_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowBlur"

extern "js" fn canvas_rendering_context2d_set_shadow_blur_ffi(obj: JsValue, shadow_blur: JsValue) -> Unit = "(obj, shadowBlur) => { obj.shadowBlur = shadowBlur; }"

extern "js" fn canvas_rendering_context2d_shadow_color_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowColor"

extern "js" fn canvas_rendering_context2d_set_shadow_color_ffi(obj: JsValue, shadow_color: JsValue) -> Unit = "(obj, shadowColor) => { obj.shadowColor = shadowColor; }"

extern "js" fn canvas_rendering_context2d_filter_ffi(obj: JsValue) -> JsValue = "(obj) => obj.filter"

extern "js" fn canvas_rendering_context2d_set_filter_ffi(obj: JsValue, filter: JsValue) -> Unit = "(obj, filter) => { obj.filter = filter; }"

extern "js" fn canvas_rendering_context2d_clear_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.clearRect(x, y, w, h)"

extern "js" fn canvas_rendering_context2d_fill_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.fillRect(x, y, w, h)"

extern "js" fn canvas_rendering_context2d_stroke_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.strokeRect(x, y, w, h)"

extern "js" fn canvas_rendering_context2d_begin_path_ffi(obj: JsValue) -> Unit = "(obj) => obj.beginPath()"

extern "js" fn canvas_rendering_context2d_fill_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "(obj, fill_rule) => obj.fill(fill_rule)"

extern "js" fn canvas_rendering_context2d_fill_2_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "(obj, path, fill_rule) => obj.fill_2(path, fill_rule)"

extern "js" fn canvas_rendering_context2d_stroke_ffi(obj: JsValue) -> Unit = "(obj) => obj.stroke()"

extern "js" fn canvas_rendering_context2d_stroke_2_ffi(obj: JsValue, path: JsValue) -> Unit = "(obj, path) => obj.stroke_2(path)"

extern "js" fn canvas_rendering_context2d_clip_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "(obj, fill_rule) => obj.clip(fill_rule)"

extern "js" fn canvas_rendering_context2d_clip_2_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "(obj, path, fill_rule) => obj.clip_2(path, fill_rule)"

extern "js" fn canvas_rendering_context2d_is_point_in_path_ffi(obj: JsValue, x: JsValue, y: JsValue, fill_rule: JsValue) -> JsValue = "(obj, x, y, fill_rule) => obj.isPointInPath(x, y, fill_rule)"

extern "js" fn canvas_rendering_context2d_is_point_in_path_2_ffi(obj: JsValue, path: JsValue, x: JsValue, y: JsValue, fill_rule: JsValue) -> JsValue = "(obj, path, x, y, fill_rule) => obj.isPointInPath_2(path, x, y, fill_rule)"

extern "js" fn canvas_rendering_context2d_is_point_in_stroke_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.isPointInStroke(x, y)"

extern "js" fn canvas_rendering_context2d_is_point_in_stroke_2_ffi(obj: JsValue, path: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, path, x, y) => obj.isPointInStroke_2(path, x, y)"

extern "js" fn canvas_rendering_context2d_draw_focus_if_needed_ffi(obj: JsValue, element: JsValue) -> Unit = "(obj, element) => obj.drawFocusIfNeeded(element)"

extern "js" fn canvas_rendering_context2d_draw_focus_if_needed_2_ffi(obj: JsValue, path: JsValue, element: JsValue) -> Unit = "(obj, path, element) => obj.drawFocusIfNeeded_2(path, element)"

extern "js" fn canvas_rendering_context2d_fill_text_ffi(obj: JsValue, text: JsValue, x: JsValue, y: JsValue, max_width: JsValue) -> Unit = "(obj, text, x, y, max_width) => obj.fillText(text, x, y, max_width)"

extern "js" fn canvas_rendering_context2d_stroke_text_ffi(obj: JsValue, text: JsValue, x: JsValue, y: JsValue, max_width: JsValue) -> Unit = "(obj, text, x, y, max_width) => obj.strokeText(text, x, y, max_width)"

extern "js" fn canvas_rendering_context2d_measure_text_ffi(obj: JsValue, text: JsValue) -> JsValue = "(obj, text) => obj.measureText(text)"

extern "js" fn canvas_rendering_context2d_draw_image_ffi(obj: JsValue, image: JsValue, dx: JsValue, dy: JsValue) -> Unit = "(obj, image, dx, dy) => obj.drawImage(image, dx, dy)"

extern "js" fn canvas_rendering_context2d_draw_image_2_ffi(obj: JsValue, image: JsValue, dx: JsValue, dy: JsValue, dw: JsValue, dh: JsValue) -> Unit = "(obj, image, dx, dy, dw, dh) => obj.drawImage_2(image, dx, dy, dw, dh)"

extern "js" fn canvas_rendering_context2d_draw_image_3_ffi(obj: JsValue, image: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, dx: JsValue, dy: JsValue, dw: JsValue, dh: JsValue) -> Unit = "(obj, image, sx, sy, sw, sh, dx, dy, dw, dh) => obj.drawImage_3(image, sx, sy, sw, sh, dx, dy, dw, dh)"

extern "js" fn canvas_rendering_context2d_create_image_data_ffi(obj: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> JsValue = "(obj, sw, sh, settings) => obj.createImageData(sw, sh, settings)"

extern "js" fn canvas_rendering_context2d_create_image_data_2_ffi(obj: JsValue, image_data: JsValue) -> JsValue = "(obj, image_data) => obj.createImageData_2(image_data)"

extern "js" fn canvas_rendering_context2d_get_image_data_ffi(obj: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> JsValue = "(obj, sx, sy, sw, sh, settings) => obj.getImageData(sx, sy, sw, sh, settings)"

extern "js" fn canvas_rendering_context2d_put_image_data_ffi(obj: JsValue, image_data: JsValue, dx: JsValue, dy: JsValue) -> Unit = "(obj, image_data, dx, dy) => obj.putImageData(image_data, dx, dy)"

extern "js" fn canvas_rendering_context2d_put_image_data_2_ffi(obj: JsValue, image_data: JsValue, dx: JsValue, dy: JsValue, dirty_x: JsValue, dirty_y: JsValue, dirty_width: JsValue, dirty_height: JsValue) -> Unit = "(obj, image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height) => obj.putImageData_2(image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height)"

extern "js" fn canvas_rendering_context2d_line_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lineWidth"

extern "js" fn canvas_rendering_context2d_set_line_width_ffi(obj: JsValue, line_width: JsValue) -> Unit = "(obj, lineWidth) => { obj.lineWidth = lineWidth; }"

extern "js" fn canvas_rendering_context2d_line_cap_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lineCap"

extern "js" fn canvas_rendering_context2d_set_line_cap_ffi(obj: JsValue, line_cap: JsValue) -> Unit = "(obj, lineCap) => { obj.lineCap = lineCap; }"

extern "js" fn canvas_rendering_context2d_line_join_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lineJoin"

extern "js" fn canvas_rendering_context2d_set_line_join_ffi(obj: JsValue, line_join: JsValue) -> Unit = "(obj, lineJoin) => { obj.lineJoin = lineJoin; }"

extern "js" fn canvas_rendering_context2d_miter_limit_ffi(obj: JsValue) -> JsValue = "(obj) => obj.miterLimit"

extern "js" fn canvas_rendering_context2d_set_miter_limit_ffi(obj: JsValue, miter_limit: JsValue) -> Unit = "(obj, miterLimit) => { obj.miterLimit = miterLimit; }"

extern "js" fn canvas_rendering_context2d_set_line_dash_ffi(obj: JsValue, segments: JsValue) -> Unit = "(obj, segments) => obj.setLineDash(segments)"

extern "js" fn canvas_rendering_context2d_get_line_dash_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getLineDash()"

extern "js" fn canvas_rendering_context2d_line_dash_offset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lineDashOffset"

extern "js" fn canvas_rendering_context2d_set_line_dash_offset_ffi(obj: JsValue, line_dash_offset: JsValue) -> Unit = "(obj, lineDashOffset) => { obj.lineDashOffset = lineDashOffset; }"

extern "js" fn canvas_rendering_context2d_lang_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lang"

extern "js" fn canvas_rendering_context2d_set_lang_ffi(obj: JsValue, lang: JsValue) -> Unit = "(obj, lang) => { obj.lang = lang; }"

extern "js" fn canvas_rendering_context2d_font_ffi(obj: JsValue) -> JsValue = "(obj) => obj.font"

extern "js" fn canvas_rendering_context2d_set_font_ffi(obj: JsValue, font: JsValue) -> Unit = "(obj, font) => { obj.font = font; }"

extern "js" fn canvas_rendering_context2d_text_align_ffi(obj: JsValue) -> JsValue = "(obj) => obj.textAlign"

extern "js" fn canvas_rendering_context2d_set_text_align_ffi(obj: JsValue, text_align: JsValue) -> Unit = "(obj, textAlign) => { obj.textAlign = textAlign; }"

extern "js" fn canvas_rendering_context2d_text_baseline_ffi(obj: JsValue) -> JsValue = "(obj) => obj.textBaseline"

extern "js" fn canvas_rendering_context2d_set_text_baseline_ffi(obj: JsValue, text_baseline: JsValue) -> Unit = "(obj, textBaseline) => { obj.textBaseline = textBaseline; }"

extern "js" fn canvas_rendering_context2d_direction_ffi(obj: JsValue) -> JsValue = "(obj) => obj.direction"

extern "js" fn canvas_rendering_context2d_set_direction_ffi(obj: JsValue, direction: JsValue) -> Unit = "(obj, direction) => { obj.direction = direction; }"

extern "js" fn canvas_rendering_context2d_letter_spacing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.letterSpacing"

extern "js" fn canvas_rendering_context2d_set_letter_spacing_ffi(obj: JsValue, letter_spacing: JsValue) -> Unit = "(obj, letterSpacing) => { obj.letterSpacing = letterSpacing; }"

extern "js" fn canvas_rendering_context2d_font_kerning_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fontKerning"

extern "js" fn canvas_rendering_context2d_set_font_kerning_ffi(obj: JsValue, font_kerning: JsValue) -> Unit = "(obj, fontKerning) => { obj.fontKerning = fontKerning; }"

extern "js" fn canvas_rendering_context2d_font_stretch_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fontStretch"

extern "js" fn canvas_rendering_context2d_set_font_stretch_ffi(obj: JsValue, font_stretch: JsValue) -> Unit = "(obj, fontStretch) => { obj.fontStretch = fontStretch; }"

extern "js" fn canvas_rendering_context2d_font_variant_caps_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fontVariantCaps"

extern "js" fn canvas_rendering_context2d_set_font_variant_caps_ffi(obj: JsValue, font_variant_caps: JsValue) -> Unit = "(obj, fontVariantCaps) => { obj.fontVariantCaps = fontVariantCaps; }"

extern "js" fn canvas_rendering_context2d_text_rendering_ffi(obj: JsValue) -> JsValue = "(obj) => obj.textRendering"

extern "js" fn canvas_rendering_context2d_set_text_rendering_ffi(obj: JsValue, text_rendering: JsValue) -> Unit = "(obj, textRendering) => { obj.textRendering = textRendering; }"

extern "js" fn canvas_rendering_context2d_word_spacing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.wordSpacing"

extern "js" fn canvas_rendering_context2d_set_word_spacing_ffi(obj: JsValue, word_spacing: JsValue) -> Unit = "(obj, wordSpacing) => { obj.wordSpacing = wordSpacing; }"

extern "js" fn canvas_rendering_context2d_close_path_ffi(obj: JsValue) -> Unit = "(obj) => obj.closePath()"

extern "js" fn canvas_rendering_context2d_move_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.moveTo(x, y)"

extern "js" fn canvas_rendering_context2d_line_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.lineTo(x, y)"

extern "js" fn canvas_rendering_context2d_quadratic_curve_to_ffi(obj: JsValue, cpx: JsValue, cpy: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, cpx, cpy, x, y) => obj.quadraticCurveTo(cpx, cpy, x, y)"

extern "js" fn canvas_rendering_context2d_bezier_curve_to_ffi(obj: JsValue, cp1x: JsValue, cp1y: JsValue, cp2x: JsValue, cp2y: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, cp1x, cp1y, cp2x, cp2y, x, y) => obj.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)"

extern "js" fn canvas_rendering_context2d_arc_to_ffi(obj: JsValue, x1: JsValue, y1: JsValue, x2: JsValue, y2: JsValue, radius: JsValue) -> Unit = "(obj, x1, y1, x2, y2, radius) => obj.arcTo(x1, y1, x2, y2, radius)"

extern "js" fn canvas_rendering_context2d_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue) -> Unit = "(obj, x, y, w, h) => obj.rect(x, y, w, h)"

extern "js" fn canvas_rendering_context2d_round_rect_ffi(obj: JsValue, x: JsValue, y: JsValue, w: JsValue, h: JsValue, radii: JsValue) -> Unit = "(obj, x, y, w, h, radii) => obj.roundRect(x, y, w, h, radii)"

extern "js" fn canvas_rendering_context2d_arc_ffi(obj: JsValue, x: JsValue, y: JsValue, radius: JsValue, start_angle: JsValue, end_angle: JsValue, counterclockwise: JsValue) -> Unit = "(obj, x, y, radius, start_angle, end_angle, counterclockwise) => obj.arc(x, y, radius, start_angle, end_angle, counterclockwise)"

extern "js" fn canvas_rendering_context2d_ellipse_ffi(obj: JsValue, x: JsValue, y: JsValue, radius_x: JsValue, radius_y: JsValue, rotation: JsValue, start_angle: JsValue, end_angle: JsValue, counterclockwise: JsValue) -> Unit = "(obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => obj.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)"