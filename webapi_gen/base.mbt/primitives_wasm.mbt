///|
/// Primitive Type Implementations for TJsValue (wasm-gc backend)
/// On wasm-gc, value types (Bool, Int, Double, etc.) need FFI conversion
/// to externref (JsValue). String keeps %identity with js-string-builtins.

///|
pub impl TJsValue for Bool with to_js(self : Bool) -> JsValue = "webapi_Primitives" "boolToJs"

///|
pub impl TJsValue for Byte with to_js(self : Byte) -> JsValue = "webapi_Primitives" "intToJs"

///|
pub impl TJsValue for Int with to_js(self : Int) -> JsValue = "webapi_Primitives" "intToJs"

///|
pub impl TJsValue for UInt with to_js(self : UInt) -> JsValue = "webapi_Primitives" "uintToJs"

///|
pub impl TJsValue for Int64 with to_js(self : Int64) -> JsValue = "webapi_Primitives" "int64ToJs"

///|
pub impl TJsValue for UInt64 with to_js(self : UInt64) -> JsValue = "webapi_Primitives" "uint64ToJs"

///|
pub impl TJsValue for Float with to_js(self : Float) -> JsValue = "webapi_Primitives" "floatToJs"

///|
pub impl TJsValue for Double with to_js(self : Double) -> JsValue = "webapi_Primitives" "doubleToJs"

///|
pub impl TJsValue for String with to_js(self : String) -> JsValue = "%identity"
