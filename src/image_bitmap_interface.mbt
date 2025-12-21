///|
#external
pub type ImageBitmap

///|
pub impl TJsValue for ImageBitmap with to_js(self : ImageBitmap) -> JsValue = "%identity"

///|
pub fn[T : TImageBitmap] ImageBitmap::into(self : ImageBitmap) -> T = "%identity"

///|
pub impl TImageBitmap for ImageBitmap

///|
pub trait TImageBitmap: TJsValue {
  close(self : Self) -> Unit = _
}

///|
extern "js" fn image_bitmap_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TImageBitmap with close(self : Self) -> Unit {
  image_bitmap_close_ffi(TJsValue::to_js(self))
}
