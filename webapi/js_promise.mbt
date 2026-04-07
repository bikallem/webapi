///|
/// Opaque type representing a JavaScript Promise
#external
pub type JsPromise[T]

///|
pub impl[T] TJsValue for JsPromise[T] with to_js(self) -> JsValue = "%identity"

///|
/// Creates a resolved Promise with the given value.
pub fn[T : TJsValue] JsPromise::resolve(value : T) -> JsPromise[T] {
  js_promise_resolve_ffi(value.to_js()).unsafe_cast()
}

///|
/// Creates a rejected Promise with the given reason.
pub fn[T] JsPromise::reject(reason : JsValue) -> JsPromise[T] {
  js_promise_reject_ffi(reason).unsafe_cast()
}

///|
/// Chains a callback to be called when the Promise resolves.
/// Returns a new Promise for the callback's return value.
pub fn[T : FromJsAny, U : TJsValue] JsPromise::then(
  self : JsPromise[T],
  on_fulfilled : (T) -> U,
) -> JsPromise[U] {
  let f : (JsAny) -> JsValue = fn(value) {
    on_fulfilled(FromJsAny::from_js_any(value)).to_js()
  }
  js_promise_then_ffi(self.to_js(), f).unsafe_cast()
}

///|
/// Chains a callback to be called when the Promise is rejected.
/// Returns a new Promise.
pub fn[T : TJsValue] JsPromise::catch_(
  self : JsPromise[T],
  on_rejected : (JsValue) -> T,
) -> JsPromise[T] {
  let f : (JsAny) -> JsValue = fn(reason) {
    on_rejected(FromJsAny::from_js_any(reason)).to_js()
  }
  js_promise_catch_ffi(self.to_js(), f).unsafe_cast()
}

