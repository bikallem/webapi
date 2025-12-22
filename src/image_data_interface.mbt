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
pub trait TImageData: TJsValue {}
