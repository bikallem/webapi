///|
pub impl TJsValue for JsArray with to_js(self : JsArray) -> JsValue = "%identity"

///|
/// JS backend: MoonBit Array already maps to JS Array.
pub fn[T : TJsValue] JsArray::from_array(items : Array[T]) -> JsArray = "%identity"

///|
/// JS backend: JsArray is directly castable to MoonBit Array.
pub fn[T] JsArray::to_array(self : JsArray) -> Array[T] = "%identity"
