///|
#external
pub type JsUndefined

///|
pub impl TJsValue for JsUndefined with to_js(self : JsUndefined) -> JsValue = "%identity"

///|
pub impl FromJsAny for JsUndefined with from_js_any(value : JsAny) -> JsUndefined = "%identity"

///|
#as_free_fn
pub fn JsUndefined::undefined() -> JsUndefined {
  JsValue::unsafe_cast(JsValue::undefined())
}
