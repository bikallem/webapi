// Auto-generated MoonBit bindings for ImageData

// Do not edit manually

///|
#external
pub type ImageData

///|
pub trait TImageData: TJsValue {
  width(self : Self) -> UInt = _
  height(self : Self) -> UInt = _
  data(self : Self) -> JsValue = _
  pixel_format(self : Self) -> ImageDataPixelFormat = _
  color_space(self : Self) -> PredefinedColorSpace = _
}

///|
pub impl TImageData for ImageData

///|
pub impl TJsValue for ImageData with to_js(self : ImageData) -> JsValue = "%identity"

///|
pub fn ImageData::null() -> ImageData {
  JsValue::null()
}

///|
fn image_data_new_ffi(sw : JsValue, sh : JsValue, settings : JsValue) -> ImageData = "webapi_ImageData" "new"

///|
pub fn ImageData::new(sw : UInt, sh : UInt, settings? : ImageDataSettings = ImageDataSettings::empty()) -> ImageData {
  image_data_new_ffi(TJsValue::to_js(sw), TJsValue::to_js(sh), TJsValue::to_js(settings))
}

///|
fn image_data_new2_ffi(data : JsValue, sw : JsValue, sh : JsValue, settings : JsValue) -> ImageData = "webapi_ImageData" "new"

///|
pub fn ImageData::new2(data : JsValue, sw : UInt, sh? : UInt, settings? : ImageDataSettings = ImageDataSettings::empty()) -> ImageData {
  image_data_new2_ffi(data, TJsValue::to_js(sw), match sh {
      Some(v) => TJsValue::to_js(v)
      None => JsValue::undefined()
    }, TJsValue::to_js(settings))
}

///|
fn image_data_width_ffi(obj : JsValue) -> UInt = "webapi_ImageData" "width"

///|
impl TImageData with width(self : Self) -> UInt {
  image_data_width_ffi(self.to_js())
}

///|
fn image_data_height_ffi(obj : JsValue) -> UInt = "webapi_ImageData" "height"

///|
impl TImageData with height(self : Self) -> UInt {
  image_data_height_ffi(self.to_js())
}

///|
fn image_data_data_ffi(obj : JsValue) -> JsValue = "webapi_ImageData" "data"

///|
impl TImageData with data(self : Self) -> JsValue {
  image_data_data_ffi(self.to_js())
}

///|
fn image_data_pixel_format_ffi(obj : JsValue) -> JsValue = "webapi_ImageData" "pixelFormat"

///|
impl TImageData with pixel_format(self : Self) -> ImageDataPixelFormat {
  ImageDataPixelFormat::from(image_data_pixel_format_ffi(self.to_js()).unsafe_cast()).unwrap()
}

///|
fn image_data_color_space_ffi(obj : JsValue) -> JsValue = "webapi_ImageData" "colorSpace"

///|
impl TImageData with color_space(self : Self) -> PredefinedColorSpace {
  PredefinedColorSpace::from(image_data_color_space_ffi(self.to_js()).unsafe_cast()).unwrap()
}