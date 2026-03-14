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
pub(open) trait TImageDataArray: TJsValue {}

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TImageDataArray + FromJsAny] ImageDataArray::into(
  self : ImageDataArray,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TImageDataArray + FromJsAny] ImageDataArray::unsafe_into(
  self : ImageDataArray,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TImageDataArray] ImageDataArray::from(value : T) -> ImageDataArray = "%identity"

///|
pub impl TImageDataArray for ImageDataArray

///|
pub impl TImageDataArray for Uint8ClampedArray

///|
pub impl TImageDataArray for Float16Array
