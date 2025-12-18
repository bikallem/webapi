///|
/// JsPromise - Type representing a JavaScript Promise

///|
/// Opaque type representing a JavaScript Promise
#external
pub type JsPromise[T]

///|
/// Await a JavaScript Promise (returns the resolved value as JsValue)
/// Note: This should only be called in an async context
pub fn JsPromise::wait(self : JsPromise[JsValue]) -> JsValue = "JsPromise" "await"
