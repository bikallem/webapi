///|
pub(open) trait TImageDataArray {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TImageDataArray] &TImageDataArray::into(
  self : &TImageDataArray,
) -> T = "%identity"

///|
pub impl TImageDataArray for Uint8ClampedArray with to_js(
  self : Uint8ClampedArray,
) -> JsValue = "%identity"

///|
pub impl TImageDataArray for Float16Array with to_js(self : Float16Array) -> JsValue = "%identity"
