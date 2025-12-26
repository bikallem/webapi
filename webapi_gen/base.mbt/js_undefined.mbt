///|
#external
pub type JsUndefined

///|
pub impl TJsValue for JsUndefined with to_js(self : JsUndefined) -> JsValue = "%identity"

///|
#as_free_fn
pub fn JsUndefined::undefined() -> JsUndefined {
  JsValue::unsafe_cast(undefined_ffi())
}
