///|
extern "js" fn js_promise_resolve_ffi(value : JsValue) -> JsValue = "(value) => Promise.resolve(value)"

///|
extern "js" fn js_promise_reject_ffi(reason : JsValue) -> JsValue = "(reason) => Promise.reject(reason)"

///|
extern "js" fn js_promise_then_ffi(
  promise : JsValue,
  on_fulfilled : (JsAny) -> JsValue,
) -> JsValue = "(p, f) => p.then(f)"

///|
extern "js" fn js_promise_catch_ffi(
  promise : JsValue,
  on_rejected : (JsAny) -> JsValue,
) -> JsValue = "(p, f) => p.catch(f)"

///|
extern "js" fn js_promise_finally_ffi(
  promise : JsValue,
  on_finally : () -> Unit,
) -> JsValue = "(p, f) => p.finally(f)"

///|
pub impl FromJsAny for Bool with from_js_any(value : JsAny) -> Bool = "%identity"

///|
pub impl FromJsAny for Int with from_js_any(value : JsAny) -> Int = "%identity"

///|
pub impl FromJsAny for UInt with from_js_any(value : JsAny) -> UInt = "%identity"

///|
pub impl FromJsAny for Int64 with from_js_any(value : JsAny) -> Int64 = "%identity"

///|
pub impl FromJsAny for UInt64 with from_js_any(value : JsAny) -> UInt64 = "%identity"

///|
pub impl FromJsAny for Float with from_js_any(value : JsAny) -> Float = "%identity"

///|
pub impl FromJsAny for Double with from_js_any(value : JsAny) -> Double = "%identity"

///|
pub impl FromJsAny for Unit with from_js_any(_value : JsAny) -> Unit = "%identity"

///|
pub impl[T : FromJsAny] FromJsAny for Array[T] with from_js_any(value : JsAny) -> Array[
  T,
] = "%identity"
