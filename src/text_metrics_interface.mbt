// Do not edit. This file is generated.
// MoonBit type: TextMetrics
// Specifications: html.idl

///|
#external
pub type TextMetrics

///|
pub impl TJsValue for TextMetrics with to_js(self : TextMetrics) -> JsValue = "%identity"

///|
pub fn[T : TTextMetrics] TextMetrics::into(self : TextMetrics) -> T = "%identity"

///|
pub impl TTextMetrics for TextMetrics

///|
pub trait TTextMetrics: TJsValue {
  width(self : Self) -> Double = _
  actual_bounding_box_left(self : Self) -> Double = _
  actual_bounding_box_right(self : Self) -> Double = _
  font_bounding_box_ascent(self : Self) -> Double = _
  font_bounding_box_descent(self : Self) -> Double = _
  actual_bounding_box_ascent(self : Self) -> Double = _
  actual_bounding_box_descent(self : Self) -> Double = _
  em_height_ascent(self : Self) -> Double = _
  em_height_descent(self : Self) -> Double = _
  hanging_baseline(self : Self) -> Double = _
  alphabetic_baseline(self : Self) -> Double = _
  ideographic_baseline(self : Self) -> Double = _
}

///|
extern "js" fn text_metrics_width_ffi(obj : JsValue) -> Double = "(obj) => obj.width"

///|
impl TTextMetrics with width(self : Self) -> Double {
  text_metrics_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_actual_bounding_box_left_ffi(
  obj : JsValue,
) -> Double = "(obj) => obj.actualBoundingBoxLeft"

///|
impl TTextMetrics with actual_bounding_box_left(self : Self) -> Double {
  text_metrics_actual_bounding_box_left_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_actual_bounding_box_right_ffi(
  obj : JsValue,
) -> Double = "(obj) => obj.actualBoundingBoxRight"

///|
impl TTextMetrics with actual_bounding_box_right(self : Self) -> Double {
  text_metrics_actual_bounding_box_right_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_font_bounding_box_ascent_ffi(
  obj : JsValue,
) -> Double = "(obj) => obj.fontBoundingBoxAscent"

///|
impl TTextMetrics with font_bounding_box_ascent(self : Self) -> Double {
  text_metrics_font_bounding_box_ascent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_font_bounding_box_descent_ffi(
  obj : JsValue,
) -> Double = "(obj) => obj.fontBoundingBoxDescent"

///|
impl TTextMetrics with font_bounding_box_descent(self : Self) -> Double {
  text_metrics_font_bounding_box_descent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_actual_bounding_box_ascent_ffi(
  obj : JsValue,
) -> Double = "(obj) => obj.actualBoundingBoxAscent"

///|
impl TTextMetrics with actual_bounding_box_ascent(self : Self) -> Double {
  text_metrics_actual_bounding_box_ascent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_actual_bounding_box_descent_ffi(
  obj : JsValue,
) -> Double = "(obj) => obj.actualBoundingBoxDescent"

///|
impl TTextMetrics with actual_bounding_box_descent(self : Self) -> Double {
  text_metrics_actual_bounding_box_descent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_em_height_ascent_ffi(obj : JsValue) -> Double = "(obj) => obj.emHeightAscent"

///|
impl TTextMetrics with em_height_ascent(self : Self) -> Double {
  text_metrics_em_height_ascent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_em_height_descent_ffi(obj : JsValue) -> Double = "(obj) => obj.emHeightDescent"

///|
impl TTextMetrics with em_height_descent(self : Self) -> Double {
  text_metrics_em_height_descent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_hanging_baseline_ffi(obj : JsValue) -> Double = "(obj) => obj.hangingBaseline"

///|
impl TTextMetrics with hanging_baseline(self : Self) -> Double {
  text_metrics_hanging_baseline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_alphabetic_baseline_ffi(obj : JsValue) -> Double = "(obj) => obj.alphabeticBaseline"

///|
impl TTextMetrics with alphabetic_baseline(self : Self) -> Double {
  text_metrics_alphabetic_baseline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_metrics_ideographic_baseline_ffi(obj : JsValue) -> Double = "(obj) => obj.ideographicBaseline"

///|
impl TTextMetrics with ideographic_baseline(self : Self) -> Double {
  text_metrics_ideographic_baseline_ffi(TJsValue::to_js(self))
}
