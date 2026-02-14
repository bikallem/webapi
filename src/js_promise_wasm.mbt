///|
fn js_promise_resolve_ffi(value : JsValue) -> JsValue = "webapi_JsPromise" "resolve"

///|
fn js_promise_reject_ffi(reason : JsValue) -> JsValue = "webapi_JsPromise" "reject"

///|
fn js_promise_then_ffi(
  promise : JsValue,
  on_fulfilled : (JsAny) -> JsValue,
) -> JsValue = "webapi_JsPromise" "then"

///|
fn js_promise_catch_ffi(
  promise : JsValue,
  on_rejected : (JsAny) -> JsValue,
) -> JsValue = "webapi_JsPromise" "catch"

///|
fn js_promise_finally_ffi(
  promise : JsValue,
  on_finally : () -> Unit,
) -> JsValue = "webapi_JsPromise" "finally"

///|
fn js_any_to_bool_ffi(value : JsAny) -> Bool = "webapi_JsPromise" "toBool"

///|
pub impl FromJsAny for Bool with from_js_any(value : JsAny) -> Bool {
  js_any_to_bool_ffi(value)
}

///|
fn js_any_to_int_ffi(value : JsAny) -> Int = "webapi_JsPromise" "toInt"

///|
pub impl FromJsAny for Int with from_js_any(value : JsAny) -> Int {
  js_any_to_int_ffi(value)
}

///|
fn js_any_to_uint_ffi(value : JsAny) -> UInt = "webapi_JsPromise" "toUint"

///|
pub impl FromJsAny for UInt with from_js_any(value : JsAny) -> UInt {
  js_any_to_uint_ffi(value)
}

///|
fn js_any_to_int64_ffi(value : JsAny) -> Int64 = "webapi_JsPromise" "toInt64"

///|
pub impl FromJsAny for Int64 with from_js_any(value : JsAny) -> Int64 {
  js_any_to_int64_ffi(value)
}

///|
fn js_any_to_uint64_ffi(value : JsAny) -> UInt64 = "webapi_JsPromise" "toUint64"

///|
pub impl FromJsAny for UInt64 with from_js_any(value : JsAny) -> UInt64 {
  js_any_to_uint64_ffi(value)
}

///|
fn js_any_to_float_ffi(value : JsAny) -> Float = "webapi_JsPromise" "toFloat"

///|
pub impl FromJsAny for Float with from_js_any(value : JsAny) -> Float {
  js_any_to_float_ffi(value)
}

///|
fn js_any_to_double_ffi(value : JsAny) -> Double = "webapi_JsPromise" "toDouble"

///|
pub impl FromJsAny for Double with from_js_any(value : JsAny) -> Double {
  js_any_to_double_ffi(value)
}

///|
pub impl FromJsAny for Unit with from_js_any(_value : JsAny) -> Unit {
  ()
}
