///|
#external
pub type DOMException

///|
pub impl TJsValue for DOMException with to_js(self : DOMException) -> JsValue = "%identity"

///|
pub fn[T : TDOMException] DOMException::into(self : DOMException) -> T = "%identity"

///|
pub impl TDOMException for DOMException

///|
extern "js" fn dom_exception_ffi(
  message : JsValue,
  name : JsValue,
) -> DOMException = "(message, name) => new DOMException(message, name)"

///|
pub fn DOMException::new(
  message? : String = "",
  name? : String = "Error",
) -> DOMException {
  dom_exception_ffi(TJsValue::to_js(message), TJsValue::to_js(name))
}

///|
pub trait TDOMException: TJsValue {}
