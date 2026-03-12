///|
/// JsArray - Opaque JavaScript array reference for FFI-safe wasm callback stubs.
/// Use this when `Array[T]` cannot be used directly in extern stub signatures.

///|
#external
pub type JsArray

///|
pub impl FromJsAny for JsArray with from_js_any(value : JsAny) -> JsArray = "%identity"

///|
#cfg(target="js")
pub impl TJsValue for JsArray with to_js(self : JsArray) -> JsValue = "%identity"

///|
/// JS backend: MoonBit Array already maps to JS Array.
#cfg(target="js")
pub fn[T : TJsValue] JsArray::from_array(items : Array[T]) -> JsArray = "%identity"

///|
/// JS backend: JsArray is directly castable to MoonBit Array.
#cfg(target="js")
pub fn[T] JsArray::to_array(self : JsArray) -> Array[T] = "%identity"

///|
#cfg(target="wasm-gc")
fn js_array_to_js_ffi(arr : JsArray) -> JsValue = "webapi_Primitives" "arrayToJs"

///|
#cfg(target="wasm-gc")
fn js_array_empty_ffi() -> JsArray = "webapi_Primitives" "arrayEmpty"

///|
#cfg(target="wasm-gc")
fn js_array_push_ffi(arr : JsArray, value : JsValue) -> Unit = "webapi_Primitives" "arrayPush"

///|
#cfg(target="wasm-gc")
fn js_array_length_ffi(arr : JsArray) -> Int = "webapi_Primitives" "arrayLength"

///|
#cfg(target="wasm-gc")
fn js_array_get_ffi(arr : JsArray, index : Int) -> JsValue = "webapi_Primitives" "arrayGet"

///|
#cfg(target="wasm-gc")
pub impl TJsValue for JsArray with to_js(self : JsArray) -> JsValue {
  js_array_to_js_ffi(self)
}

///|
/// wasm-gc backend: build a host JS array explicitly.
#cfg(target="wasm-gc")
pub fn[T : TJsValue] JsArray::from_array(items : Array[T]) -> JsArray {
  let arr = js_array_empty_ffi()
  for item in items {
    js_array_push_ffi(arr, TJsValue::to_js(item))
  }
  arr
}

///|
/// wasm-gc backend: copy host JS array items into a MoonBit array.
#cfg(target="wasm-gc")
pub fn[T] JsArray::to_array(self : JsArray) -> Array[T] {
  let len = js_array_length_ffi(self)
  let out : Array[T] = []
  for i in 0..<len {
    out.push(js_array_get_ffi(self, i).unsafe_cast())
  }
  out
}

///|
/// wasm-gc backend: convert host JS array items to non-nullable String.
#cfg(target="wasm-gc")
fn JsArray::to_string_array(self : JsArray) -> Array[String] {
  let len = js_array_length_ffi(self)
  let out : Array[String] = []
  for i in 0..<len {
    out.push(jsvalue_to_string(js_array_get_ffi(self, i)))
  }
  out
}

///|
/// wasm-gc backend: convert host JS array items through FromJsAny.
#cfg(target="wasm-gc")
pub fn[T : FromJsAny] JsArray::to_value_array(self : JsArray) -> Array[T] {
  let len = js_array_length_ffi(self)
  let out : Array[T] = []
  for i in 0..<len {
    out.push(
      FromJsAny::from_js_any(jsvalue_to_jsany(js_array_get_ffi(self, i))),
    )
  }
  out
}
