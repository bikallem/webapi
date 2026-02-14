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
pub(open) trait TReadableStreamController {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TReadableStreamController] ReadableStreamController::into(
  self : ReadableStreamController,
) -> T = "%identity"

///|
pub impl TReadableStreamController for ReadableStreamController with to_js(
  self : ReadableStreamController,
) -> JsValue = "%identity"

///|
pub impl TReadableStreamController for ReadableStreamDefaultController with to_js(
  self : ReadableStreamDefaultController,
) -> JsValue = "%identity"

///|
pub impl TReadableStreamController for ReadableByteStreamController with to_js(
  self : ReadableByteStreamController,
) -> JsValue = "%identity"
