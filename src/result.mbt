// Auto-generated MoonBit bindings for Result union type

// Do not edit manually

///|
#external
pub type Result

///|
pub(open) trait TResult {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TResult] Result::into(self : Result) -> T = "%identity"

///|
pub impl TResult for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TResult for ArrayBuffer with to_js(self : ArrayBuffer) -> JsValue = "%identity"
