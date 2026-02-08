fn data_transfer_item_kind_ffi(obj: JsValue) -> JsValue = "webapi_DataTransferItem" "get_kind"

fn data_transfer_item_type_ffi(obj: JsValue) -> JsValue = "webapi_DataTransferItem" "get_type"

fn data_transfer_item_get_as_string_ffi(obj: JsValue, _callback: JsValue) -> Unit = "webapi_DataTransferItem" "getAsString"

fn data_transfer_item_get_as_file_ffi(obj: JsValue) -> JsValue = "webapi_DataTransferItem" "getAsFile"