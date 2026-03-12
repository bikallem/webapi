fn save_file_picker_options_ffi(types: JsValue, exclude_accept_all_option: JsValue, id: JsValue, start_in: JsValue, suggested_name: JsValue) -> SaveFilePickerOptions = "webapi_SaveFilePickerOptions" "new"

fn save_file_picker_options_empty_ffi() -> SaveFilePickerOptions = "webapi_Dictionary" "empty"

fn save_file_picker_options_get_types_ffi(obj: JsValue) -> JsValue = "webapi_SaveFilePickerOptions" "get_types"

fn save_file_picker_options_get_exclude_accept_all_option_ffi(obj: JsValue) -> JsValue = "webapi_SaveFilePickerOptions" "get_excludeAcceptAllOption"

fn save_file_picker_options_get_id_ffi(obj: JsValue) -> JsValue = "webapi_SaveFilePickerOptions" "get_id"

fn save_file_picker_options_get_start_in_ffi(obj: JsValue) -> JsValue = "webapi_SaveFilePickerOptions" "get_startIn"

fn save_file_picker_options_get_suggested_name_ffi(obj: JsValue) -> JsValue = "webapi_SaveFilePickerOptions" "get_suggestedName"