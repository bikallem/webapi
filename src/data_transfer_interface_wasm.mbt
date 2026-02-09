///|
fn data_transfer_new_ffi() -> DataTransfer = "webapi_DataTransfer" "new"

///|
fn data_transfer_drop_effect_ffi_wasm(obj : JsValue) -> JsValue = "webapi_DataTransfer" "get_dropEffect"

///|
fn data_transfer_drop_effect_ffi(obj : JsValue) -> String {
  jsvalue_to_string(data_transfer_drop_effect_ffi_wasm(obj))
}

///|
fn data_transfer_set_drop_effect_ffi(
  obj : JsValue,
  drop_effect : JsValue,
) -> Unit = "webapi_DataTransfer" "set_dropEffect"

///|
fn data_transfer_effect_allowed_ffi_wasm(obj : JsValue) -> JsValue = "webapi_DataTransfer" "get_effectAllowed"

///|
fn data_transfer_effect_allowed_ffi(obj : JsValue) -> String {
  jsvalue_to_string(data_transfer_effect_allowed_ffi_wasm(obj))
}

///|
fn data_transfer_set_effect_allowed_ffi(
  obj : JsValue,
  effect_allowed : JsValue,
) -> Unit = "webapi_DataTransfer" "set_effectAllowed"

///|
fn data_transfer_items_ffi(obj : JsValue) -> DataTransferItemList = "webapi_DataTransfer" "get_items"

///|
fn data_transfer_set_drag_image_ffi(
  obj : JsValue,
  image : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "webapi_DataTransfer" "setDragImage"

///|
fn data_transfer_types_ffi(obj : JsValue) -> JsValue = "webapi_DataTransfer" "get_types"

///|
fn data_transfer_get_data_ffi_wasm(obj : JsValue, format : JsValue) -> JsValue = "webapi_DataTransfer" "getData"

///|
fn data_transfer_get_data_ffi(obj : JsValue, format : JsValue) -> String {
  jsvalue_to_string(data_transfer_get_data_ffi_wasm(obj, format))
}

///|
fn data_transfer_set_data_ffi(
  obj : JsValue,
  format : JsValue,
  data : JsValue,
) -> Unit = "webapi_DataTransfer" "setData"

///|
fn data_transfer_clear_data_ffi(obj : JsValue, format : JsValue) -> Unit = "webapi_DataTransfer" "clearData"

///|
fn data_transfer_files_ffi(obj : JsValue) -> FileList = "webapi_DataTransfer" "get_files"
