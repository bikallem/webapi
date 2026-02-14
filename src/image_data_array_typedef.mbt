// Do not edit. This file is generated.
// MoonBit type: ImageDataArray
// Specifications: html.idl

///|
/// [ImageDataArray](https://developer.mozilla.org/en-US/docs/Web/API/ImageDataArray)
#external
pub type ImageDataArray

///|
pub impl TJsValue for ImageDataArray with to_js(self : ImageDataArray) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageDataArray with from_js_any(value : JsAny) -> ImageDataArray = "%identity"

///|
pub(open) trait TImageDataArray {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TImageDataArray] ImageDataArray::into(self : ImageDataArray) -> T = "%identity"

///|
pub impl TImageDataArray for ImageDataArray with to_js(self : ImageDataArray) -> JsValue = "%identity"

///|
pub impl TImageDataArray for Uint8ClampedArray with to_js(
  self : Uint8ClampedArray,
) -> JsValue = "%identity"

///|
pub impl TImageDataArray for Float16Array with to_js(self : Float16Array) -> JsValue = "%identity"
