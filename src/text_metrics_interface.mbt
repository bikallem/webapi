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
pub trait TTextMetrics: TJsValue {}
