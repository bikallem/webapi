///|
fn image_encode_options_ffi(
  type_ : JsValue,
  quality : JsValue,
) -> ImageEncodeOptions = "webapi_ImageEncodeOptions" "new"

///|
fn image_encode_options_empty_ffi() -> ImageEncodeOptions = "webapi_Dictionary" "empty"
