///|
extern "js" fn js_promise_resolve_ffi(value : JsValue) -> JsValue =
  "(value) => Promise.resolve(value)"

///|
extern "js" fn js_promise_reject_ffi(reason : JsValue) -> JsValue =
  "(reason) => Promise.reject(reason)"

///|
extern "js" fn js_promise_then_ffi(promise : JsValue, on_fulfilled : (JsValue) -> JsValue) -> JsValue =
  "(p, f) => p.then(f)"

///|
extern "js" fn js_promise_catch_ffi(promise : JsValue, on_rejected : (JsValue) -> JsValue) -> JsValue =
  "(p, f) => p.catch(f)"

///|
extern "js" fn js_promise_finally_ffi(promise : JsValue, on_finally : () -> Unit) -> JsValue =
  "(p, f) => p.finally(f)"