///|
/// Registers a callback to be called when the Promise is settled
/// (either fulfilled or rejected). Returns a new Promise.
pub fn[T] JsPromise::finally_(
  self : JsPromise[T],
  on_finally : () -> Unit,
) -> JsPromise[T] {
  js_promise_finally_ffi(self.to_js(), on_finally).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn js_promise_resolve_ffi(value : JsValue) -> JsValue = "(value) => Promise.resolve(value)"

///|
#cfg(target="js")
extern "js" fn js_promise_reject_ffi(reason : JsValue) -> JsValue = "(reason) => Promise.reject(reason)"

///|
#cfg(target="js")
extern "js" fn js_promise_then_ffi(
  promise : JsValue,
  on_fulfilled : (JsAny) -> JsValue,
) -> JsValue = "(p, f) => p.then(f)"

///|
#cfg(target="js")
extern "js" fn js_promise_catch_ffi(
  promise : JsValue,
  on_rejected : (JsAny) -> JsValue,
) -> JsValue = "(p, f) => p.catch(f)"

///|
#cfg(target="js")
extern "js" fn js_promise_finally_ffi(
  promise : JsValue,
  on_finally : () -> Unit,
) -> JsValue = "(p, f) => p.finally(f)"

///|
#cfg(target="js")
pub impl FromJsAny for Bool with from_js_any(value : JsAny) -> Bool = "%identity"

///|
#cfg(target="js")
pub impl FromJsAny for Int with from_js_any(value : JsAny) -> Int = "%identity"

///|
#cfg(target="js")
pub impl FromJsAny for UInt with from_js_any(value : JsAny) -> UInt = "%identity"

///|
#cfg(target="js")
pub impl FromJsAny for Int64 with from_js_any(value : JsAny) -> Int64 = "%identity"

///|
#cfg(target="js")
pub impl FromJsAny for UInt64 with from_js_any(value : JsAny) -> UInt64 = "%identity"

///|
#cfg(target="js")
pub impl FromJsAny for Float with from_js_any(value : JsAny) -> Float = "%identity"

///|
#cfg(target="js")
pub impl FromJsAny for Double with from_js_any(value : JsAny) -> Double = "%identity"

///|
#cfg(target="js")
pub impl FromJsAny for Unit with from_js_any(_value : JsAny) -> Unit = "%identity"

///|
#cfg(target="js")
pub impl[T : FromJsAny] FromJsAny for Array[T] with from_js_any(value : JsAny) -> Array[
  T,
] = "%identity"

///|
#cfg(target="wasm-gc")
fn js_promise_resolve_ffi(value : JsValue) -> JsValue = "webapi_JsPromise" "resolve"

///|
#cfg(target="wasm-gc")
fn js_promise_reject_ffi(reason : JsValue) -> JsValue = "webapi_JsPromise" "reject"

///|
#cfg(target="wasm-gc")
fn js_promise_then_ffi(
  promise : JsValue,
  on_fulfilled : (JsAny) -> JsValue,
) -> JsValue = "webapi_JsPromise" "then"

///|
#cfg(target="wasm-gc")
fn js_promise_catch_ffi(
  promise : JsValue,
  on_rejected : (JsAny) -> JsValue,
) -> JsValue = "webapi_JsPromise" "catch"

///|
#cfg(target="wasm-gc")
fn js_promise_finally_ffi(
  promise : JsValue,
  on_finally : () -> Unit,
) -> JsValue = "webapi_JsPromise" "finally"

///|
#cfg(target="wasm-gc")
fn js_any_to_bool_ffi(value : JsAny) -> Bool = "webapi_JsPromise" "toBool"

///|
#cfg(target="wasm-gc")
pub impl FromJsAny for Bool with from_js_any(value : JsAny) -> Bool {
  js_any_to_bool_ffi(value)
}

///|
#cfg(target="wasm-gc")
fn js_any_to_int_ffi(value : JsAny) -> Int = "webapi_JsPromise" "toInt"

///|
#cfg(target="wasm-gc")
pub impl FromJsAny for Int with from_js_any(value : JsAny) -> Int {
  js_any_to_int_ffi(value)
}

///|
#cfg(target="wasm-gc")
fn js_any_to_uint_ffi(value : JsAny) -> UInt = "webapi_JsPromise" "toUint"

///|
#cfg(target="wasm-gc")
pub impl FromJsAny for UInt with from_js_any(value : JsAny) -> UInt {
  js_any_to_uint_ffi(value)
}

///|
#cfg(target="wasm-gc")
fn js_any_to_int64_ffi(value : JsAny) -> Int64 = "webapi_JsPromise" "toInt64"

///|
#cfg(target="wasm-gc")
pub impl FromJsAny for Int64 with from_js_any(value : JsAny) -> Int64 {
  js_any_to_int64_ffi(value)
}

///|
#cfg(target="wasm-gc")
fn js_any_to_uint64_ffi(value : JsAny) -> UInt64 = "webapi_JsPromise" "toUint64"

///|
#cfg(target="wasm-gc")
pub impl FromJsAny for UInt64 with from_js_any(value : JsAny) -> UInt64 {
  js_any_to_uint64_ffi(value)
}

///|
#cfg(target="wasm-gc")
fn js_any_to_float_ffi(value : JsAny) -> Float = "webapi_JsPromise" "toFloat"

///|
#cfg(target="wasm-gc")
pub impl FromJsAny for Float with from_js_any(value : JsAny) -> Float {
  js_any_to_float_ffi(value)
}

///|
#cfg(target="wasm-gc")
fn js_any_to_double_ffi(value : JsAny) -> Double = "webapi_JsPromise" "toDouble"

///|
#cfg(target="wasm-gc")
pub impl FromJsAny for Double with from_js_any(value : JsAny) -> Double {
  js_any_to_double_ffi(value)
}

///|
#cfg(target="wasm-gc")
pub impl FromJsAny for Unit with from_js_any(_value : JsAny) -> Unit {
  ()
}

///|
#cfg(target="wasm-gc")
fn js_array_length_for_promise(arr : JsAny) -> Int = "webapi_Primitives" "arrayLength"

///|
#cfg(target="wasm-gc")
fn js_array_get_for_promise(arr : JsAny, index : Int) -> JsAny = "webapi_Primitives" "arrayGet"

///|
#cfg(target="wasm-gc")
pub impl[T : FromJsAny] FromJsAny for Array[T] with from_js_any(value : JsAny) -> Array[
  T,
] {
  let len = js_array_length_for_promise(value)
  let arr : Array[T] = []
  for i = 0; i < len; i = i + 1 {
    arr.push(FromJsAny::from_js_any(js_array_get_for_promise(value, i)))
  }
  arr
}
