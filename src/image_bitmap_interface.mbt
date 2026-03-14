// Do not edit. This file is generated.
// MoonBit type: ImageBitmap
// Specifications: html.idl

///|
/// [ImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap)
#external
pub type ImageBitmap

///|
pub impl TJsValue for ImageBitmap with to_js(self : ImageBitmap) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageBitmap with from_js_any(value : JsAny) -> ImageBitmap = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TImageBitmap] ImageBitmap::into(self : ImageBitmap) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TImageBitmap] ImageBitmap::unsafe_into(self : ImageBitmap) -> T = "%identity"

///|
pub impl HasConstructor for ImageBitmap with constructor_name() {
  "ImageBitmap"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TImageBitmap + HasConstructor] ImageBitmap::try_into(
  self : ImageBitmap,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TImageBitmap for ImageBitmap

///|
/// [ImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap) interface.
pub trait TImageBitmap: TJsValue {
  width(self : Self) -> UInt = _
  height(self : Self) -> UInt = _
  close(self : Self) -> Unit = _
}

///|
/// [ImageBitmap.width](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap/width)
impl TImageBitmap with width(self : Self) -> UInt {
  image_bitmap_width_ffi(TJsValue::to_js(self))
}

///|
/// [ImageBitmap.height](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap/height)
impl TImageBitmap with height(self : Self) -> UInt {
  image_bitmap_height_ffi(TJsValue::to_js(self))
}

///|
/// [ImageBitmap.close](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap/close)
impl TImageBitmap with close(self : Self) -> Unit {
  image_bitmap_close_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn image_bitmap_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn image_bitmap_width_ffi(obj : JsValue) -> UInt {
  image_bitmap_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn image_bitmap_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn image_bitmap_height_ffi(obj : JsValue) -> UInt {
  image_bitmap_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn image_bitmap_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
#cfg(target="wasm-gc")
fn image_bitmap_width_ffi(obj : JsValue) -> UInt = "webapi_ImageBitmap" "get_width"

///|
#cfg(target="wasm-gc")
fn image_bitmap_height_ffi(obj : JsValue) -> UInt = "webapi_ImageBitmap" "get_height"

///|
#cfg(target="wasm-gc")
fn image_bitmap_close_ffi(obj : JsValue) -> Unit = "webapi_ImageBitmap" "close"
