fn open_file_picker_options_ffi(types: JsValue, exclude_accept_all_option: JsValue, id: JsValue, start_in: JsValue, multiple: JsValue) -> OpenFilePickerOptions = "webapi_OpenFilePickerOptions" "new"

fn open_file_picker_options_empty_ffi() -> OpenFilePickerOptions = "webapi_Dictionary" "empty"

fn open_file_picker_options_get_types_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_types"

fn open_file_picker_options_get_exclude_accept_all_option_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_excludeAcceptAllOption"

fn open_file_picker_options_get_id_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_id"

fn open_file_picker_options_get_start_in_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_startIn"

fn open_file_picker_options_get_multiple_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_multiple"