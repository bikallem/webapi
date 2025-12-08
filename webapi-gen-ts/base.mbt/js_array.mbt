///|
/// JsArray - Type representing a JavaScript Array

///|
/// Opaque type for JavaScript arrays
#external
pub type JsArray

///|
pub impl TJsValue for JsArray with to_js(self : JsArray) -> JsValue = "%identity"

///|
/// Create an empty JavaScript array
pub fn JsArray::empty() -> JsArray = "JsArray" "empty"

///|
/// Push a value onto the JavaScript array
pub fn JsArray::push(self : JsArray, value : JsValue) -> Unit = "JsArray" "push"

///|
/// Convert MoonBit Array to JsArray
pub fn[T : TJsValue] array_to_js(arr : Array[T]) -> JsValue {
  let js_arr = JsArray::empty()
  for item in arr {
    js_arr.push(TJsValue::to_js(item))
  }
  TJsValue::to_js(js_arr)
}

///|
/// TJsValue implementation for Array[T]
pub impl[T : TJsValue] TJsValue for Array[T] with to_js(self : Array[T]) -> JsValue {
  array_to_js(self)
}
