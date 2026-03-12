///|
/// Primitive Type Implementations for TJsValue (JS backend)

///|
#cfg(target="js")
pub impl TJsValue for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for Byte with to_js(self : Byte) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for Int with to_js(self : Int) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for UInt with to_js(self : UInt) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for Int64 with to_js(self : Int64) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for UInt64 with to_js(self : UInt64) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for Float with to_js(self : Float) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for Double with to_js(self : Double) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for String with to_js(self : String) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for Unit with to_js(_self : Unit) -> JsValue = "%identity"

///|
#cfg(target="js")
pub impl[T : TJsValue] TJsValue for Array[T] with to_js(self : Array[T]) -> JsValue = "%identity"

///|
/// Primitive Type Implementations for TJsValue (wasm-gc backend)
/// On wasm-gc, value types (Bool, Int, Double, etc.) need FFI conversion
/// to externref (JsValue). String keeps %identity with js-string-builtins.
/// Note: trait impl stubs (impl T with method = "mod" "func") are not supported
/// on wasm-gc, so we use helper FFI functions + trait impl bodies.

///|
#cfg(target="wasm-gc")
fn bool_to_js_ffi(v : Bool) -> JsValue = "webapi_Primitives" "boolToJs"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for Bool with to_js(self) -> JsValue {
  bool_to_js_ffi(self)
}

///|
#cfg(target="wasm-gc")
fn byte_to_js_ffi(v : Byte) -> JsValue = "webapi_Primitives" "intToJs"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for Byte with to_js(self) -> JsValue {
  byte_to_js_ffi(self)
}

///|
#cfg(target="wasm-gc")
fn int_to_js_ffi(v : Int) -> JsValue = "webapi_Primitives" "intToJs"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for Int with to_js(self) -> JsValue {
  int_to_js_ffi(self)
}

///|
#cfg(target="wasm-gc")
fn uint_to_js_ffi(v : UInt) -> JsValue = "webapi_Primitives" "uintToJs"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for UInt with to_js(self) -> JsValue {
  uint_to_js_ffi(self)
}

///|
#cfg(target="wasm-gc")
fn int64_to_js_ffi(v : Int64) -> JsValue = "webapi_Primitives" "int64ToJs"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for Int64 with to_js(self) -> JsValue {
  int64_to_js_ffi(self)
}

///|
#cfg(target="wasm-gc")
fn uint64_to_js_ffi(v : UInt64) -> JsValue = "webapi_Primitives" "uint64ToJs"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for UInt64 with to_js(self) -> JsValue {
  uint64_to_js_ffi(self)
}

///|
#cfg(target="wasm-gc")
fn float_to_js_ffi(v : Float) -> JsValue = "webapi_Primitives" "floatToJs"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for Float with to_js(self) -> JsValue {
  float_to_js_ffi(self)
}

///|
#cfg(target="wasm-gc")
fn double_to_js_ffi(v : Double) -> JsValue = "webapi_Primitives" "doubleToJs"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for Double with to_js(self) -> JsValue {
  double_to_js_ffi(self)
}

///|
#cfg(target="wasm-gc")
pub impl TJsValue for String with to_js(self : String) -> JsValue = "%identity"

///|
#cfg(target="wasm-gc")
fn js_array_empty() -> JsValue = "webapi_Primitives" "arrayEmpty"

///|
#cfg(target="wasm-gc")
fn js_array_push(arr : JsValue, value : JsValue) -> Unit = "webapi_Primitives" "arrayPush"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for Unit with to_js(_self) -> JsValue {
  JsValue::undefined()
}

///|
#cfg(target="wasm-gc")
pub impl[T : TJsValue] TJsValue for Array[T] with to_js(self : Array[T]) -> JsValue {
  let arr = js_array_empty()
  for item in self {
    js_array_push(arr, TJsValue::to_js(item))
  }
  arr
}
