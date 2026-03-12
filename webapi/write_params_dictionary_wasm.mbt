fn write_params_ffi(type_: JsValue, size: JsValue, position: JsValue, data: JsValue) -> WriteParams = "webapi_WriteParams" "new"

fn write_params_empty_ffi() -> WriteParams = "webapi_Dictionary" "empty"

fn write_params_get_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WriteParams" "get_type"

///|
fn write_params_get_type_ffi(obj: JsValue) -> WriteCommandType {
  WriteCommandType::from_unchecked(jsvalue_to_string(write_params_get_type_ffi_wasm(obj)))
}

fn write_params_get_size_ffi(obj: JsValue) -> JsValue = "webapi_WriteParams" "get_size"

fn write_params_get_position_ffi(obj: JsValue) -> JsValue = "webapi_WriteParams" "get_position"

fn write_params_get_data_ffi(obj: JsValue) -> JsValue = "webapi_WriteParams" "get_data"