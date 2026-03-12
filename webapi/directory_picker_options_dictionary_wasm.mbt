fn directory_picker_options_ffi(id: JsValue, start_in: JsValue, mode: JsValue) -> DirectoryPickerOptions = "webapi_DirectoryPickerOptions" "new"

fn directory_picker_options_empty_ffi() -> DirectoryPickerOptions = "webapi_Dictionary" "empty"

fn directory_picker_options_get_id_ffi(obj: JsValue) -> JsValue = "webapi_DirectoryPickerOptions" "get_id"

fn directory_picker_options_get_start_in_ffi(obj: JsValue) -> JsValue = "webapi_DirectoryPickerOptions" "get_startIn"

fn directory_picker_options_get_mode_ffi(obj: JsValue) -> JsValue = "webapi_DirectoryPickerOptions" "get_mode"