// Auto-generated MoonBit bindings for ImageBitmap

// Do not edit manually

///|
#external
pub type ImageBitmap

///|
pub trait TImageBitmap: TJsValue {
  width(self : Self) -> UInt = _
  height(self : Self) -> UInt = _
  close(self : Self) -> Unit = _
}

///|
pub impl TImageBitmap for ImageBitmap

///|
pub impl TJsValue for ImageBitmap with to_js(self : ImageBitmap) -> JsValue = "%identity"

///|
fn image_bitmap_close_ffi(obj : JsValue) -> Unit = "webapi_ImageBitmap" "close"

///|
impl TImageBitmap with close(self : Self) -> Unit {
  image_bitmap_close_ffi(TJsValue::to_js(self))
}

///|
fn image_bitmap_width_ffi(obj : JsValue) -> UInt = "webapi_ImageBitmap" "width"

///|
impl TImageBitmap with width(self : Self) -> UInt {
  image_bitmap_width_ffi(self.to_js())
}

///|
fn image_bitmap_height_ffi(obj : JsValue) -> UInt = "webapi_ImageBitmap" "height"

///|
impl TImageBitmap with height(self : Self) -> UInt {
  image_bitmap_height_ffi(self.to_js())
}
