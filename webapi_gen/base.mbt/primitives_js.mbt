///|
/// Primitive Type Implementations for TJsValue (JS backend)

///|
pub impl TJsValue for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl TJsValue for Byte with to_js(self : Byte) -> JsValue = "%identity"

///|
pub impl TJsValue for Int with to_js(self : Int) -> JsValue = "%identity"

///|
pub impl TJsValue for UInt with to_js(self : UInt) -> JsValue = "%identity"

///|
pub impl TJsValue for Int64 with to_js(self : Int64) -> JsValue = "%identity"

///|
pub impl TJsValue for UInt64 with to_js(self : UInt64) -> JsValue = "%identity"

///|
pub impl TJsValue for Float with to_js(self : Float) -> JsValue = "%identity"

///|
pub impl TJsValue for Double with to_js(self : Double) -> JsValue = "%identity"

///|
pub impl TJsValue for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TJsValue for Unit with to_js(_self : Unit) -> JsValue = "%identity"

///|
pub impl[T : TJsValue] TJsValue for Array[T] with to_js(self : Array[T]) -> JsValue = "%identity"
