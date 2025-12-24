///|
#external
pub type ImageData

///|
pub impl TJsValue for ImageData with to_js(self : ImageData) -> JsValue = "%identity"

///|
pub fn[T : TImageData] ImageData::into(self : ImageData) -> T = "%identity"

///|
pub impl TImageData for ImageData

///|
extern "js" fn image_data_new_ffi(
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData = "(sw, sh, settings) => new ImageData(sw, sh, settings)"

///|
pub fn ImageData::new(
  sw : UInt,
  sh : UInt,
  settings? : ImageDataSettings = ImageDataSettings::empty(),
) -> ImageData {
  image_data_new_ffi(
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(settings),
  )
}

///|
extern "js" fn image_data_new_2_ffi(
  data : JsValue,
  sw : JsValue,
  sh : JsValue,
  settings : JsValue,
) -> ImageData = "(data, sw, sh, settings) => new ImageData(data, sw, sh, settings)"

///|
pub fn ImageData::new_2(
  data : ImageDataArray,
  sw : UInt,
  sh? : UInt,
  settings? : ImageDataSettings = ImageDataSettings::empty(),
) -> ImageData {
  image_data_new_2_ffi(
    TJsValue::to_js(data),
    TJsValue::to_js(sw),
    opt_to_js(sh),
    TJsValue::to_js(settings),
  )
}

///|
pub trait TImageData: TJsValue {
  width(self : Self) -> UInt = _
  height(self : Self) -> UInt = _
  data(self : Self) -> ImageDataArray = _
  pixel_format(self : Self) -> ImageDataPixelFormat = _
  color_space(self : Self) -> PredefinedColorSpace = _
}

///|
extern "js" fn image_data_width_ffi(obj : JsValue) -> UInt = "(obj) => obj.width"

///|
impl TImageData with width(self : Self) -> UInt {
  image_data_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn image_data_height_ffi(obj : JsValue) -> UInt = "(obj) => obj.height"

///|
impl TImageData with height(self : Self) -> UInt {
  image_data_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn image_data_data_ffi(obj : JsValue) -> ImageDataArray = "(obj) => obj.data"

///|
impl TImageData with data(self : Self) -> ImageDataArray {
  image_data_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn image_data_pixel_format_ffi(
  obj : JsValue,
) -> ImageDataPixelFormat = "(obj) => obj.pixelFormat"

///|
impl TImageData with pixel_format(self : Self) -> ImageDataPixelFormat {
  image_data_pixel_format_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn image_data_color_space_ffi(
  obj : JsValue,
) -> PredefinedColorSpace = "(obj) => obj.colorSpace"

///|
impl TImageData with color_space(self : Self) -> PredefinedColorSpace {
  image_data_color_space_ffi(TJsValue::to_js(self))
}
