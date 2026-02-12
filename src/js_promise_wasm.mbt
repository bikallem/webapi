///|
fn js_promise_resolve_ffi(value : JsValue) -> JsValue = "webapi_JsPromise" "resolve"

///|
fn js_promise_reject_ffi(reason : JsValue) -> JsValue = "webapi_JsPromise" "reject"

///|
fn js_promise_then_ffi(
  promise : JsValue,
  on_fulfilled : (JsValue) -> JsValue,
) -> JsValue = "webapi_JsPromise" "then"

///|
fn js_promise_catch_ffi(
  promise : JsValue,
  on_rejected : (JsValue) -> JsValue,
) -> JsValue = "webapi_JsPromise" "catch"

///|
fn js_promise_finally_ffi(
  promise : JsValue,
  on_finally : () -> Unit,
) -> JsValue = "webapi_JsPromise" "finally"
