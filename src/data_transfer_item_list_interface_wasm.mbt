fn data_transfer_item_list_length_ffi(obj: JsValue) -> JsValue = "webapi_DataTransferItemList" "get_length"

fn data_transfer_item_list_add_ffi(obj: JsValue, data: JsValue, type_: JsValue) -> JsValue = "webapi_DataTransferItemList" "add"

fn data_transfer_item_list_add_2_ffi(obj: JsValue, data: JsValue) -> JsValue = "webapi_DataTransferItemList" "add_2"

fn data_transfer_item_list_remove_ffi(obj: JsValue, index: JsValue) -> Unit = "webapi_DataTransferItemList" "remove"

fn data_transfer_item_list_clear_ffi(obj: JsValue) -> Unit = "webapi_DataTransferItemList" "clear"