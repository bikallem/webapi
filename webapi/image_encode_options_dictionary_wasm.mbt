fn image_encode_options_ffi(type_: JsValue, quality: JsValue) -> ImageEncodeOptions = "webapi_ImageEncodeOptions" "new"

fn image_encode_options_empty_ffi() -> ImageEncodeOptions = "webapi_Dictionary" "empty"

fn image_encode_options_get_type_ffi(obj: JsValue) -> JsValue = "webapi_ImageEncodeOptions" "get_type"

fn image_encode_options_get_quality_ffi(obj: JsValue) -> JsValue = "webapi_ImageEncodeOptions" "get_quality"