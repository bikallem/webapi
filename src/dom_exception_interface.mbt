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
extern "js" fn dom_exception_new_ffi(
  message : JsValue,
  name : JsValue,
) -> DOMException = "(message, name) => new DOMException(message, name)"

///|
pub fn DOMException::new(
  message? : String = "",
  name? : String = "Error",
) -> DOMException {
  dom_exception_new_ffi(TJsValue::to_js(message), TJsValue::to_js(name))
}

///|
pub const DOM_EXCEPTION_INDEX_SIZE_ERR : UInt = 1

///|
pub const DOM_EXCEPTION_DOMSTRING_SIZE_ERR : UInt = 2

///|
pub const DOM_EXCEPTION_HIERARCHY_REQUEST_ERR : UInt = 3

///|
pub const DOM_EXCEPTION_WRONG_DOCUMENT_ERR : UInt = 4

///|
pub const DOM_EXCEPTION_INVALID_CHARACTER_ERR : UInt = 5

///|
pub const DOM_EXCEPTION_NO_DATA_ALLOWED_ERR : UInt = 6

///|
pub const DOM_EXCEPTION_NO_MODIFICATION_ALLOWED_ERR : UInt = 7

///|
pub const DOM_EXCEPTION_NOT_FOUND_ERR : UInt = 8

///|
pub const DOM_EXCEPTION_NOT_SUPPORTED_ERR : UInt = 9

///|
pub const DOM_EXCEPTION_INUSE_ATTRIBUTE_ERR : UInt = 10

///|
pub const DOM_EXCEPTION_INVALID_STATE_ERR : UInt = 11

///|
pub const DOM_EXCEPTION_SYNTAX_ERR : UInt = 12

///|
pub const DOM_EXCEPTION_INVALID_MODIFICATION_ERR : UInt = 13

///|
pub const DOM_EXCEPTION_NAMESPACE_ERR : UInt = 14

///|
pub const DOM_EXCEPTION_INVALID_ACCESS_ERR : UInt = 15

///|
pub const DOM_EXCEPTION_VALIDATION_ERR : UInt = 16

///|
pub const DOM_EXCEPTION_TYPE_MISMATCH_ERR : UInt = 17

///|
pub const DOM_EXCEPTION_SECURITY_ERR : UInt = 18

///|
pub const DOM_EXCEPTION_NETWORK_ERR : UInt = 19

///|
pub const DOM_EXCEPTION_ABORT_ERR : UInt = 20

///|
pub const DOM_EXCEPTION_URL_MISMATCH_ERR : UInt = 21

///|
pub const DOM_EXCEPTION_QUOTA_EXCEEDED_ERR : UInt = 22

///|
pub const DOM_EXCEPTION_TIMEOUT_ERR : UInt = 23

///|
pub const DOM_EXCEPTION_INVALID_NODE_TYPE_ERR : UInt = 24

///|
pub const DOM_EXCEPTION_DATA_CLONE_ERR : UInt = 25

///|
pub trait TDOMException: TJsValue {}
