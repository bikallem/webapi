// Do not edit. This file is generated.
// MoonBit type: ReadableStreamController
// Specifications: streams.idl

///|
/// [ReadableStreamController](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamController)
#external
pub type ReadableStreamController

///|
pub impl TJsValue for ReadableStreamController with to_js(
  self : ReadableStreamController,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamController with from_js_any(value : JsAny) -> ReadableStreamController = "%identity"

///|
pub(open) trait TReadableStreamController: TJsValue {}

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TReadableStreamController + FromJsAny] ReadableStreamController::into(
  self : ReadableStreamController,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TReadableStreamController + FromJsAny] ReadableStreamController::unsafe_into(
  self : ReadableStreamController,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TReadableStreamController] ReadableStreamController::from(
  value : T,
) -> ReadableStreamController = "%identity"

///|
pub impl TReadableStreamController for ReadableStreamController

///|
pub impl TReadableStreamController for ReadableStreamDefaultController

///|
pub impl TReadableStreamController for ReadableByteStreamController
