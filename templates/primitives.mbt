///|
/// Primitive Type Implementations for TJsValue

///|
pub impl TJsValue for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl TJsValue for Int with to_js(self : Int) -> JsValue = "%identity"

///|
pub impl TJsValue for Int64 with to_js(self : Int64) -> JsValue = "%identity"

///|
pub impl TJsValue for Double with to_js(self : Double) -> JsValue = "%identity"

///|
pub impl TJsValue for String with to_js(self : String) -> JsValue = "%identity"
