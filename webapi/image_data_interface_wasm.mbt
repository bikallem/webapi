fn image_data_new_ffi(sw: JsValue, sh: JsValue, settings: JsValue) -> ImageData = "webapi_ImageData" "new"

fn image_data_new_from_array_ffi(data: JsValue, sw: JsValue, sh: JsValue, settings: JsValue) -> ImageData = "webapi_ImageData" "new_from_array"

fn image_data_width_ffi(obj: JsValue) -> UInt = "webapi_ImageData" "get_width"

fn image_data_height_ffi(obj: JsValue) -> UInt = "webapi_ImageData" "get_height"

fn image_data_data_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ImageData" "get_data"

///|
fn image_data_data_ffi(obj: JsValue) -> ImageDataArray {
  image_data_data_ffi_wasm(obj).unsafe_cast()
}

fn image_data_pixel_format_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ImageData" "get_pixelFormat"

///|
fn image_data_pixel_format_ffi(obj: JsValue) -> ImageDataPixelFormat {
  ImageDataPixelFormat::from_unchecked(jsvalue_to_string(image_data_pixel_format_ffi_wasm(obj)))
}

fn image_data_color_space_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ImageData" "get_colorSpace"

///|
fn image_data_color_space_ffi(obj: JsValue) -> PredefinedColorSpace {
  PredefinedColorSpace::from_unchecked(jsvalue_to_string(image_data_color_space_ffi_wasm(obj)))
}