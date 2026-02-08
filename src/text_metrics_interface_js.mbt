///|
extern "js" fn text_metrics_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn text_metrics_actual_bounding_box_left_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.actualBoundingBoxLeft"

///|
extern "js" fn text_metrics_actual_bounding_box_right_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.actualBoundingBoxRight"

///|
extern "js" fn text_metrics_font_bounding_box_ascent_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fontBoundingBoxAscent"

///|
extern "js" fn text_metrics_font_bounding_box_descent_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fontBoundingBoxDescent"

///|
extern "js" fn text_metrics_actual_bounding_box_ascent_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.actualBoundingBoxAscent"

///|
extern "js" fn text_metrics_actual_bounding_box_descent_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.actualBoundingBoxDescent"

///|
extern "js" fn text_metrics_em_height_ascent_ffi(obj : JsValue) -> JsValue = "(obj) => obj.emHeightAscent"

///|
extern "js" fn text_metrics_em_height_descent_ffi(obj : JsValue) -> JsValue = "(obj) => obj.emHeightDescent"

///|
extern "js" fn text_metrics_hanging_baseline_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hangingBaseline"

///|
extern "js" fn text_metrics_alphabetic_baseline_ffi(obj : JsValue) -> JsValue = "(obj) => obj.alphabeticBaseline"

///|
extern "js" fn text_metrics_ideographic_baseline_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ideographicBaseline"
