fn file_picker_options_ffi(types: JsValue, exclude_accept_all_option: JsValue, id: JsValue, start_in: JsValue) -> FilePickerOptions = "webapi_FilePickerOptions" "new"

fn file_picker_options_empty_ffi() -> FilePickerOptions = "webapi_Dictionary" "empty"

fn file_picker_options_get_types_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerOptions" "get_types"

fn file_picker_options_get_exclude_accept_all_option_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerOptions" "get_excludeAcceptAllOption"

fn file_picker_options_get_id_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerOptions" "get_id"

fn file_picker_options_get_start_in_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerOptions" "get_startIn"