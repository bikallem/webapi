fn file_picker_accept_type_ffi(description: JsValue, accept: JsValue) -> FilePickerAcceptType = "webapi_FilePickerAcceptType" "new"

fn file_picker_accept_type_empty_ffi() -> FilePickerAcceptType = "webapi_Dictionary" "empty"

fn file_picker_accept_type_get_description_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerAcceptType" "get_description"

fn file_picker_accept_type_get_accept_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerAcceptType" "get_accept"