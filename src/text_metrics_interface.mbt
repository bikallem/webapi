// Do not edit. This file is generated.
// MoonBit type: TextMetrics
// Specifications: html.idl

/// [TextMetrics](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics)
#external
pub type TextMetrics

pub impl TJsValue for TextMetrics with to_js(self: TextMetrics) -> JsValue = "%identity"

pub impl FromJsAny for TextMetrics with from_js_any(value : JsAny) -> TextMetrics = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TTextMetrics] TextMetrics::into(self : TextMetrics) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TTextMetrics] TextMetrics::unsafe_into(self : TextMetrics) -> T = "%identity"

pub impl HasConstructor for TextMetrics with constructor_name() { "TextMetrics" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTextMetrics + HasConstructor] TextMetrics::try_into(self : TextMetrics) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TTextMetrics for TextMetrics

/// [TextMetrics](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics) interface.
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

/// [TextMetrics.width](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/width)
impl TTextMetrics with width(self : Self) -> Double {
  text_metrics_width_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.actualBoundingBoxLeft](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/actualBoundingBoxLeft)
impl TTextMetrics with actual_bounding_box_left(self : Self) -> Double {
  text_metrics_actual_bounding_box_left_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.actualBoundingBoxRight](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/actualBoundingBoxRight)
impl TTextMetrics with actual_bounding_box_right(self : Self) -> Double {
  text_metrics_actual_bounding_box_right_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.fontBoundingBoxAscent](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/fontBoundingBoxAscent)
impl TTextMetrics with font_bounding_box_ascent(self : Self) -> Double {
  text_metrics_font_bounding_box_ascent_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.fontBoundingBoxDescent](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/fontBoundingBoxDescent)
impl TTextMetrics with font_bounding_box_descent(self : Self) -> Double {
  text_metrics_font_bounding_box_descent_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.actualBoundingBoxAscent](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/actualBoundingBoxAscent)
impl TTextMetrics with actual_bounding_box_ascent(self : Self) -> Double {
  text_metrics_actual_bounding_box_ascent_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.actualBoundingBoxDescent](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/actualBoundingBoxDescent)
impl TTextMetrics with actual_bounding_box_descent(self : Self) -> Double {
  text_metrics_actual_bounding_box_descent_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.emHeightAscent](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/emHeightAscent)
impl TTextMetrics with em_height_ascent(self : Self) -> Double {
  text_metrics_em_height_ascent_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.emHeightDescent](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/emHeightDescent)
impl TTextMetrics with em_height_descent(self : Self) -> Double {
  text_metrics_em_height_descent_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.hangingBaseline](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/hangingBaseline)
impl TTextMetrics with hanging_baseline(self : Self) -> Double {
  text_metrics_hanging_baseline_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.alphabeticBaseline](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/alphabeticBaseline)
impl TTextMetrics with alphabetic_baseline(self : Self) -> Double {
  text_metrics_alphabetic_baseline_ffi(TJsValue::to_js(self))
}

/// [TextMetrics.ideographicBaseline](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics/ideographicBaseline)
impl TTextMetrics with ideographic_baseline(self : Self) -> Double {
  text_metrics_ideographic_baseline_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn text_metrics_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn text_metrics_width_ffi(obj: JsValue) -> Double {
  text_metrics_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_actual_bounding_box_left_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.actualBoundingBoxLeft"

///|
#cfg(target="js")
fn text_metrics_actual_bounding_box_left_ffi(obj: JsValue) -> Double {
  text_metrics_actual_bounding_box_left_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_actual_bounding_box_right_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.actualBoundingBoxRight"

///|
#cfg(target="js")
fn text_metrics_actual_bounding_box_right_ffi(obj: JsValue) -> Double {
  text_metrics_actual_bounding_box_right_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_font_bounding_box_ascent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fontBoundingBoxAscent"

///|
#cfg(target="js")
fn text_metrics_font_bounding_box_ascent_ffi(obj: JsValue) -> Double {
  text_metrics_font_bounding_box_ascent_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_font_bounding_box_descent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fontBoundingBoxDescent"

///|
#cfg(target="js")
fn text_metrics_font_bounding_box_descent_ffi(obj: JsValue) -> Double {
  text_metrics_font_bounding_box_descent_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_actual_bounding_box_ascent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.actualBoundingBoxAscent"

///|
#cfg(target="js")
fn text_metrics_actual_bounding_box_ascent_ffi(obj: JsValue) -> Double {
  text_metrics_actual_bounding_box_ascent_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_actual_bounding_box_descent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.actualBoundingBoxDescent"

///|
#cfg(target="js")
fn text_metrics_actual_bounding_box_descent_ffi(obj: JsValue) -> Double {
  text_metrics_actual_bounding_box_descent_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_em_height_ascent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.emHeightAscent"

///|
#cfg(target="js")
fn text_metrics_em_height_ascent_ffi(obj: JsValue) -> Double {
  text_metrics_em_height_ascent_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_em_height_descent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.emHeightDescent"

///|
#cfg(target="js")
fn text_metrics_em_height_descent_ffi(obj: JsValue) -> Double {
  text_metrics_em_height_descent_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_hanging_baseline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hangingBaseline"

///|
#cfg(target="js")
fn text_metrics_hanging_baseline_ffi(obj: JsValue) -> Double {
  text_metrics_hanging_baseline_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_alphabetic_baseline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.alphabeticBaseline"

///|
#cfg(target="js")
fn text_metrics_alphabetic_baseline_ffi(obj: JsValue) -> Double {
  text_metrics_alphabetic_baseline_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_metrics_ideographic_baseline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ideographicBaseline"

///|
#cfg(target="js")
fn text_metrics_ideographic_baseline_ffi(obj: JsValue) -> Double {
  text_metrics_ideographic_baseline_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn text_metrics_width_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_width"

#cfg(target="wasm-gc")
fn text_metrics_actual_bounding_box_left_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_actualBoundingBoxLeft"

#cfg(target="wasm-gc")
fn text_metrics_actual_bounding_box_right_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_actualBoundingBoxRight"

#cfg(target="wasm-gc")
fn text_metrics_font_bounding_box_ascent_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_fontBoundingBoxAscent"

#cfg(target="wasm-gc")
fn text_metrics_font_bounding_box_descent_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_fontBoundingBoxDescent"

#cfg(target="wasm-gc")
fn text_metrics_actual_bounding_box_ascent_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_actualBoundingBoxAscent"

#cfg(target="wasm-gc")
fn text_metrics_actual_bounding_box_descent_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_actualBoundingBoxDescent"

#cfg(target="wasm-gc")
fn text_metrics_em_height_ascent_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_emHeightAscent"

#cfg(target="wasm-gc")
fn text_metrics_em_height_descent_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_emHeightDescent"

#cfg(target="wasm-gc")
fn text_metrics_hanging_baseline_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_hangingBaseline"

#cfg(target="wasm-gc")
fn text_metrics_alphabetic_baseline_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_alphabeticBaseline"

#cfg(target="wasm-gc")
fn text_metrics_ideographic_baseline_ffi(obj: JsValue) -> Double = "webapi_TextMetrics" "get_ideographicBaseline"