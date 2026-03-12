extern "js" fn text_metrics_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn text_metrics_width_ffi(obj: JsValue) -> Double {
  text_metrics_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_actual_bounding_box_left_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.actualBoundingBoxLeft"

///|
fn text_metrics_actual_bounding_box_left_ffi(obj: JsValue) -> Double {
  text_metrics_actual_bounding_box_left_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_actual_bounding_box_right_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.actualBoundingBoxRight"

///|
fn text_metrics_actual_bounding_box_right_ffi(obj: JsValue) -> Double {
  text_metrics_actual_bounding_box_right_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_font_bounding_box_ascent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fontBoundingBoxAscent"

///|
fn text_metrics_font_bounding_box_ascent_ffi(obj: JsValue) -> Double {
  text_metrics_font_bounding_box_ascent_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_font_bounding_box_descent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fontBoundingBoxDescent"

///|
fn text_metrics_font_bounding_box_descent_ffi(obj: JsValue) -> Double {
  text_metrics_font_bounding_box_descent_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_actual_bounding_box_ascent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.actualBoundingBoxAscent"

///|
fn text_metrics_actual_bounding_box_ascent_ffi(obj: JsValue) -> Double {
  text_metrics_actual_bounding_box_ascent_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_actual_bounding_box_descent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.actualBoundingBoxDescent"

///|
fn text_metrics_actual_bounding_box_descent_ffi(obj: JsValue) -> Double {
  text_metrics_actual_bounding_box_descent_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_em_height_ascent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.emHeightAscent"

///|
fn text_metrics_em_height_ascent_ffi(obj: JsValue) -> Double {
  text_metrics_em_height_ascent_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_em_height_descent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.emHeightDescent"

///|
fn text_metrics_em_height_descent_ffi(obj: JsValue) -> Double {
  text_metrics_em_height_descent_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_hanging_baseline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hangingBaseline"

///|
fn text_metrics_hanging_baseline_ffi(obj: JsValue) -> Double {
  text_metrics_hanging_baseline_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_alphabetic_baseline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.alphabeticBaseline"

///|
fn text_metrics_alphabetic_baseline_ffi(obj: JsValue) -> Double {
  text_metrics_alphabetic_baseline_ffi_js(obj).unsafe_cast()
}

extern "js" fn text_metrics_ideographic_baseline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ideographicBaseline"

///|
fn text_metrics_ideographic_baseline_ffi(obj: JsValue) -> Double {
  text_metrics_ideographic_baseline_ffi_js(obj).unsafe_cast()
}