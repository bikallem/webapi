///|
fn js_array_to_js_ffi(arr : JsArray) -> JsValue = "webapi_Primitives" "arrayToJs"

///|
fn js_array_empty_ffi() -> JsArray = "webapi_Primitives" "arrayEmpty"

///|
fn js_array_push_ffi(arr : JsArray, value : JsValue) -> Unit = "webapi_Primitives" "arrayPush"

///|
fn js_array_length_ffi(arr : JsArray) -> Int = "webapi_Primitives" "arrayLength"

///|
fn js_array_get_ffi(arr : JsArray, index : Int) -> JsValue = "webapi_Primitives" "arrayGet"

///|
pub impl TJsValue for JsArray with to_js(self : JsArray) -> JsValue {
  js_array_to_js_ffi(self)
}

///|
/// wasm-gc backend: build a host JS array explicitly.
pub fn[T : TJsValue] JsArray::from_array(items : Array[T]) -> JsArray {
  let arr = js_array_empty_ffi()
  for item in items {
    js_array_push_ffi(arr, TJsValue::to_js(item))
  }
  arr
}

///|
/// wasm-gc backend: copy host JS array items into a MoonBit array.
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
fn JsArray::to_string_array(self : JsArray) -> Array[String] {
  let len = js_array_length_ffi(self)
  let out : Array[String] = []
  for i in 0..<len {
    out.push(jsvalue_to_string(js_array_get_ffi(self, i)))
  }
  out
}
