// Do not edit. This file is generated.
// MoonBit type: ImageBitmap
// Specifications: html.idl

/// [ImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap)
#external
pub type ImageBitmap

pub impl TJsValue for ImageBitmap with to_js(self: ImageBitmap) -> JsValue = "%identity"

pub fn[T: TImageBitmap] ImageBitmap::into(self : ImageBitmap) -> T = "%identity"

pub impl TImageBitmap for ImageBitmap

/// [ImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap) interface.
pub trait TImageBitmap: TJsValue {
  width(self : Self) -> UInt = _
  height(self : Self) -> UInt = _
  close(self : Self) -> Unit = _
}

/// [ImageBitmap.width](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap/width)
impl TImageBitmap with width(self : Self) -> UInt {
  image_bitmap_width_ffi(TJsValue::to_js(self))
}

/// [ImageBitmap.height](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap/height)
impl TImageBitmap with height(self : Self) -> UInt {
  image_bitmap_height_ffi(TJsValue::to_js(self))
}

/// [ImageBitmap.close](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap/close)
impl TImageBitmap with close(self : Self) -> Unit {
  image_bitmap_close_ffi(TJsValue::to_js(self))
}