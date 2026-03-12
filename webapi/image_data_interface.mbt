// Do not edit. This file is generated.
// MoonBit type: ImageData
// Specifications: html.idl

///|
/// [ImageData](https://developer.mozilla.org/en-US/docs/Web/API/ImageData)
#external
pub type ImageData

///|
pub impl TJsValue for ImageData with to_js(self : ImageData) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImageData with from_js_any(value : JsAny) -> ImageData = "%identity"

///|
pub fn[T : TImageData] ImageData::into(self : ImageData) -> T = "%identity"

///|
pub impl TImageData for ImageData

///|
pub fn ImageData::new(
  sw : UInt,
  sh : UInt,
  settings? : ImageDataSettings,
) -> ImageData {
  image_data_new_ffi(
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    opt_to_js(settings),
  )
}

///|
pub fn ImageData::new_from_array(
  data : &TImageDataArray,
  sw : UInt,
  sh? : UInt,
  settings? : ImageDataSettings,
) -> ImageData {
  image_data_new_from_array_ffi(
    data.to_js(),
    TJsValue::to_js(sw),
    opt_to_js(sh),
    opt_to_js(settings),
  )
}

///|
/// [ImageData](https://developer.mozilla.org/en-US/docs/Web/API/ImageData) interface.
pub trait TImageData: TJsValue {
  width(self : Self) -> UInt = _
  height(self : Self) -> UInt = _
  data(self : Self) -> ImageDataArray = _
  pixel_format(self : Self) -> ImageDataPixelFormat = _
  color_space(self : Self) -> PredefinedColorSpace = _
}

///|
/// [ImageData.width](https://developer.mozilla.org/en-US/docs/Web/API/ImageData/width)
impl TImageData with width(self : Self) -> UInt {
  image_data_width_ffi(TJsValue::to_js(self))
}

///|
/// [ImageData.height](https://developer.mozilla.org/en-US/docs/Web/API/ImageData/height)
impl TImageData with height(self : Self) -> UInt {
  image_data_height_ffi(TJsValue::to_js(self))
}

///|
/// [ImageData.data](https://developer.mozilla.org/en-US/docs/Web/API/ImageData/data)
impl TImageData with data(self : Self) -> ImageDataArray {
  image_data_data_ffi(TJsValue::to_js(self))
}

///|
/// [ImageData.pixelFormat](https://developer.mozilla.org/en-US/docs/Web/API/ImageData/pixelFormat)
impl TImageData with pixel_format(self : Self) -> ImageDataPixelFormat {
  image_data_pixel_format_ffi(TJsValue::to_js(self))
}

///|
/// [ImageData.colorSpace](https://developer.mozilla.org/en-US/docs/Web/API/ImageData/colorSpace)
impl TImageData with color_space(self : Self) -> PredefinedColorSpace {
  image_data_color_space_ffi(TJsValue::to_js(self))
}
